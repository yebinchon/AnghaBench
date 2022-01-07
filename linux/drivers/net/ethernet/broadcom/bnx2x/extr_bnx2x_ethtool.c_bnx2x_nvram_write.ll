; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_nvram_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_nvram_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@BNX2X_MSG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Invalid parameter: offset 0x%x  buf_size 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"Invalid parameter: offset (0x%x) + buf_size (0x%x) > flash_size (0x%x)\0A\00", align 1
@MCPR_NVM_COMMAND_FIRST = common dso_local global i32 0, align 4
@MCPR_NVM_COMMAND_LAST = common dso_local global i32 0, align 4
@BNX2X_NVRAM_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Releasing NVM lock after offset 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32, i32*, i32)* @bnx2x_nvram_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_nvram_write(%struct.bnx2x* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @bnx2x_nvram_write1(%struct.bnx2x* %17, i32 %18, i32* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  br label %168

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 3
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 3
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30, %26, %22
  %34 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %35 = load i32, i32* @BNX2X_MSG_NVM, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 (i32, i8*, i32, ...) @DP(i32 %36, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %168

42:                                               ; preds = %30
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %43, %44
  %46 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %47 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %45, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %42
  %52 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %53 = load i32, i32* @BNX2X_MSG_NVM, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %58 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, i32, ...) @DP(i32 %54, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56, i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %168

64:                                               ; preds = %42
  %65 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %66 = call i32 @bnx2x_acquire_nvram_lock(%struct.bnx2x* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %5, align 4
  br label %168

71:                                               ; preds = %64
  %72 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %73 = call i32 @bnx2x_enable_nvram_access(%struct.bnx2x* %72)
  store i32 0, i32* %13, align 4
  %74 = load i32, i32* @MCPR_NVM_COMMAND_FIRST, align 4
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %161, %71
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* %10, align 4
  %81 = icmp eq i32 %80, 0
  br label %82

82:                                               ; preds = %79, %75
  %83 = phi i1 [ false, %75 ], [ %81, %79 ]
  br i1 %83, label %84, label %162

84:                                               ; preds = %82
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = sub i64 %88, 4
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %84
  %92 = load i32, i32* @MCPR_NVM_COMMAND_LAST, align 4
  %93 = load i32, i32* %11, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %11, align 4
  br label %116

95:                                               ; preds = %84
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 4
  %98 = load i32, i32* @BNX2X_NVRAM_PAGE_SIZE, align 4
  %99 = srem i32 %97, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i32, i32* @MCPR_NVM_COMMAND_LAST, align 4
  %103 = load i32, i32* %11, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %11, align 4
  br label %115

105:                                              ; preds = %95
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @BNX2X_NVRAM_PAGE_SIZE, align 4
  %108 = srem i32 %106, %107
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load i32, i32* @MCPR_NVM_COMMAND_FIRST, align 4
  %112 = load i32, i32* %11, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %11, align 4
  br label %114

114:                                              ; preds = %110, %105
  br label %115

115:                                              ; preds = %114, %101
  br label %116

116:                                              ; preds = %115, %91
  %117 = load i32*, i32** %8, align 8
  %118 = call i32 @memcpy(i32* %12, i32* %117, i32 4)
  %119 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @bnx2x_nvram_write_dword(%struct.bnx2x* %119, i32 %120, i32 %121, i32 %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = add i64 %125, 4
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %7, align 4
  %128 = load i32*, i32** %8, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 4
  store i32* %129, i32** %8, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = add i64 %131, 4
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* @MCPR_NVM_COMMAND_LAST, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %161

138:                                              ; preds = %116
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %161

142:                                              ; preds = %138
  %143 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %144 = load i32, i32* @BNX2X_MSG_NVM, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = sub i64 %147, 4
  %149 = trunc i64 %148 to i32
  %150 = call i32 (i32, i8*, i32, ...) @DP(i32 %145, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %149)
  %151 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %152 = call i32 @bnx2x_release_nvram_lock(%struct.bnx2x* %151)
  %153 = call i32 @usleep_range(i32 1000, i32 2000)
  %154 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %155 = call i32 @bnx2x_acquire_nvram_lock(%struct.bnx2x* %154)
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %10, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %142
  %159 = load i32, i32* %10, align 4
  store i32 %159, i32* %5, align 4
  br label %168

160:                                              ; preds = %142
  br label %161

161:                                              ; preds = %160, %138, %116
  store i32 0, i32* %11, align 4
  br label %75

162:                                              ; preds = %82
  %163 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %164 = call i32 @bnx2x_disable_nvram_access(%struct.bnx2x* %163)
  %165 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %166 = call i32 @bnx2x_release_nvram_lock(%struct.bnx2x* %165)
  %167 = load i32, i32* %10, align 4
  store i32 %167, i32* %5, align 4
  br label %168

168:                                              ; preds = %162, %158, %69, %51, %33, %16
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local i32 @bnx2x_nvram_write1(%struct.bnx2x*, i32, i32*, i32) #1

declare dso_local i32 @DP(i32, i8*, i32, ...) #1

declare dso_local i32 @bnx2x_acquire_nvram_lock(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_enable_nvram_access(%struct.bnx2x*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @bnx2x_nvram_write_dword(%struct.bnx2x*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_release_nvram_lock(%struct.bnx2x*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @bnx2x_disable_nvram_access(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
