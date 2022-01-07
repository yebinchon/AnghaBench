; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_ldmvsw.c_vsw_port_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_ldmvsw.c_vsw_port_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_dev = type { i32 }
%struct.vnet_port = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_dev*)* @vsw_port_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsw_port_remove(%struct.vio_dev* %0) #0 {
  %2 = alloca %struct.vio_dev*, align 8
  %3 = alloca %struct.vnet_port*, align 8
  %4 = alloca i64, align 8
  store %struct.vio_dev* %0, %struct.vio_dev** %2, align 8
  %5 = load %struct.vio_dev*, %struct.vio_dev** %2, align 8
  %6 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %5, i32 0, i32 0
  %7 = call %struct.vnet_port* @dev_get_drvdata(i32* %6)
  store %struct.vnet_port* %7, %struct.vnet_port** %3, align 8
  %8 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %9 = icmp ne %struct.vnet_port* %8, null
  br i1 %9, label %10, label %58

10:                                               ; preds = %1
  %11 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %12 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @del_timer_sync(i32* %13)
  %15 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %16 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %15, i32 0, i32 5
  %17 = call i32 @del_timer_sync(i32* %16)
  %18 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %19 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %18, i32 0, i32 2
  %20 = call i32 @napi_disable(i32* %19)
  %21 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %22 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @unregister_netdev(i32 %23)
  %25 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %26 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %25, i32 0, i32 4
  %27 = call i32 @list_del_rcu(i32* %26)
  %28 = call i32 (...) @synchronize_rcu()
  %29 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %30 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %29, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %36 = call i32 @sunvnet_port_rm_txq_common(%struct.vnet_port* %35)
  %37 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %38 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %37, i32 0, i32 3
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %44 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %43, i32 0, i32 2
  %45 = call i32 @netif_napi_del(i32* %44)
  %46 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %47 = call i32 @sunvnet_port_free_tx_bufs_common(%struct.vnet_port* %46)
  %48 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %49 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %48, i32 0, i32 1
  %50 = call i32 @vio_ldc_free(%struct.TYPE_4__* %49)
  %51 = load %struct.vio_dev*, %struct.vio_dev** %2, align 8
  %52 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %51, i32 0, i32 0
  %53 = call i32 @dev_set_drvdata(i32* %52, i32* null)
  %54 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %55 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @free_netdev(i32 %56)
  br label %58

58:                                               ; preds = %10, %1
  ret i32 0
}

declare dso_local %struct.vnet_port* @dev_get_drvdata(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sunvnet_port_rm_txq_common(%struct.vnet_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @sunvnet_port_free_tx_bufs_common(%struct.vnet_port*) #1

declare dso_local i32 @vio_ldc_free(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @free_netdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
