; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c___qede_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c___qede_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.qed_dev*)*, i32 (%struct.qed_dev*)* }
%struct.qed_dev = type { i32 }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.qede_dev = type { %struct.TYPE_6__*, i32, %struct.qed_dev* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.qed_dev*, i32)* }

@.str = private unnamed_addr constant [33 x i8] c"Device has already been removed\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Starting qede_remove\0A\00", align 1
@QEDE_REMOVE_RECOVERY = common dso_local global i32 0, align 4
@PCI_D0 = common dso_local global i32 0, align 4
@qed_ops = common dso_local global %struct.TYPE_8__* null, align 8
@system_state = common dso_local global i64 0, align 8
@SYSTEM_POWER_OFF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Ending qede_remove successfully\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i32)* @__qede_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__qede_remove(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.qede_dev*, align 8
  %7 = alloca %struct.qed_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = icmp ne %struct.net_device* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = call i32 @dev_info(i32* %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %83

16:                                               ; preds = %2
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call %struct.qede_dev* @netdev_priv(%struct.net_device* %17)
  store %struct.qede_dev* %18, %struct.qede_dev** %6, align 8
  %19 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %20 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %19, i32 0, i32 2
  %21 = load %struct.qed_dev*, %struct.qed_dev** %20, align 8
  store %struct.qed_dev* %21, %struct.qed_dev** %7, align 8
  %22 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %23 = call i32 @DP_INFO(%struct.qede_dev* %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @QEDE_REMOVE_RECOVERY, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @qede_rdma_dev_remove(%struct.qede_dev* %24, i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @QEDE_REMOVE_RECOVERY, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %16
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = call i32 @unregister_netdev(%struct.net_device* %34)
  %36 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %37 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %36, i32 0, i32 1
  %38 = call i32 @cancel_delayed_work_sync(i32* %37)
  %39 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %40 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32 (%struct.qed_dev*, i32)*, i32 (%struct.qed_dev*, i32)** %44, align 8
  %46 = load %struct.qed_dev*, %struct.qed_dev** %7, align 8
  %47 = load i32, i32* @PCI_D0, align 4
  %48 = call i32 %45(%struct.qed_dev* %46, i32 %47)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %50 = call i32 @pci_set_drvdata(%struct.pci_dev* %49, i32* null)
  br label %51

51:                                               ; preds = %33, %16
  %52 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %53 = call i32 @qede_ptp_disable(%struct.qede_dev* %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** @qed_ops, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32 (%struct.qed_dev*)*, i32 (%struct.qed_dev*)** %57, align 8
  %59 = load %struct.qed_dev*, %struct.qed_dev** %7, align 8
  %60 = call i32 %58(%struct.qed_dev* %59)
  %61 = load i64, i64* @system_state, align 8
  %62 = load i64, i64* @SYSTEM_POWER_OFF, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  br label %83

65:                                               ; preds = %51
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** @qed_ops, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32 (%struct.qed_dev*)*, i32 (%struct.qed_dev*)** %69, align 8
  %71 = load %struct.qed_dev*, %struct.qed_dev** %7, align 8
  %72 = call i32 %70(%struct.qed_dev* %71)
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @QEDE_REMOVE_RECOVERY, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %65
  %77 = load %struct.net_device*, %struct.net_device** %5, align 8
  %78 = call i32 @free_netdev(%struct.net_device* %77)
  br label %79

79:                                               ; preds = %76, %65
  %80 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %81 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %80, i32 0, i32 0
  %82 = call i32 @dev_info(i32* %81, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %83

83:                                               ; preds = %79, %64, %12
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local %struct.qede_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DP_INFO(%struct.qede_dev*, i8*) #1

declare dso_local i32 @qede_rdma_dev_remove(%struct.qede_dev*, i32) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @qede_ptp_disable(%struct.qede_dev*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
