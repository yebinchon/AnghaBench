; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mvneta_port = type { i32, i32, i32, i32, i32, i32 }

@online_hpstate = common dso_local global i32 0, align 4
@CPUHP_NET_MVNETA_DEAD = common dso_local global i32 0, align 4
@mvneta_percpu_disable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @mvneta_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvneta_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mvneta_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.mvneta_port* @netdev_priv(%struct.net_device* %4)
  store %struct.mvneta_port* %5, %struct.mvneta_port** %3, align 8
  %6 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %7 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %41, label %10

10:                                               ; preds = %1
  %11 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %12 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %11, i32 0, i32 4
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %15 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %17 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %16, i32 0, i32 4
  %18 = call i32 @spin_unlock(i32* %17)
  %19 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %20 = call i32 @mvneta_stop_dev(%struct.mvneta_port* %19)
  %21 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %22 = call i32 @mvneta_mdio_remove(%struct.mvneta_port* %21)
  %23 = load i32, i32* @online_hpstate, align 4
  %24 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %25 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %24, i32 0, i32 3
  %26 = call i32 @cpuhp_state_remove_instance_nocalls(i32 %23, i32* %25)
  %27 = load i32, i32* @CPUHP_NET_MVNETA_DEAD, align 4
  %28 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %29 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %28, i32 0, i32 2
  %30 = call i32 @cpuhp_state_remove_instance_nocalls(i32 %27, i32* %29)
  %31 = load i32, i32* @mvneta_percpu_disable, align 4
  %32 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %33 = call i32 @on_each_cpu(i32 %31, %struct.mvneta_port* %32, i32 1)
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %38 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @free_percpu_irq(i32 %36, i32 %39)
  br label %51

41:                                               ; preds = %1
  %42 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %43 = call i32 @mvneta_stop_dev(%struct.mvneta_port* %42)
  %44 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %45 = call i32 @mvneta_mdio_remove(%struct.mvneta_port* %44)
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %50 = call i32 @free_irq(i32 %48, %struct.mvneta_port* %49)
  br label %51

51:                                               ; preds = %41, %10
  %52 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %53 = call i32 @mvneta_cleanup_rxqs(%struct.mvneta_port* %52)
  %54 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %55 = call i32 @mvneta_cleanup_txqs(%struct.mvneta_port* %54)
  ret i32 0
}

declare dso_local %struct.mvneta_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mvneta_stop_dev(%struct.mvneta_port*) #1

declare dso_local i32 @mvneta_mdio_remove(%struct.mvneta_port*) #1

declare dso_local i32 @cpuhp_state_remove_instance_nocalls(i32, i32*) #1

declare dso_local i32 @on_each_cpu(i32, %struct.mvneta_port*, i32) #1

declare dso_local i32 @free_percpu_irq(i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.mvneta_port*) #1

declare dso_local i32 @mvneta_cleanup_rxqs(%struct.mvneta_port*) #1

declare dso_local i32 @mvneta_cleanup_txqs(%struct.mvneta_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
