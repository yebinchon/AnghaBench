; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_slot-gpio.c_mmc_gpiod_request_cd_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_slot-gpio.c_mmc_gpiod_request_cd_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.mmc_gpio* }
%struct.mmc_gpio = type { i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MMC_CAP_NEEDS_POLL = common dso_local global i32 0, align 4
@mmc_gpio_cd_irqt = common dso_local global i64 0, align 8
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_gpiod_request_cd_irq(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca %struct.mmc_gpio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %7 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.mmc_gpio*, %struct.mmc_gpio** %8, align 8
  store %struct.mmc_gpio* %9, %struct.mmc_gpio** %3, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %4, align 4
  %12 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %13 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %1
  %18 = load %struct.mmc_gpio*, %struct.mmc_gpio** %3, align 8
  %19 = icmp ne %struct.mmc_gpio* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.mmc_gpio*, %struct.mmc_gpio** %3, align 8
  %22 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20, %17, %1
  br label %86

26:                                               ; preds = %20
  %27 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %28 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MMC_CAP_NEEDS_POLL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %26
  %34 = load %struct.mmc_gpio*, %struct.mmc_gpio** %3, align 8
  %35 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @gpiod_to_irq(i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %33, %26
  %39 = load i32, i32* %4, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %73

41:                                               ; preds = %38
  %42 = load %struct.mmc_gpio*, %struct.mmc_gpio** %3, align 8
  %43 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load i64, i64* @mmc_gpio_cd_irqt, align 8
  %48 = load %struct.mmc_gpio*, %struct.mmc_gpio** %3, align 8
  %49 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %46, %41
  %51 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %52 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.mmc_gpio*, %struct.mmc_gpio** %3, align 8
  %56 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %59 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @IRQF_ONESHOT, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.mmc_gpio*, %struct.mmc_gpio** %3, align 8
  %64 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %67 = call i32 @devm_request_threaded_irq(i32 %53, i32 %54, i32* null, i64 %57, i32 %62, i32 %65, %struct.mmc_host* %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %50
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %50
  br label %73

73:                                               ; preds = %72, %38
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %76 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load i32, i32* %4, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load i32, i32* @MMC_CAP_NEEDS_POLL, align 4
  %82 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %83 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %25, %80, %73
  ret void
}

declare dso_local i32 @gpiod_to_irq(i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32, i32, i32*, i64, i32, i32, %struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
