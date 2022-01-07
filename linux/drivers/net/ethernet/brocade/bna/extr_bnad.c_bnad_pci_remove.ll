; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.bnad = type { i32, i32, i32*, i32*, i32, %struct.bna, i32 }
%struct.bna = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@BNAD_RF_NETDEV_REGISTERED = common dso_local global i32 0, align 4
@BNA_MOD_RES_T_MAX = common dso_local global i32 0, align 4
@BNA_RES_T_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @bnad_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnad_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.bnad*, align 8
  %5 = alloca %struct.bna*, align 8
  %6 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = icmp ne %struct.net_device* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %94

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call %struct.bnad* @netdev_priv(%struct.net_device* %13)
  store %struct.bnad* %14, %struct.bnad** %4, align 8
  %15 = load %struct.bnad*, %struct.bnad** %4, align 8
  %16 = getelementptr inbounds %struct.bnad, %struct.bnad* %15, i32 0, i32 5
  store %struct.bna* %16, %struct.bna** %5, align 8
  %17 = load i32, i32* @BNAD_RF_NETDEV_REGISTERED, align 4
  %18 = load %struct.bnad*, %struct.bnad** %4, align 8
  %19 = getelementptr inbounds %struct.bnad, %struct.bnad* %18, i32 0, i32 6
  %20 = call i64 @test_and_clear_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call i32 @unregister_netdev(%struct.net_device* %23)
  br label %25

25:                                               ; preds = %22, %12
  %26 = load %struct.bnad*, %struct.bnad** %4, align 8
  %27 = getelementptr inbounds %struct.bnad, %struct.bnad* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.bnad*, %struct.bnad** %4, align 8
  %30 = call i32 @bnad_ioceth_disable(%struct.bnad* %29)
  %31 = load %struct.bnad*, %struct.bnad** %4, align 8
  %32 = getelementptr inbounds %struct.bnad, %struct.bnad* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.bna, %struct.bna* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = call i32 @del_timer_sync(i32* %35)
  %37 = load %struct.bnad*, %struct.bnad** %4, align 8
  %38 = getelementptr inbounds %struct.bnad, %struct.bnad* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.bna, %struct.bna* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = call i32 @del_timer_sync(i32* %41)
  %43 = load %struct.bnad*, %struct.bnad** %4, align 8
  %44 = getelementptr inbounds %struct.bnad, %struct.bnad* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.bna, %struct.bna* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 @del_timer_sync(i32* %47)
  %49 = load %struct.bnad*, %struct.bnad** %4, align 8
  %50 = getelementptr inbounds %struct.bnad, %struct.bnad* %49, i32 0, i32 4
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @spin_lock_irqsave(i32* %50, i64 %51)
  %53 = load %struct.bna*, %struct.bna** %5, align 8
  %54 = call i32 @bna_uninit(%struct.bna* %53)
  %55 = load %struct.bnad*, %struct.bnad** %4, align 8
  %56 = getelementptr inbounds %struct.bnad, %struct.bnad* %55, i32 0, i32 4
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load %struct.bnad*, %struct.bnad** %4, align 8
  %60 = load %struct.bnad*, %struct.bnad** %4, align 8
  %61 = getelementptr inbounds %struct.bnad, %struct.bnad* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* @BNA_MOD_RES_T_MAX, align 4
  %65 = call i32 @bnad_res_free(%struct.bnad* %59, i32* %63, i32 %64)
  %66 = load %struct.bnad*, %struct.bnad** %4, align 8
  %67 = load %struct.bnad*, %struct.bnad** %4, align 8
  %68 = getelementptr inbounds %struct.bnad, %struct.bnad* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* @BNA_RES_T_MAX, align 4
  %72 = call i32 @bnad_res_free(%struct.bnad* %66, i32* %70, i32 %71)
  %73 = load %struct.bnad*, %struct.bnad** %4, align 8
  %74 = call i32 @bnad_mbox_irq_free(%struct.bnad* %73)
  %75 = load %struct.bnad*, %struct.bnad** %4, align 8
  %76 = call i32 @bnad_disable_msix(%struct.bnad* %75)
  %77 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %78 = call i32 @bnad_pci_uninit(%struct.pci_dev* %77)
  %79 = load %struct.bnad*, %struct.bnad** %4, align 8
  %80 = getelementptr inbounds %struct.bnad, %struct.bnad* %79, i32 0, i32 1
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load %struct.bnad*, %struct.bnad** %4, align 8
  %83 = call i32 @bnad_lock_uninit(%struct.bnad* %82)
  %84 = load %struct.bnad*, %struct.bnad** %4, align 8
  %85 = getelementptr inbounds %struct.bnad, %struct.bnad* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @kfree(i32 %86)
  %88 = load %struct.bnad*, %struct.bnad** %4, align 8
  %89 = call i32 @bnad_debugfs_uninit(%struct.bnad* %88)
  %90 = load %struct.bnad*, %struct.bnad** %4, align 8
  %91 = call i32 @bnad_uninit(%struct.bnad* %90)
  %92 = load %struct.net_device*, %struct.net_device** %3, align 8
  %93 = call i32 @free_netdev(%struct.net_device* %92)
  br label %94

94:                                               ; preds = %25, %11
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.bnad* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bnad_ioceth_disable(%struct.bnad*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bna_uninit(%struct.bna*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bnad_res_free(%struct.bnad*, i32*, i32) #1

declare dso_local i32 @bnad_mbox_irq_free(%struct.bnad*) #1

declare dso_local i32 @bnad_disable_msix(%struct.bnad*) #1

declare dso_local i32 @bnad_pci_uninit(%struct.pci_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bnad_lock_uninit(%struct.bnad*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @bnad_debugfs_uninit(%struct.bnad*) #1

declare dso_local i32 @bnad_uninit(%struct.bnad*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
