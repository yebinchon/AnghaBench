; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mvpp2_port = type { i32, i32, %struct.TYPE_2__*, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.mvpp2_port_pcpu = type { i32, i32 }

@mvpp2_interrupts_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @mvpp2_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mvpp2_port*, align 8
  %4 = alloca %struct.mvpp2_port_pcpu*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.mvpp2_port* @netdev_priv(%struct.net_device* %6)
  store %struct.mvpp2_port* %7, %struct.mvpp2_port** %3, align 8
  %8 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %9 = call i32 @mvpp2_stop_dev(%struct.mvpp2_port* %8)
  %10 = load i32, i32* @mvpp2_interrupts_mask, align 4
  %11 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %12 = call i32 @on_each_cpu(i32 %10, %struct.mvpp2_port* %11, i32 1)
  %13 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %14 = call i32 @mvpp2_shared_interrupt_mask_unmask(%struct.mvpp2_port* %13, i32 1)
  %15 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %16 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %21 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @phylink_disconnect_phy(i64 %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %26 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %31 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %34 = call i32 @free_irq(i64 %32, %struct.mvpp2_port* %33)
  br label %35

35:                                               ; preds = %29, %24
  %36 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %37 = call i32 @mvpp2_irqs_deinit(%struct.mvpp2_port* %36)
  %38 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %39 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %66, label %42

42:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %62, %42
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %46 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ult i32 %44, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %43
  %52 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %53 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call %struct.mvpp2_port_pcpu* @per_cpu_ptr(i32 %54, i32 %55)
  store %struct.mvpp2_port_pcpu* %56, %struct.mvpp2_port_pcpu** %4, align 8
  %57 = load %struct.mvpp2_port_pcpu*, %struct.mvpp2_port_pcpu** %4, align 8
  %58 = getelementptr inbounds %struct.mvpp2_port_pcpu, %struct.mvpp2_port_pcpu* %57, i32 0, i32 1
  %59 = call i32 @hrtimer_cancel(i32* %58)
  %60 = load %struct.mvpp2_port_pcpu*, %struct.mvpp2_port_pcpu** %4, align 8
  %61 = getelementptr inbounds %struct.mvpp2_port_pcpu, %struct.mvpp2_port_pcpu* %60, i32 0, i32 0
  store i32 0, i32* %61, align 4
  br label %62

62:                                               ; preds = %51
  %63 = load i32, i32* %5, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %43

65:                                               ; preds = %43
  br label %66

66:                                               ; preds = %65, %35
  %67 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %68 = call i32 @mvpp2_cleanup_rxqs(%struct.mvpp2_port* %67)
  %69 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %70 = call i32 @mvpp2_cleanup_txqs(%struct.mvpp2_port* %69)
  %71 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %72 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %71, i32 0, i32 0
  %73 = call i32 @cancel_delayed_work_sync(i32* %72)
  %74 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %75 = call i32 @mvpp2_mac_reset_assert(%struct.mvpp2_port* %74)
  %76 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %77 = call i32 @mvpp22_pcs_reset_assert(%struct.mvpp2_port* %76)
  ret i32 0
}

declare dso_local %struct.mvpp2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mvpp2_stop_dev(%struct.mvpp2_port*) #1

declare dso_local i32 @on_each_cpu(i32, %struct.mvpp2_port*, i32) #1

declare dso_local i32 @mvpp2_shared_interrupt_mask_unmask(%struct.mvpp2_port*, i32) #1

declare dso_local i32 @phylink_disconnect_phy(i64) #1

declare dso_local i32 @free_irq(i64, %struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_irqs_deinit(%struct.mvpp2_port*) #1

declare dso_local %struct.mvpp2_port_pcpu* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @mvpp2_cleanup_rxqs(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_cleanup_txqs(%struct.mvpp2_port*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mvpp2_mac_reset_assert(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp22_pcs_reset_assert(%struct.mvpp2_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
