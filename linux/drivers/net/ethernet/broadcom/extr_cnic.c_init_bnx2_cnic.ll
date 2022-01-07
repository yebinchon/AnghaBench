; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_init_bnx2_cnic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_init_bnx2_cnic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, %struct.pci_dev*, %struct.cnic_local*, i32, i32 }
%struct.pci_dev = type { i64, i32 }
%struct.cnic_local = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.cnic_eth_dev* }
%struct.cnic_eth_dev = type { i32, i32, %struct.pci_dev* }
%struct.net_device = type { i32 }
%struct.bnx2 = type { %struct.cnic_eth_dev* (%struct.net_device*)* }

@PCI_DEVICE_ID_NX2_5709 = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_NX2_5709S = common dso_local global i64 0, align 8
@CNIC_F_BNX2_CLASS = common dso_local global i32 0, align 4
@cnic_submit_bnx2_kwqes = common dso_local global i32 0, align 4
@cnic_bnx2_ops = common dso_local global i32 0, align 4
@cnic_start_bnx2_hw = common dso_local global i32 0, align 4
@cnic_stop_bnx2_hw = common dso_local global i32 0, align 4
@cnic_setup_page_tbl = common dso_local global i32 0, align 4
@cnic_alloc_bnx2_resc = common dso_local global i32 0, align 4
@cnic_free_resc = common dso_local global i32 0, align 4
@cnic_cm_init_bnx2_hw = common dso_local global i32 0, align 4
@cnic_cm_stop_bnx2_hw = common dso_local global i32 0, align 4
@cnic_enable_bnx2_int = common dso_local global i32 0, align 4
@cnic_disable_bnx2_int_sync = common dso_local global i32 0, align 4
@cnic_close_bnx2_conn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cnic_dev* (%struct.net_device*)* @init_bnx2_cnic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cnic_dev* @init_bnx2_cnic(%struct.net_device* %0) #0 {
  %2 = alloca %struct.cnic_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.cnic_dev*, align 8
  %6 = alloca %struct.cnic_local*, align 8
  %7 = alloca %struct.bnx2*, align 8
  %8 = alloca %struct.cnic_eth_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.bnx2* @netdev_priv(%struct.net_device* %9)
  store %struct.bnx2* %10, %struct.bnx2** %7, align 8
  store %struct.cnic_eth_dev* null, %struct.cnic_eth_dev** %8, align 8
  %11 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %12 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %11, i32 0, i32 0
  %13 = load %struct.cnic_eth_dev* (%struct.net_device*)*, %struct.cnic_eth_dev* (%struct.net_device*)** %12, align 8
  %14 = icmp ne %struct.cnic_eth_dev* (%struct.net_device*)* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %17 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %16, i32 0, i32 0
  %18 = load %struct.cnic_eth_dev* (%struct.net_device*)*, %struct.cnic_eth_dev* (%struct.net_device*)** %17, align 8
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call %struct.cnic_eth_dev* %18(%struct.net_device* %19)
  store %struct.cnic_eth_dev* %20, %struct.cnic_eth_dev** %8, align 8
  br label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %8, align 8
  %23 = icmp ne %struct.cnic_eth_dev* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store %struct.cnic_dev* null, %struct.cnic_dev** %2, align 8
  br label %128

25:                                               ; preds = %21
  %26 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %8, align 8
  %27 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %26, i32 0, i32 2
  %28 = load %struct.pci_dev*, %struct.pci_dev** %27, align 8
  store %struct.pci_dev* %28, %struct.pci_dev** %4, align 8
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = icmp ne %struct.pci_dev* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store %struct.cnic_dev* null, %struct.cnic_dev** %2, align 8
  br label %128

32:                                               ; preds = %25
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i32 @dev_hold(%struct.net_device* %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = call i32 @pci_dev_get(%struct.pci_dev* %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PCI_DEVICE_ID_NX2_5709, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %32
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PCI_DEVICE_ID_NX2_5709S, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %42, %32
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %51, 16
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = call i32 @pci_dev_put(%struct.pci_dev* %54)
  br label %125

56:                                               ; preds = %48, %42
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = call i32 @pci_dev_put(%struct.pci_dev* %57)
  %59 = load %struct.net_device*, %struct.net_device** %3, align 8
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = call %struct.cnic_dev* @cnic_alloc_dev(%struct.net_device* %59, %struct.pci_dev* %60)
  store %struct.cnic_dev* %61, %struct.cnic_dev** %5, align 8
  %62 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %63 = icmp eq %struct.cnic_dev* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %125

65:                                               ; preds = %56
  %66 = load i32, i32* @CNIC_F_BNX2_CLASS, align 4
  %67 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %68 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %67, i32 0, i32 4
  %69 = call i32 @set_bit(i32 %66, i32* %68)
  %70 = load i32, i32* @cnic_submit_bnx2_kwqes, align 4
  %71 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %72 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  %73 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %74 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %73, i32 0, i32 2
  %75 = load %struct.cnic_local*, %struct.cnic_local** %74, align 8
  store %struct.cnic_local* %75, %struct.cnic_local** %6, align 8
  %76 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %8, align 8
  %77 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %78 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %77, i32 0, i32 12
  store %struct.cnic_eth_dev* %76, %struct.cnic_eth_dev** %78, align 8
  %79 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %80 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %81 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %80, i32 0, i32 1
  store %struct.pci_dev* %79, %struct.pci_dev** %81, align 8
  %82 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %8, align 8
  %83 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %86 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %85, i32 0, i32 11
  store i32 %84, i32* %86, align 8
  %87 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %8, align 8
  %88 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %91 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %93 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %92, i32 0, i32 10
  store i32* @cnic_bnx2_ops, i32** %93, align 8
  %94 = load i32, i32* @cnic_start_bnx2_hw, align 4
  %95 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %96 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %95, i32 0, i32 9
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @cnic_stop_bnx2_hw, align 4
  %98 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %99 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %98, i32 0, i32 8
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* @cnic_setup_page_tbl, align 4
  %101 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %102 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %101, i32 0, i32 7
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @cnic_alloc_bnx2_resc, align 4
  %104 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %105 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %104, i32 0, i32 6
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* @cnic_free_resc, align 4
  %107 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %108 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @cnic_cm_init_bnx2_hw, align 4
  %110 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %111 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @cnic_cm_stop_bnx2_hw, align 4
  %113 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %114 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @cnic_enable_bnx2_int, align 4
  %116 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %117 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* @cnic_disable_bnx2_int_sync, align 4
  %119 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %120 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* @cnic_close_bnx2_conn, align 4
  %122 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %123 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  store %struct.cnic_dev* %124, %struct.cnic_dev** %2, align 8
  br label %128

125:                                              ; preds = %64, %53
  %126 = load %struct.net_device*, %struct.net_device** %3, align 8
  %127 = call i32 @dev_put(%struct.net_device* %126)
  store %struct.cnic_dev* null, %struct.cnic_dev** %2, align 8
  br label %128

128:                                              ; preds = %125, %65, %31, %24
  %129 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  ret %struct.cnic_dev* %129
}

declare dso_local %struct.bnx2* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @pci_dev_get(%struct.pci_dev*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local %struct.cnic_dev* @cnic_alloc_dev(%struct.net_device*, %struct.pci_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
