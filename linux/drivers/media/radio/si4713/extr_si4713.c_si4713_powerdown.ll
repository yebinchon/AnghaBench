; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_si4713.c_si4713_powerdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_si4713.c_si4713_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si4713_device = type { i64, i32, i64, i64, i64 }

@SI4713_PWDN_NRESP = common dso_local global i32 0, align 4
@SI4713_CMD_POWER_DOWN = common dso_local global i32 0, align 4
@DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Power down response: 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Device in reset mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to disable vdd: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to disable vio: %d\0A\00", align 1
@POWER_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si4713_device*)* @si4713_powerdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_powerdown(%struct.si4713_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.si4713_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.si4713_device* %0, %struct.si4713_device** %3, align 8
  %8 = load i32, i32* @SI4713_PWDN_NRESP, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %13 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %87

17:                                               ; preds = %1
  %18 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %19 = load i32, i32* @SI4713_CMD_POWER_DOWN, align 4
  %20 = call i32 @ARRAY_SIZE(i32* %11)
  %21 = load i32, i32* @DEFAULT_TIMEOUT, align 4
  %22 = call i32 @si4713_send_command(%struct.si4713_device* %18, i32 %19, i32* null, i32 0, i32* %11, i32 %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %85, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* @debug, align 4
  %27 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %28 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds i32, i32* %11, i64 0
  %30 = load i32, i32* %29, align 16
  %31 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 1, i32 %26, i32* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @debug, align 4
  %33 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %34 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %33, i32 0, i32 1
  %35 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 1, i32 %32, i32* %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %37 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %25
  %41 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %42 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @gpiod_set_value(i64 %43, i32 0)
  br label %45

45:                                               ; preds = %40, %25
  %46 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %47 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %52 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @regulator_disable(i64 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %59 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %58, i32 0, i32 1
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @v4l2_err(i32* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %57, %50
  br label %63

63:                                               ; preds = %62, %45
  %64 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %65 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %63
  %69 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %70 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @regulator_disable(i64 %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %77 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %76, i32 0, i32 1
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @v4l2_err(i32* %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %75, %68
  br label %81

81:                                               ; preds = %80, %63
  %82 = load i64, i64* @POWER_OFF, align 8
  %83 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %84 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %81, %17
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %87

87:                                               ; preds = %85, %16
  %88 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @si4713_send_command(%struct.si4713_device*, i32, i32*, i32, i32*, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, ...) #2

declare dso_local i32 @gpiod_set_value(i64, i32) #2

declare dso_local i32 @regulator_disable(i64) #2

declare dso_local i32 @v4l2_err(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
