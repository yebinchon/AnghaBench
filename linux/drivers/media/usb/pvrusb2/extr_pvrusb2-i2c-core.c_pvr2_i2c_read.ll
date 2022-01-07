; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-i2c-core.c_pvr2_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-i2c-core.c_pvr2_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32*, i32 }

@PVR2_TRACE_ERROR_LEGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"Killing an I2C read to %u that has wlen too large (desired=%u limit=%u)\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"Killing an I2C read to %u that has rlen too large (desired=%u limit=%u)\00", align 1
@FX2CMD_I2C_READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"unexpected status from i2_read[%d]: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_hdw*, i32, i32*, i32, i32*, i32)* @pvr2_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_i2c_read(%struct.pvr2_hdw* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pvr2_hdw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i32*, i32** %10, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %6
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %17, %6
  %19 = load i32, i32* %11, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ugt i64 %20, 4
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @pvr2_trace(i32 %23, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i32 4)
  %27 = load i32, i32* @ENOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %151

29:                                               ; preds = %18
  %30 = load i32*, i32** %12, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp ugt i64 %34, 7
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @pvr2_trace(i32 %37, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39, i32 7)
  %41 = load i32, i32* @ENOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %151

43:                                               ; preds = %32, %29
  %44 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %45 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @LOCK_TAKE(i32 %46)
  %48 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %49 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @memset(i32* %50, i32 0, i32 8)
  %52 = load i32, i32* @FX2CMD_I2C_READ, align 4
  %53 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %54 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %59 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 %57, i32* %61, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %64 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  store i32 %62, i32* %66, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %69 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 3
  store i32 %67, i32* %71, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %43
  %75 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %76 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 4
  %79 = load i32*, i32** %10, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @memcpy(i32* %78, i32* %79, i32 %80)
  br label %82

82:                                               ; preds = %74, %43
  %83 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %84 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %85 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 4, %87
  %89 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %90 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  %94 = call i32 @pvr2_send_request(%struct.pvr2_hdw* %83, i32* %86, i32 %88, i32* %91, i32 %93)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %123, label %97

97:                                               ; preds = %82
  %98 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %99 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 8
  br i1 %103, label %104, label %122

104:                                              ; preds = %97
  %105 = load i32, i32* @EIO, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %14, align 4
  %107 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %108 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 7
  br i1 %112, label %113, label %121

113:                                              ; preds = %104
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %116 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @trace_i2c(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %114, i32 %119)
  br label %121

121:                                              ; preds = %113, %104
  br label %122

122:                                              ; preds = %121, %97
  br label %123

123:                                              ; preds = %122, %82
  %124 = load i32*, i32** %12, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %145

126:                                              ; preds = %123
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %145

129:                                              ; preds = %126
  %130 = load i32, i32* %14, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load i32*, i32** %12, align 8
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @memset(i32* %133, i32 0, i32 %134)
  br label %144

136:                                              ; preds = %129
  %137 = load i32*, i32** %12, align 8
  %138 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %139 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %13, align 4
  %143 = call i32 @memcpy(i32* %137, i32* %141, i32 %142)
  br label %144

144:                                              ; preds = %136, %132
  br label %145

145:                                              ; preds = %144, %126, %123
  %146 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %147 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @LOCK_GIVE(i32 %148)
  %150 = load i32, i32* %14, align 4
  store i32 %150, i32* %7, align 4
  br label %151

151:                                              ; preds = %145, %36, %22
  %152 = load i32, i32* %7, align 4
  ret i32 %152
}

declare dso_local i32 @pvr2_trace(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @LOCK_TAKE(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @pvr2_send_request(%struct.pvr2_hdw*, i32*, i32, i32*, i32) #1

declare dso_local i32 @trace_i2c(i8*, i32, i32) #1

declare dso_local i32 @LOCK_GIVE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
