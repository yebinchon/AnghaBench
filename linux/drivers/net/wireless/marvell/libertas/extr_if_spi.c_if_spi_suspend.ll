; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_spi.c_if_spi_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_spi.c_if_spi_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.spi_device = type { i32 }
%struct.if_spi_card = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.spi_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @if_spi_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_spi_suspend(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.if_spi_card*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.spi_device* @to_spi_device(%struct.device* %5)
  store %struct.spi_device* %6, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = call %struct.if_spi_card* @spi_get_drvdata(%struct.spi_device* %7)
  store %struct.if_spi_card* %8, %struct.if_spi_card** %4, align 8
  %9 = load %struct.if_spi_card*, %struct.if_spi_card** %4, align 8
  %10 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %43, label %13

13:                                               ; preds = %1
  %14 = load %struct.if_spi_card*, %struct.if_spi_card** %4, align 8
  %15 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @lbs_suspend(i32 %16)
  %18 = load %struct.if_spi_card*, %struct.if_spi_card** %4, align 8
  %19 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @flush_workqueue(i32 %20)
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @disable_irq(i32 %24)
  %26 = load %struct.if_spi_card*, %struct.if_spi_card** %4, align 8
  %27 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.spi_device*)*, i32 (%struct.spi_device*)** %29, align 8
  %31 = icmp ne i32 (%struct.spi_device*)* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %13
  %33 = load %struct.if_spi_card*, %struct.if_spi_card** %4, align 8
  %34 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.spi_device*)*, i32 (%struct.spi_device*)** %36, align 8
  %38 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %39 = call i32 %37(%struct.spi_device* %38)
  br label %40

40:                                               ; preds = %32, %13
  %41 = load %struct.if_spi_card*, %struct.if_spi_card** %4, align 8
  %42 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  br label %43

43:                                               ; preds = %40, %1
  ret i32 0
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local %struct.if_spi_card* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @lbs_suspend(i32) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @disable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
