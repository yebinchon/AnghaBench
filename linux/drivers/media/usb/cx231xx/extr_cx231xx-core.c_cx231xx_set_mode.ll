; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-core.c_cx231xx_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-core.c_cx231xx_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i32, i32 }

@CX231XX_SUSPEND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CX231XX_DIGITAL_MODE = common dso_local global i64 0, align 8
@POLARIS_AVMODE_DIGITAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to set devmode to %s: error: %i\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"digital\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"analog\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_set_mode(%struct.cx231xx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx231xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %8 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %87

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @CX231XX_SUSPEND, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %20 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %23 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CX231XX_SUSPEND, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %87

30:                                               ; preds = %21
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %33 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %35 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* @CX231XX_DIGITAL_MODE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %30
  %41 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %42 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %54 [
    i32 138, label %44
    i32 137, label %44
    i32 133, label %44
    i32 135, label %44
    i32 136, label %47
    i32 134, label %47
    i32 128, label %47
    i32 131, label %50
    i32 132, label %50
  ]

44:                                               ; preds = %40, %40, %40, %40
  %45 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %46 = call i32 @cx231xx_set_agc_analog_digital_mux_select(%struct.cx231xx* %45, i32 0)
  store i32 %46, i32* %6, align 4
  br label %55

47:                                               ; preds = %40, %40, %40
  %48 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %49 = call i32 @cx231xx_set_agc_analog_digital_mux_select(%struct.cx231xx* %48, i32 1)
  store i32 %49, i32* %6, align 4
  br label %55

50:                                               ; preds = %40, %40
  %51 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %52 = load i32, i32* @POLARIS_AVMODE_DIGITAL, align 4
  %53 = call i32 @cx231xx_set_power_mode(%struct.cx231xx* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  br label %55

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54, %50, %47, %44
  br label %68

56:                                               ; preds = %30
  %57 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %58 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %66 [
    i32 138, label %60
    i32 137, label %60
    i32 133, label %60
    i32 135, label %60
    i32 136, label %63
    i32 134, label %63
    i32 131, label %63
    i32 132, label %63
    i32 128, label %63
    i32 129, label %63
    i32 130, label %63
  ]

60:                                               ; preds = %56, %56, %56, %56
  %61 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %62 = call i32 @cx231xx_set_agc_analog_digital_mux_select(%struct.cx231xx* %61, i32 1)
  store i32 %62, i32* %6, align 4
  br label %67

63:                                               ; preds = %56, %56, %56, %56, %56, %56, %56
  %64 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %65 = call i32 @cx231xx_set_agc_analog_digital_mux_select(%struct.cx231xx* %64, i32 0)
  store i32 %65, i32* %6, align 4
  br label %67

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %63, %60
  br label %68

68:                                               ; preds = %67, %55
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %68
  %72 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %73 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %76 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* @CX231XX_DIGITAL_MODE, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %82, i32 %83)
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %3, align 4
  br label %87

86:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %71, %27, %12
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @cx231xx_set_agc_analog_digital_mux_select(%struct.cx231xx*, i32) #1

declare dso_local i32 @cx231xx_set_power_mode(%struct.cx231xx*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
