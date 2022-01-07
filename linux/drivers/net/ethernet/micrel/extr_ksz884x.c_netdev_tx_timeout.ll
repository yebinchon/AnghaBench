; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.dev_priv = type { %struct.dev_info* }
%struct.dev_info = type { %struct.ksz_hw }
%struct.ksz_hw = type { i32, %struct.TYPE_3__*, i64, i64, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.TYPE_4__ = type { i32 }

@netdev_tx_timeout.last_reset = internal global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@SWITCH_PORT_NUM = common dso_local global i32 0, align 4
@STP_STATE_DISABLED = common dso_local global i32 0, align 4
@STP_STATE_SIMPLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @netdev_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netdev_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.dev_priv*, align 8
  %4 = alloca %struct.dev_info*, align 8
  %5 = alloca %struct.ksz_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.dev_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.dev_priv* %9, %struct.dev_priv** %3, align 8
  %10 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %11 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %10, i32 0, i32 0
  %12 = load %struct.dev_info*, %struct.dev_info** %11, align 8
  store %struct.dev_info* %12, %struct.dev_info** %4, align 8
  %13 = load %struct.dev_info*, %struct.dev_info** %4, align 8
  %14 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %13, i32 0, i32 0
  store %struct.ksz_hw* %14, %struct.ksz_hw** %5, align 8
  %15 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %16 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load i64, i64* @jiffies, align 8
  %21 = load i64, i64* @netdev_tx_timeout.last_reset, align 8
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %21, %24
  %26 = call i64 @time_before_eq(i64 %20, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store %struct.dev_info* null, %struct.dev_info** %4, align 8
  br label %29

29:                                               ; preds = %28, %19
  br label %30

30:                                               ; preds = %29, %1
  %31 = load i64, i64* @jiffies, align 8
  store i64 %31, i64* @netdev_tx_timeout.last_reset, align 8
  %32 = load %struct.dev_info*, %struct.dev_info** %4, align 8
  %33 = icmp ne %struct.dev_info* %32, null
  br i1 %33, label %34, label %125

34:                                               ; preds = %30
  %35 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %36 = call i32 @hw_dis_intr(%struct.ksz_hw* %35)
  %37 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %38 = call i32 @hw_disable(%struct.ksz_hw* %37)
  %39 = load %struct.dev_info*, %struct.dev_info** %4, align 8
  %40 = call i32 @transmit_cleanup(%struct.dev_info* %39, i32 0)
  %41 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %42 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %41, i32 0, i32 4
  %43 = call i32 @hw_reset_pkts(%struct.TYPE_4__* %42)
  %44 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %45 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %44, i32 0, i32 5
  %46 = call i32 @hw_reset_pkts(%struct.TYPE_4__* %45)
  %47 = load %struct.dev_info*, %struct.dev_info** %4, align 8
  %48 = call i32 @ksz_init_rx_buffers(%struct.dev_info* %47)
  %49 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %50 = call i32 @hw_reset(%struct.ksz_hw* %49)
  %51 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %52 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %53 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %57 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @hw_set_desc_base(%struct.ksz_hw* %51, i32 %55, i32 %59)
  %61 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %62 = call i32 @hw_set_addr(%struct.ksz_hw* %61)
  %63 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %64 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %34
  %68 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %69 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %70 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @hw_set_multicast(%struct.ksz_hw* %68, i64 %71)
  br label %82

73:                                               ; preds = %34
  %74 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %75 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %80 = call i32 @hw_set_grp_addr(%struct.ksz_hw* %79)
  br label %81

81:                                               ; preds = %78, %73
  br label %82

82:                                               ; preds = %81, %67
  %83 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %84 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %120

87:                                               ; preds = %82
  %88 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %89 = call i32 @hw_set_add_addr(%struct.ksz_hw* %88)
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %116, %87
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @SWITCH_PORT_NUM, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %119

94:                                               ; preds = %90
  %95 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @STP_STATE_DISABLED, align 4
  %98 = call i32 @port_set_stp_state(%struct.ksz_hw* %95, i32 %96, i32 %97)
  %99 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %100 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %99, i32 0, i32 1
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load %struct.net_device*, %struct.net_device** %105, align 8
  store %struct.net_device* %106, %struct.net_device** %7, align 8
  %107 = load %struct.net_device*, %struct.net_device** %7, align 8
  %108 = call i64 @netif_running(%struct.net_device* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %94
  %111 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @STP_STATE_SIMPLE, align 4
  %114 = call i32 @port_set_stp_state(%struct.ksz_hw* %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %110, %94
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %90

119:                                              ; preds = %90
  br label %120

120:                                              ; preds = %119, %82
  %121 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %122 = call i32 @hw_enable(%struct.ksz_hw* %121)
  %123 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %124 = call i32 @hw_ena_intr(%struct.ksz_hw* %123)
  br label %125

125:                                              ; preds = %120, %30
  %126 = load %struct.net_device*, %struct.net_device** %2, align 8
  %127 = call i32 @netif_trans_update(%struct.net_device* %126)
  %128 = load %struct.net_device*, %struct.net_device** %2, align 8
  %129 = call i32 @netif_wake_queue(%struct.net_device* %128)
  ret void
}

declare dso_local %struct.dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @time_before_eq(i64, i64) #1

declare dso_local i32 @hw_dis_intr(%struct.ksz_hw*) #1

declare dso_local i32 @hw_disable(%struct.ksz_hw*) #1

declare dso_local i32 @transmit_cleanup(%struct.dev_info*, i32) #1

declare dso_local i32 @hw_reset_pkts(%struct.TYPE_4__*) #1

declare dso_local i32 @ksz_init_rx_buffers(%struct.dev_info*) #1

declare dso_local i32 @hw_reset(%struct.ksz_hw*) #1

declare dso_local i32 @hw_set_desc_base(%struct.ksz_hw*, i32, i32) #1

declare dso_local i32 @hw_set_addr(%struct.ksz_hw*) #1

declare dso_local i32 @hw_set_multicast(%struct.ksz_hw*, i64) #1

declare dso_local i32 @hw_set_grp_addr(%struct.ksz_hw*) #1

declare dso_local i32 @hw_set_add_addr(%struct.ksz_hw*) #1

declare dso_local i32 @port_set_stp_state(%struct.ksz_hw*, i32, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @hw_enable(%struct.ksz_hw*) #1

declare dso_local i32 @hw_ena_intr(%struct.ksz_hw*) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
