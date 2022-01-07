; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.encx24j600_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@encx24j600_isr = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"request irq %d failed (ret = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @encx24j600_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encx24j600_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.encx24j600_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.encx24j600_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.encx24j600_priv* %7, %struct.encx24j600_priv** %4, align 8
  %8 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %4, align 8
  %9 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @encx24j600_isr, align 4
  %15 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %16 = load i32, i32* @IRQF_ONESHOT, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @DRV_NAME, align 4
  %19 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %4, align 8
  %20 = call i32 @request_threaded_irq(i32 %13, i32* null, i32 %14, i32 %17, i32 %18, %struct.encx24j600_priv* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %1
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %4, align 8
  %29 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @netdev_err(%struct.net_device* %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %46

37:                                               ; preds = %1
  %38 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %4, align 8
  %39 = call i32 @encx24j600_hw_disable(%struct.encx24j600_priv* %38)
  %40 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %4, align 8
  %41 = call i32 @encx24j600_hw_init(%struct.encx24j600_priv* %40)
  %42 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %4, align 8
  %43 = call i32 @encx24j600_hw_enable(%struct.encx24j600_priv* %42)
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = call i32 @netif_start_queue(%struct.net_device* %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %37, %26
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.encx24j600_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i32, %struct.encx24j600_priv*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @encx24j600_hw_disable(%struct.encx24j600_priv*) #1

declare dso_local i32 @encx24j600_hw_init(%struct.encx24j600_priv*) #1

declare dso_local i32 @encx24j600_hw_enable(%struct.encx24j600_priv*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
