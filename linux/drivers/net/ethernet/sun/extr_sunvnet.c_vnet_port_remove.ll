; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet.c_vnet_port_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet.c_vnet_port_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_dev = type { i32 }
%struct.vnet_port = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_dev*)* @vnet_port_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnet_port_remove(%struct.vio_dev* %0) #0 {
  %2 = alloca %struct.vio_dev*, align 8
  %3 = alloca %struct.vnet_port*, align 8
  store %struct.vio_dev* %0, %struct.vio_dev** %2, align 8
  %4 = load %struct.vio_dev*, %struct.vio_dev** %2, align 8
  %5 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %4, i32 0, i32 0
  %6 = call %struct.vnet_port* @dev_get_drvdata(i32* %5)
  store %struct.vnet_port* %6, %struct.vnet_port** %3, align 8
  %7 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %8 = icmp ne %struct.vnet_port* %7, null
  br i1 %8, label %9, label %42

9:                                                ; preds = %1
  %10 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %11 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @del_timer_sync(i32* %12)
  %14 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %15 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %14, i32 0, i32 1
  %16 = call i32 @napi_disable(i32* %15)
  %17 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %18 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %17, i32 0, i32 4
  %19 = call i32 @list_del_rcu(i32* %18)
  %20 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %21 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %20, i32 0, i32 3
  %22 = call i32 @hlist_del_rcu(i32* %21)
  %23 = call i32 (...) @synchronize_rcu()
  %24 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %25 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %24, i32 0, i32 2
  %26 = call i32 @del_timer_sync(i32* %25)
  %27 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %28 = call i32 @sunvnet_port_rm_txq_common(%struct.vnet_port* %27)
  %29 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %30 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %29, i32 0, i32 1
  %31 = call i32 @netif_napi_del(i32* %30)
  %32 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %33 = call i32 @sunvnet_port_free_tx_bufs_common(%struct.vnet_port* %32)
  %34 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %35 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %34, i32 0, i32 0
  %36 = call i32 @vio_ldc_free(%struct.TYPE_2__* %35)
  %37 = load %struct.vio_dev*, %struct.vio_dev** %2, align 8
  %38 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %37, i32 0, i32 0
  %39 = call i32 @dev_set_drvdata(i32* %38, i32* null)
  %40 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %41 = call i32 @kfree(%struct.vnet_port* %40)
  br label %42

42:                                               ; preds = %9, %1
  ret i32 0
}

declare dso_local %struct.vnet_port* @dev_get_drvdata(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @sunvnet_port_rm_txq_common(%struct.vnet_port*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @sunvnet_port_free_tx_bufs_common(%struct.vnet_port*) #1

declare dso_local i32 @vio_ldc_free(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.vnet_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
