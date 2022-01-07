; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_loopback_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_loopback_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.sk_buff = type { i32 }

@ich = common dso_local global i32 0, align 4
@lb_phy = common dso_local global i32 0, align 4
@lb_mac = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_LOOPBACK = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RFD_BUF_LEN = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@lb_none = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nic*, i32)* @e100_loopback_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e100_loopback_test(%struct.nic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.nic* %0, %struct.nic** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nic*, %struct.nic** %4, align 8
  %9 = call i32 @e100_rx_alloc_list(%struct.nic* %8)
  store i32 %9, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %131

13:                                               ; preds = %2
  %14 = load %struct.nic*, %struct.nic** %4, align 8
  %15 = call i32 @e100_alloc_cbs(%struct.nic* %14)
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %127

18:                                               ; preds = %13
  %19 = load %struct.nic*, %struct.nic** %4, align 8
  %20 = getelementptr inbounds %struct.nic, %struct.nic* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ich, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @lb_phy, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @lb_mac, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %25, %18
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.nic*, %struct.nic** %4, align 8
  %34 = getelementptr inbounds %struct.nic, %struct.nic* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.nic*, %struct.nic** %4, align 8
  %36 = call i32 @e100_hw_init(%struct.nic* %35)
  store i32 %36, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %110

39:                                               ; preds = %31
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @lb_phy, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load %struct.nic*, %struct.nic** %4, align 8
  %45 = getelementptr inbounds %struct.nic, %struct.nic* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nic*, %struct.nic** %4, align 8
  %48 = getelementptr inbounds %struct.nic, %struct.nic* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @MII_BMCR, align 4
  %52 = load i32, i32* @BMCR_LOOPBACK, align 4
  %53 = call i32 @mdio_write(i32 %46, i32 %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %43, %39
  %55 = load %struct.nic*, %struct.nic** %4, align 8
  %56 = call i32 @e100_start_receiver(%struct.nic* %55, i32* null)
  %57 = load %struct.nic*, %struct.nic** %4, align 8
  %58 = getelementptr inbounds %struct.nic, %struct.nic* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ETH_DATA_LEN, align 4
  %61 = call %struct.sk_buff* @netdev_alloc_skb(i32 %59, i32 %60)
  store %struct.sk_buff* %61, %struct.sk_buff** %7, align 8
  %62 = icmp ne %struct.sk_buff* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %54
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %110

66:                                               ; preds = %54
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %68 = load i32, i32* @ETH_DATA_LEN, align 4
  %69 = call i32 @skb_put(%struct.sk_buff* %67, i32 %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ETH_DATA_LEN, align 4
  %74 = call i32 @memset(i32 %72, i32 255, i32 %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %76 = load %struct.nic*, %struct.nic** %4, align 8
  %77 = getelementptr inbounds %struct.nic, %struct.nic* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @e100_xmit_frame(%struct.sk_buff* %75, i32 %78)
  %80 = call i32 @msleep(i32 10)
  %81 = load %struct.nic*, %struct.nic** %4, align 8
  %82 = getelementptr inbounds %struct.nic, %struct.nic* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.nic*, %struct.nic** %4, align 8
  %85 = getelementptr inbounds %struct.nic, %struct.nic* %84, i32 0, i32 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @RFD_BUF_LEN, align 4
  %90 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %91 = call i32 @pci_dma_sync_single_for_cpu(i32 %83, i32 %88, i32 %89, i32 %90)
  %92 = load %struct.nic*, %struct.nic** %4, align 8
  %93 = getelementptr inbounds %struct.nic, %struct.nic* %92, i32 0, i32 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @ETH_DATA_LEN, align 4
  %104 = call i64 @memcmp(i64 %99, i32 %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %66
  %107 = load i32, i32* @EAGAIN, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %106, %66
  br label %110

110:                                              ; preds = %109, %63, %38
  %111 = load %struct.nic*, %struct.nic** %4, align 8
  %112 = getelementptr inbounds %struct.nic, %struct.nic* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.nic*, %struct.nic** %4, align 8
  %115 = getelementptr inbounds %struct.nic, %struct.nic* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @MII_BMCR, align 4
  %119 = call i32 @mdio_write(i32 %113, i32 %117, i32 %118, i32 0)
  %120 = load i32, i32* @lb_none, align 4
  %121 = load %struct.nic*, %struct.nic** %4, align 8
  %122 = getelementptr inbounds %struct.nic, %struct.nic* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.nic*, %struct.nic** %4, align 8
  %124 = call i32 @e100_clean_cbs(%struct.nic* %123)
  %125 = load %struct.nic*, %struct.nic** %4, align 8
  %126 = call i32 @e100_hw_reset(%struct.nic* %125)
  br label %127

127:                                              ; preds = %110, %17
  %128 = load %struct.nic*, %struct.nic** %4, align 8
  %129 = call i32 @e100_rx_clean_list(%struct.nic* %128)
  %130 = load i32, i32* %6, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %127, %11
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @e100_rx_alloc_list(%struct.nic*) #1

declare dso_local i32 @e100_alloc_cbs(%struct.nic*) #1

declare dso_local i32 @e100_hw_init(%struct.nic*) #1

declare dso_local i32 @mdio_write(i32, i32, i32, i32) #1

declare dso_local i32 @e100_start_receiver(%struct.nic*, i32*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @e100_xmit_frame(%struct.sk_buff*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i64 @memcmp(i64, i32, i32) #1

declare dso_local i32 @e100_clean_cbs(%struct.nic*) #1

declare dso_local i32 @e100_hw_reset(%struct.nic*) #1

declare dso_local i32 @e100_rx_clean_list(%struct.nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
