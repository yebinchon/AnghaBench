; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-cards.c_cx231xx_tuner_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-cards.c_cx231xx_tuner_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i64, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@TUNER_XC5000 = common dso_local global i64 0, align 8
@XC5000_TUNER_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Tuner CB: RESET: cmd %d : tuner type %d\0A\00", align 1
@TUNER_NXP_TDA18271 = common dso_local global i64 0, align 8
@CX231XX_BOARD_PV_PLAYTV_USB_HYBRID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_tuner_callback(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cx231xx*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.cx231xx*
  store %struct.cx231xx* %12, %struct.cx231xx** %10, align 8
  %13 = load %struct.cx231xx*, %struct.cx231xx** %10, align 8
  %14 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TUNER_XC5000, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %59

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @XC5000_TUNER_RESET, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %58

22:                                               ; preds = %18
  %23 = load %struct.cx231xx*, %struct.cx231xx** %10, align 8
  %24 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.cx231xx*, %struct.cx231xx** %10, align 8
  %28 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %29)
  %31 = load %struct.cx231xx*, %struct.cx231xx** %10, align 8
  %32 = load %struct.cx231xx*, %struct.cx231xx** %10, align 8
  %33 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cx231xx_set_gpio_value(%struct.cx231xx* %31, i32 %37, i32 1)
  %39 = call i32 @msleep(i32 10)
  %40 = load %struct.cx231xx*, %struct.cx231xx** %10, align 8
  %41 = load %struct.cx231xx*, %struct.cx231xx** %10, align 8
  %42 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cx231xx_set_gpio_value(%struct.cx231xx* %40, i32 %46, i32 0)
  %48 = call i32 @msleep(i32 330)
  %49 = load %struct.cx231xx*, %struct.cx231xx** %10, align 8
  %50 = load %struct.cx231xx*, %struct.cx231xx** %10, align 8
  %51 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @cx231xx_set_gpio_value(%struct.cx231xx* %49, i32 %55, i32 1)
  %57 = call i32 @msleep(i32 10)
  br label %58

58:                                               ; preds = %22, %18
  br label %83

59:                                               ; preds = %4
  %60 = load %struct.cx231xx*, %struct.cx231xx** %10, align 8
  %61 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TUNER_NXP_TDA18271, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %59
  %66 = load i32, i32* %7, align 4
  switch i32 %66, label %78 [
    i32 128, label %67
  ]

67:                                               ; preds = %65
  %68 = load %struct.cx231xx*, %struct.cx231xx** %10, align 8
  %69 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @CX231XX_BOARD_PV_PLAYTV_USB_HYBRID, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load %struct.cx231xx*, %struct.cx231xx** %10, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @cx231xx_set_agc_analog_digital_mux_select(%struct.cx231xx* %74, i32 %75)
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %73, %67
  br label %81

78:                                               ; preds = %65
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %78, %77
  br label %82

82:                                               ; preds = %81, %59
  br label %83

83:                                               ; preds = %82, %58
  %84 = load i32, i32* %9, align 4
  ret i32 %84
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64) #1

declare dso_local i32 @cx231xx_set_gpio_value(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @cx231xx_set_agc_analog_digital_mux_select(%struct.cx231xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
