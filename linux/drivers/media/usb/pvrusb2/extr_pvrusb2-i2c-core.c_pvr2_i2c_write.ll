; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-i2c-core.c_pvr2_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-i2c-core.c_pvr2_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32*, i32 }

@PVR2_TRACE_ERROR_LEGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Killing an I2C write to %u that is too large (desired=%u limit=%u)\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@FX2CMD_I2C_WRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"unexpected status from i2_write[%d]: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_hdw*, i32, i32*, i32)* @pvr2_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_i2c_write(%struct.pvr2_hdw* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pvr2_hdw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32*, i32** %8, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %13, %4
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ugt i64 %16, 5
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @pvr2_trace(i32 %19, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32 5)
  %23 = load i32, i32* @ENOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %104

25:                                               ; preds = %14
  %26 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %27 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @LOCK_TAKE(i32 %28)
  %30 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %31 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @memset(i32* %32, i32 0, i32 8)
  %34 = load i32, i32* @FX2CMD_I2C_WRITE, align 4
  %35 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %36 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %34, i32* %38, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %41 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %46 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32 %44, i32* %48, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %25
  %52 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %53 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @memcpy(i32* %55, i32* %56, i32 %57)
  br label %59

59:                                               ; preds = %51, %25
  %60 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %61 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %62 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 3
  %66 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %67 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @pvr2_send_request(%struct.pvr2_hdw* %60, i32* %63, i32 %65, i32* %68, i32 1)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %98, label %72

72:                                               ; preds = %59
  %73 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %74 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 8
  br i1 %78, label %79, label %97

79:                                               ; preds = %72
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %10, align 4
  %82 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %83 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 7
  br i1 %87, label %88, label %96

88:                                               ; preds = %79
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %91 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @trace_i2c(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %94)
  br label %96

96:                                               ; preds = %88, %79
  br label %97

97:                                               ; preds = %96, %72
  br label %98

98:                                               ; preds = %97, %59
  %99 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %100 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @LOCK_GIVE(i32 %101)
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %98, %18
  %105 = load i32, i32* %5, align 4
  ret i32 %105
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
