; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-cards.c_cx231xx_pre_card_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-cards.c_cx231xx_pre_card_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"Identified as %s (card=%d)\0A\00", align 1
@CX231XX_BOARD_ASTROMETA_T2HYBRID = common dso_local global i64 0, align 8
@CX231XX_ANALOG_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx231xx_pre_card_setup(%struct.cx231xx* %0) #0 {
  %2 = alloca %struct.cx231xx*, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %2, align 8
  %3 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %4 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %7 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %11 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @dev_info(i32 %5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %9, i64 %12)
  %14 = load i64, i64* @CX231XX_BOARD_ASTROMETA_T2HYBRID, align 8
  %15 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %16 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %21 = call i32 @cx231xx_set_gpio_value(%struct.cx231xx* %20, i32 3, i32 1)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %24 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %22
  %29 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %30 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %31 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @cx231xx_set_gpio_direction(%struct.cx231xx* %29, i64 %35, i32 1)
  %37 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %38 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %39 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @cx231xx_set_gpio_value(%struct.cx231xx* %37, i32 %44, i32 1)
  br label %46

46:                                               ; preds = %28, %22
  %47 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %48 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %54 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %55 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @cx231xx_set_gpio_direction(%struct.cx231xx* %53, i64 %57, i32 1)
  br label %59

59:                                               ; preds = %52, %46
  %60 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %61 = load i32, i32* @CX231XX_ANALOG_MODE, align 4
  %62 = call i32 @cx231xx_set_mode(%struct.cx231xx* %60, i32 %61)
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, i32, i64) #1

declare dso_local i32 @cx231xx_set_gpio_value(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @cx231xx_set_gpio_direction(%struct.cx231xx*, i64, i32) #1

declare dso_local i32 @cx231xx_set_mode(%struct.cx231xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
