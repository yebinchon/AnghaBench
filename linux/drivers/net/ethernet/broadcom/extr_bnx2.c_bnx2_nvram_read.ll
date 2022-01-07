; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_nvram_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_nvram_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32 }

@BNX2_NVM_COMMAND_FIRST = common dso_local global i32 0, align 4
@BNX2_NVM_COMMAND_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*, i32, i32*, i32)* @bnx2_nvram_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_nvram_read(%struct.bnx2* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca [4 x i32], align 16
  %18 = alloca [4 x i32], align 16
  store %struct.bnx2* %0, %struct.bnx2** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %178

22:                                               ; preds = %4
  %23 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %24 = call i32 @bnx2_acquire_nvram_lock(%struct.bnx2* %23)
  store i32 %24, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %178

28:                                               ; preds = %22
  %29 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %30 = call i32 @bnx2_enable_nvram_access(%struct.bnx2* %29)
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = and i32 %33, 3
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %80

36:                                               ; preds = %28
  %37 = load i32, i32* %12, align 4
  %38 = and i32 %37, -4
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, 3
  %41 = sub nsw i32 4, %40
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* @BNX2_NVM_COMMAND_FIRST, align 4
  %48 = load i32, i32* @BNX2_NVM_COMMAND_LAST, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %11, align 4
  br label %52

50:                                               ; preds = %36
  %51 = load i32, i32* @BNX2_NVM_COMMAND_FIRST, align 4
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %50, %45
  %53 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %54 = load i32, i32* %12, align 4
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @bnx2_nvram_read_dword(%struct.bnx2* %53, i32 %54, i32* %55, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %5, align 4
  br label %178

62:                                               ; preds = %52
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, 3
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %16, align 4
  %70 = call i32 @memcpy(i32* %63, i32* %68, i32 %69)
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 4
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %16, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %8, align 8
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %13, align 4
  %79 = sub nsw i32 %78, %77
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %62, %28
  %81 = load i32, i32* %13, align 4
  %82 = and i32 %81, 3
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load i32, i32* %13, align 4
  %86 = and i32 %85, 3
  %87 = sub nsw i32 4, %86
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 4
  %90 = and i32 %89, -4
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %84, %80
  %92 = load i32, i32* %13, align 4
  %93 = icmp eq i32 %92, 4
  br i1 %93, label %94, label %114

94:                                               ; preds = %91
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* @BNX2_NVM_COMMAND_LAST, align 4
  store i32 %98, i32* %11, align 4
  br label %103

99:                                               ; preds = %94
  %100 = load i32, i32* @BNX2_NVM_COMMAND_FIRST, align 4
  %101 = load i32, i32* @BNX2_NVM_COMMAND_LAST, align 4
  %102 = or i32 %100, %101
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %99, %97
  %104 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %105 = load i32, i32* %12, align 4
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @bnx2_nvram_read_dword(%struct.bnx2* %104, i32 %105, i32* %106, i32 %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32*, i32** %8, align 8
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %111 = load i32, i32* %14, align 4
  %112 = sub nsw i32 4, %111
  %113 = call i32 @memcpy(i32* %109, i32* %110, i32 %112)
  br label %172

114:                                              ; preds = %91
  %115 = load i32, i32* %13, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %171

117:                                              ; preds = %114
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 0, i32* %11, align 4
  br label %123

121:                                              ; preds = %117
  %122 = load i32, i32* @BNX2_NVM_COMMAND_FIRST, align 4
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %121, %120
  %124 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %125 = load i32, i32* %12, align 4
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @bnx2_nvram_read_dword(%struct.bnx2* %124, i32 %125, i32* %126, i32 %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 4
  store i32 %130, i32* %12, align 4
  %131 = load i32*, i32** %8, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 4
  store i32* %132, i32** %8, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sub nsw i32 %133, 4
  store i32 %134, i32* %13, align 4
  br label %135

135:                                              ; preds = %143, %123
  %136 = load i32, i32* %13, align 4
  %137 = icmp sgt i32 %136, 4
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load i32, i32* %10, align 4
  %140 = icmp eq i32 %139, 0
  br label %141

141:                                              ; preds = %138, %135
  %142 = phi i1 [ false, %135 ], [ %140, %138 ]
  br i1 %142, label %143, label %154

143:                                              ; preds = %141
  %144 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %145 = load i32, i32* %12, align 4
  %146 = load i32*, i32** %8, align 8
  %147 = call i32 @bnx2_nvram_read_dword(%struct.bnx2* %144, i32 %145, i32* %146, i32 0)
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, 4
  store i32 %149, i32* %12, align 4
  %150 = load i32*, i32** %8, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 4
  store i32* %151, i32** %8, align 8
  %152 = load i32, i32* %13, align 4
  %153 = sub nsw i32 %152, 4
  store i32 %153, i32* %13, align 4
  br label %135

154:                                              ; preds = %141
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = load i32, i32* %10, align 4
  store i32 %158, i32* %5, align 4
  br label %178

159:                                              ; preds = %154
  %160 = load i32, i32* @BNX2_NVM_COMMAND_LAST, align 4
  store i32 %160, i32* %11, align 4
  %161 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %162 = load i32, i32* %12, align 4
  %163 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @bnx2_nvram_read_dword(%struct.bnx2* %161, i32 %162, i32* %163, i32 %164)
  store i32 %165, i32* %10, align 4
  %166 = load i32*, i32** %8, align 8
  %167 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %168 = load i32, i32* %14, align 4
  %169 = sub nsw i32 4, %168
  %170 = call i32 @memcpy(i32* %166, i32* %167, i32 %169)
  br label %171

171:                                              ; preds = %159, %114
  br label %172

172:                                              ; preds = %171, %103
  %173 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %174 = call i32 @bnx2_disable_nvram_access(%struct.bnx2* %173)
  %175 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %176 = call i32 @bnx2_release_nvram_lock(%struct.bnx2* %175)
  %177 = load i32, i32* %10, align 4
  store i32 %177, i32* %5, align 4
  br label %178

178:                                              ; preds = %172, %157, %60, %26, %21
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local i32 @bnx2_acquire_nvram_lock(%struct.bnx2*) #1

declare dso_local i32 @bnx2_enable_nvram_access(%struct.bnx2*) #1

declare dso_local i32 @bnx2_nvram_read_dword(%struct.bnx2*, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @bnx2_disable_nvram_access(%struct.bnx2*) #1

declare dso_local i32 @bnx2_release_nvram_lock(%struct.bnx2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
