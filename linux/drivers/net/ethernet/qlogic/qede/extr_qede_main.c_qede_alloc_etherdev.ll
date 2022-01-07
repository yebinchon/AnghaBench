; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_alloc_etherdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_alloc_etherdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, %struct.pci_dev*, %struct.qed_dev*, %struct.net_device* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.net_device = type { i32 }
%struct.qed_dev = type { i32 }
%struct.pci_dev = type { i32 }
%struct.qed_dev_eth_info = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"etherdev allocation failed\0A\00", align 1
@qed_ops = common dso_local global i32 0, align 4
@NUM_RX_BDS_DEF = common dso_local global i32 0, align 4
@NUM_TX_BDS_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Allocated netdev with %d tx queues and %d rx queues\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qede_dev* (%struct.qed_dev*, %struct.pci_dev*, %struct.qed_dev_eth_info*, i32, i32)* @qede_alloc_etherdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qede_dev* @qede_alloc_etherdev(%struct.qed_dev* %0, %struct.pci_dev* %1, %struct.qed_dev_eth_info* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.qede_dev*, align 8
  %7 = alloca %struct.qed_dev*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.qed_dev_eth_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.qede_dev*, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %7, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %8, align 8
  store %struct.qed_dev_eth_info* %2, %struct.qed_dev_eth_info** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.qed_dev_eth_info*, %struct.qed_dev_eth_info** %9, align 8
  %15 = getelementptr inbounds %struct.qed_dev_eth_info, %struct.qed_dev_eth_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.qed_dev_eth_info*, %struct.qed_dev_eth_info** %9, align 8
  %18 = getelementptr inbounds %struct.qed_dev_eth_info, %struct.qed_dev_eth_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %16, %19
  %21 = load %struct.qed_dev_eth_info*, %struct.qed_dev_eth_info** %9, align 8
  %22 = getelementptr inbounds %struct.qed_dev_eth_info, %struct.qed_dev_eth_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.net_device* @alloc_etherdev_mqs(i32 64, i32 %20, i32 %23)
  store %struct.net_device* %24, %struct.net_device** %12, align 8
  %25 = load %struct.net_device*, %struct.net_device** %12, align 8
  %26 = icmp ne %struct.net_device* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %5
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store %struct.qede_dev* null, %struct.qede_dev** %6, align 8
  br label %89

29:                                               ; preds = %5
  %30 = load %struct.net_device*, %struct.net_device** %12, align 8
  %31 = call %struct.qede_dev* @netdev_priv(%struct.net_device* %30)
  store %struct.qede_dev* %31, %struct.qede_dev** %13, align 8
  %32 = load %struct.net_device*, %struct.net_device** %12, align 8
  %33 = load %struct.qede_dev*, %struct.qede_dev** %13, align 8
  %34 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %33, i32 0, i32 11
  store %struct.net_device* %32, %struct.net_device** %34, align 8
  %35 = load %struct.qed_dev*, %struct.qed_dev** %7, align 8
  %36 = load %struct.qede_dev*, %struct.qede_dev** %13, align 8
  %37 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %36, i32 0, i32 10
  store %struct.qed_dev* %35, %struct.qed_dev** %37, align 8
  %38 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %39 = load %struct.qede_dev*, %struct.qede_dev** %13, align 8
  %40 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %39, i32 0, i32 9
  store %struct.pci_dev* %38, %struct.pci_dev** %40, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.qede_dev*, %struct.qede_dev** %13, align 8
  %43 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %42, i32 0, i32 8
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.qede_dev*, %struct.qede_dev** %13, align 8
  %46 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @qed_ops, align 4
  %48 = load %struct.qede_dev*, %struct.qede_dev** %13, align 8
  %49 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @NUM_RX_BDS_DEF, align 4
  %51 = load %struct.qede_dev*, %struct.qede_dev** %13, align 8
  %52 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @NUM_TX_BDS_DEF, align 4
  %54 = load %struct.qede_dev*, %struct.qede_dev** %13, align 8
  %55 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  %56 = load %struct.qede_dev*, %struct.qede_dev** %13, align 8
  %57 = load %struct.qed_dev_eth_info*, %struct.qed_dev_eth_info** %9, align 8
  %58 = getelementptr inbounds %struct.qed_dev_eth_info, %struct.qed_dev_eth_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.qed_dev_eth_info*, %struct.qed_dev_eth_info** %9, align 8
  %61 = getelementptr inbounds %struct.qed_dev_eth_info, %struct.qed_dev_eth_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @DP_INFO(%struct.qede_dev* %56, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %62)
  %64 = load %struct.net_device*, %struct.net_device** %12, align 8
  %65 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 0
  %67 = call i32 @SET_NETDEV_DEV(%struct.net_device* %64, i32* %66)
  %68 = load %struct.qede_dev*, %struct.qede_dev** %13, align 8
  %69 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %68, i32 0, i32 3
  %70 = call i32 @memset(i32* %69, i32 0, i32 4)
  %71 = load %struct.qede_dev*, %struct.qede_dev** %13, align 8
  %72 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %71, i32 0, i32 2
  %73 = load %struct.qed_dev_eth_info*, %struct.qed_dev_eth_info** %9, align 8
  %74 = call i32 @memcpy(%struct.TYPE_4__* %72, %struct.qed_dev_eth_info* %73, i32 8)
  %75 = load %struct.qede_dev*, %struct.qede_dev** %13, align 8
  %76 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %29
  %82 = load %struct.qede_dev*, %struct.qede_dev** %13, align 8
  %83 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %29
  %85 = load %struct.qede_dev*, %struct.qede_dev** %13, align 8
  %86 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %85, i32 0, i32 1
  %87 = call i32 @INIT_LIST_HEAD(i32* %86)
  %88 = load %struct.qede_dev*, %struct.qede_dev** %13, align 8
  store %struct.qede_dev* %88, %struct.qede_dev** %6, align 8
  br label %89

89:                                               ; preds = %84, %27
  %90 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  ret %struct.qede_dev* %90
}

declare dso_local %struct.net_device* @alloc_etherdev_mqs(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.qede_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DP_INFO(%struct.qede_dev*, i8*, i32, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, %struct.qed_dev_eth_info*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
