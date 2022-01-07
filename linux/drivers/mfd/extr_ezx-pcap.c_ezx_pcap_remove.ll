; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ezx-pcap.c_ezx_pcap_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ezx-pcap.c_ezx_pcap_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.pcap_chip = type { i32, i32, i32, i32* }

@pcap_remove_subdev = common dso_local global i32 0, align 4
@PCAP_ADC_MAXQ = common dso_local global i32 0, align 4
@PCAP_NIRQS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ezx_pcap_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ezx_pcap_remove(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.pcap_chip*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %7 = call %struct.pcap_chip* @spi_get_drvdata(%struct.spi_device* %6)
  store %struct.pcap_chip* %7, %struct.pcap_chip** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = load i32, i32* @pcap_remove_subdev, align 4
  %11 = call i32 @device_for_each_child(i32* %9, i32* null, i32 %10)
  %12 = load %struct.pcap_chip*, %struct.pcap_chip** %3, align 8
  %13 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %12, i32 0, i32 2
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %29, %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @PCAP_ADC_MAXQ, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load %struct.pcap_chip*, %struct.pcap_chip** %3, align 8
  %22 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @kfree(i32 %27)
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %16

32:                                               ; preds = %16
  %33 = load %struct.pcap_chip*, %struct.pcap_chip** %3, align 8
  %34 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %33, i32 0, i32 2
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.pcap_chip*, %struct.pcap_chip** %3, align 8
  %38 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %51, %32
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.pcap_chip*, %struct.pcap_chip** %3, align 8
  %43 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PCAP_NIRQS, align 4
  %46 = add nsw i32 %44, %45
  %47 = icmp slt i32 %41, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @irq_set_chip_and_handler(i32 %49, i32* null, i32* null)
  br label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %40

54:                                               ; preds = %40
  %55 = load %struct.pcap_chip*, %struct.pcap_chip** %3, align 8
  %56 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @destroy_workqueue(i32 %57)
  ret i32 0
}

declare dso_local %struct.pcap_chip* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @device_for_each_child(i32*, i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
