; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.dev_priv = type { i64, i64, i32, %struct.ksz_port, %struct.dev_info* }
%struct.ksz_port = type { i32 }
%struct.dev_info = type { i32, i32, i32, i32, i32, i32, i32, %struct.ksz_hw }
%struct.ksz_hw = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@STP_STATE_DISABLED = common dso_local global i32 0, align 4
@STP_SUPPORT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @netdev_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.dev_priv*, align 8
  %4 = alloca %struct.dev_info*, align 8
  %5 = alloca %struct.ksz_port*, align 8
  %6 = alloca %struct.ksz_hw*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.dev_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.dev_priv* %9, %struct.dev_priv** %3, align 8
  %10 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %11 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %10, i32 0, i32 4
  %12 = load %struct.dev_info*, %struct.dev_info** %11, align 8
  store %struct.dev_info* %12, %struct.dev_info** %4, align 8
  %13 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %14 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %13, i32 0, i32 3
  store %struct.ksz_port* %14, %struct.ksz_port** %5, align 8
  %15 = load %struct.dev_info*, %struct.dev_info** %4, align 8
  %16 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %15, i32 0, i32 7
  store %struct.ksz_hw* %16, %struct.ksz_hw** %6, align 8
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @netif_stop_queue(%struct.net_device* %17)
  %19 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %20 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %19, i32 0, i32 2
  %21 = call i32 @ksz_stop_timer(i32* %20)
  %22 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %23 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %65

26:                                               ; preds = %1
  %27 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %28 = load %struct.ksz_port*, %struct.ksz_port** %5, align 8
  %29 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @STP_STATE_DISABLED, align 4
  %32 = call i32 @port_set_stp_state(%struct.ksz_hw* %27, i32 %30, i32 %31)
  %33 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %34 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @STP_SUPPORT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %26
  %40 = load %struct.ksz_port*, %struct.ksz_port** %5, align 8
  %41 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 1, %42
  store i32 %43, i32* %7, align 4
  %44 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %45 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %44, i32 0, i32 6
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %39
  %53 = load i32, i32* %7, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %56 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %55, i32 0, i32 6
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %54
  store i32 %60, i32* %58, align 4
  %61 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %62 = call i32 @bridge_change(%struct.ksz_hw* %61)
  br label %63

63:                                               ; preds = %52, %39
  br label %64

64:                                               ; preds = %63, %26
  br label %65

65:                                               ; preds = %64, %1
  %66 = load %struct.ksz_port*, %struct.ksz_port** %5, align 8
  %67 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %72 = load %struct.net_device*, %struct.net_device** %2, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @hw_del_addr(%struct.ksz_hw* %71, i32 %74)
  br label %76

76:                                               ; preds = %70, %65
  %77 = load %struct.dev_info*, %struct.dev_info** %4, align 8
  %78 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = load %struct.ksz_port*, %struct.ksz_port** %5, align 8
  %83 = call i32 @port_set_power_saving(%struct.ksz_port* %82, i32 1)
  br label %84

84:                                               ; preds = %81, %76
  %85 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %86 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %91 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %89, %84
  %95 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %96 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %101 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %99, %94
  %105 = load %struct.dev_info*, %struct.dev_info** %4, align 8
  %106 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %106, align 4
  %109 = load %struct.dev_info*, %struct.dev_info** %4, align 8
  %110 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %160, label %113

113:                                              ; preds = %104
  %114 = load %struct.dev_info*, %struct.dev_info** %4, align 8
  %115 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %114, i32 0, i32 4
  %116 = call i32 @ksz_stop_timer(i32* %115)
  %117 = load %struct.dev_info*, %struct.dev_info** %4, align 8
  %118 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %117, i32 0, i32 3
  %119 = call i32 @flush_work(i32* %118)
  %120 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %121 = call i32 @hw_dis_intr(%struct.ksz_hw* %120)
  %122 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %123 = call i32 @hw_disable(%struct.ksz_hw* %122)
  %124 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %125 = call i32 @hw_clr_multicast(%struct.ksz_hw* %124)
  %126 = load i32, i32* @HZ, align 4
  %127 = sdiv i32 2000, %126
  %128 = call i32 @msleep(i32 %127)
  %129 = load %struct.dev_info*, %struct.dev_info** %4, align 8
  %130 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %129, i32 0, i32 2
  %131 = call i32 @tasklet_kill(i32* %130)
  %132 = load %struct.dev_info*, %struct.dev_info** %4, align 8
  %133 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %132, i32 0, i32 1
  %134 = call i32 @tasklet_kill(i32* %133)
  %135 = load %struct.net_device*, %struct.net_device** %2, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.dev_info*, %struct.dev_info** %4, align 8
  %139 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @free_irq(i32 %137, i32 %140)
  %142 = load %struct.dev_info*, %struct.dev_info** %4, align 8
  %143 = call i32 @transmit_cleanup(%struct.dev_info* %142, i32 0)
  %144 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %145 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %144, i32 0, i32 3
  %146 = call i32 @hw_reset_pkts(i32* %145)
  %147 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %148 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %147, i32 0, i32 2
  %149 = call i32 @hw_reset_pkts(i32* %148)
  %150 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %151 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @STP_SUPPORT, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %113
  %157 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %158 = call i32 @sw_clr_sta_mac_table(%struct.ksz_hw* %157)
  br label %159

159:                                              ; preds = %156, %113
  br label %160

160:                                              ; preds = %159, %104
  ret i32 0
}

declare dso_local %struct.dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @ksz_stop_timer(i32*) #1

declare dso_local i32 @port_set_stp_state(%struct.ksz_hw*, i32, i32) #1

declare dso_local i32 @bridge_change(%struct.ksz_hw*) #1

declare dso_local i32 @hw_del_addr(%struct.ksz_hw*, i32) #1

declare dso_local i32 @port_set_power_saving(%struct.ksz_port*, i32) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @hw_dis_intr(%struct.ksz_hw*) #1

declare dso_local i32 @hw_disable(%struct.ksz_hw*) #1

declare dso_local i32 @hw_clr_multicast(%struct.ksz_hw*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @free_irq(i32, i32) #1

declare dso_local i32 @transmit_cleanup(%struct.dev_info*, i32) #1

declare dso_local i32 @hw_reset_pkts(i32*) #1

declare dso_local i32 @sw_clr_sta_mac_table(%struct.ksz_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
