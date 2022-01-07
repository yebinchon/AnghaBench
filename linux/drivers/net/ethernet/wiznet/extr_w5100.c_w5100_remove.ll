; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5100.c_w5100_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5100.c_w5100_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.net_device = type { i32 }
%struct.w5100_priv = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @w5100_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.w5100_priv*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.net_device* @dev_get_drvdata(%struct.device* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.w5100_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.w5100_priv* %8, %struct.w5100_priv** %4, align 8
  %9 = load %struct.w5100_priv*, %struct.w5100_priv** %4, align 8
  %10 = call i32 @w5100_hw_reset(%struct.w5100_priv* %9)
  %11 = load %struct.w5100_priv*, %struct.w5100_priv** %4, align 8
  %12 = getelementptr inbounds %struct.w5100_priv, %struct.w5100_priv* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i32 @free_irq(i32 %13, %struct.net_device* %14)
  %16 = load %struct.w5100_priv*, %struct.w5100_priv** %4, align 8
  %17 = getelementptr inbounds %struct.w5100_priv, %struct.w5100_priv* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @gpio_is_valid(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.w5100_priv*, %struct.w5100_priv** %4, align 8
  %23 = getelementptr inbounds %struct.w5100_priv, %struct.w5100_priv* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call i32 @free_irq(i32 %24, %struct.net_device* %25)
  br label %27

27:                                               ; preds = %21, %1
  %28 = load %struct.w5100_priv*, %struct.w5100_priv** %4, align 8
  %29 = getelementptr inbounds %struct.w5100_priv, %struct.w5100_priv* %28, i32 0, i32 2
  %30 = call i32 @flush_work(i32* %29)
  %31 = load %struct.w5100_priv*, %struct.w5100_priv** %4, align 8
  %32 = getelementptr inbounds %struct.w5100_priv, %struct.w5100_priv* %31, i32 0, i32 1
  %33 = call i32 @flush_work(i32* %32)
  %34 = load %struct.w5100_priv*, %struct.w5100_priv** %4, align 8
  %35 = getelementptr inbounds %struct.w5100_priv, %struct.w5100_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @destroy_workqueue(i32 %36)
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = call i32 @unregister_netdev(%struct.net_device* %38)
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = call i32 @free_netdev(%struct.net_device* %40)
  ret i32 0
}

declare dso_local %struct.net_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.w5100_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @w5100_hw_reset(%struct.w5100_priv*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
