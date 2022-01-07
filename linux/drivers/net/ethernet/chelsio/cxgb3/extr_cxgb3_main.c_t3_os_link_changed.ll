; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_t3_os_link_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_t3_os_link_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.net_device** }
%struct.net_device = type { i32 }
%struct.port_info = type { i32, %struct.TYPE_5__, %struct.cmac, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*, i32)* }
%struct.cmac = type { i64 }

@MAC_DIRECTION_RX = common dso_local global i32 0, align 4
@A_XGM_INT_STATUS = common dso_local global i64 0, align 8
@A_XGM_INT_CAUSE = common dso_local global i64 0, align 8
@F_XGM_INT = common dso_local global i32 0, align 4
@A_XGM_INT_ENABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3_os_link_changed(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca %struct.port_info*, align 8
  %15 = alloca %struct.cmac*, align 8
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.adapter*, %struct.adapter** %7, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  %18 = load %struct.net_device**, %struct.net_device*** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.net_device*, %struct.net_device** %18, i64 %20
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %13, align 8
  %23 = load %struct.net_device*, %struct.net_device** %13, align 8
  %24 = call %struct.port_info* @netdev_priv(%struct.net_device* %23)
  store %struct.port_info* %24, %struct.port_info** %14, align 8
  %25 = load %struct.port_info*, %struct.port_info** %14, align 8
  %26 = getelementptr inbounds %struct.port_info, %struct.port_info* %25, i32 0, i32 2
  store %struct.cmac* %26, %struct.cmac** %15, align 8
  %27 = load %struct.net_device*, %struct.net_device** %13, align 8
  %28 = call i32 @netif_running(%struct.net_device* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %6
  br label %147

31:                                               ; preds = %6
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.net_device*, %struct.net_device** %13, align 8
  %34 = call i32 @netif_carrier_ok(%struct.net_device* %33)
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %147

36:                                               ; preds = %31
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %85

39:                                               ; preds = %36
  %40 = load %struct.adapter*, %struct.adapter** %7, align 8
  %41 = load %struct.port_info*, %struct.port_info** %14, align 8
  %42 = call i32 @disable_tx_fifo_drain(%struct.adapter* %40, %struct.port_info* %41)
  %43 = load %struct.cmac*, %struct.cmac** %15, align 8
  %44 = load i32, i32* @MAC_DIRECTION_RX, align 4
  %45 = call i32 @t3_mac_enable(%struct.cmac* %43, i32 %44)
  %46 = load %struct.adapter*, %struct.adapter** %7, align 8
  %47 = load %struct.port_info*, %struct.port_info** %14, align 8
  %48 = getelementptr inbounds %struct.port_info, %struct.port_info* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @t3_xgm_intr_disable(%struct.adapter* %46, i32 %49)
  %51 = load %struct.adapter*, %struct.adapter** %7, align 8
  %52 = load i64, i64* @A_XGM_INT_STATUS, align 8
  %53 = load %struct.port_info*, %struct.port_info** %14, align 8
  %54 = getelementptr inbounds %struct.port_info, %struct.port_info* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.cmac, %struct.cmac* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %52, %56
  %58 = call i32 @t3_read_reg(%struct.adapter* %51, i64 %57)
  %59 = load %struct.adapter*, %struct.adapter** %7, align 8
  %60 = load i64, i64* @A_XGM_INT_CAUSE, align 8
  %61 = load %struct.port_info*, %struct.port_info** %14, align 8
  %62 = getelementptr inbounds %struct.port_info, %struct.port_info* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.cmac, %struct.cmac* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %60, %64
  %66 = load i32, i32* @F_XGM_INT, align 4
  %67 = call i32 @t3_write_reg(%struct.adapter* %59, i64 %65, i32 %66)
  %68 = load %struct.adapter*, %struct.adapter** %7, align 8
  %69 = load i64, i64* @A_XGM_INT_ENABLE, align 8
  %70 = load %struct.port_info*, %struct.port_info** %14, align 8
  %71 = getelementptr inbounds %struct.port_info, %struct.port_info* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.cmac, %struct.cmac* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %69, %73
  %75 = load i32, i32* @F_XGM_INT, align 4
  %76 = load i32, i32* @F_XGM_INT, align 4
  %77 = call i32 @t3_set_reg_field(%struct.adapter* %68, i64 %74, i32 %75, i32 %76)
  %78 = load %struct.adapter*, %struct.adapter** %7, align 8
  %79 = load %struct.port_info*, %struct.port_info** %14, align 8
  %80 = getelementptr inbounds %struct.port_info, %struct.port_info* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @t3_xgm_intr_enable(%struct.adapter* %78, i32 %81)
  %83 = load %struct.net_device*, %struct.net_device** %13, align 8
  %84 = call i32 @netif_carrier_on(%struct.net_device* %83)
  br label %144

85:                                               ; preds = %36
  %86 = load %struct.net_device*, %struct.net_device** %13, align 8
  %87 = call i32 @netif_carrier_off(%struct.net_device* %86)
  %88 = load %struct.adapter*, %struct.adapter** %7, align 8
  %89 = load %struct.port_info*, %struct.port_info** %14, align 8
  %90 = getelementptr inbounds %struct.port_info, %struct.port_info* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @t3_xgm_intr_disable(%struct.adapter* %88, i32 %91)
  %93 = load %struct.adapter*, %struct.adapter** %7, align 8
  %94 = load i64, i64* @A_XGM_INT_STATUS, align 8
  %95 = load %struct.port_info*, %struct.port_info** %14, align 8
  %96 = getelementptr inbounds %struct.port_info, %struct.port_info* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.cmac, %struct.cmac* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %94, %98
  %100 = call i32 @t3_read_reg(%struct.adapter* %93, i64 %99)
  %101 = load %struct.adapter*, %struct.adapter** %7, align 8
  %102 = load i64, i64* @A_XGM_INT_ENABLE, align 8
  %103 = load %struct.port_info*, %struct.port_info** %14, align 8
  %104 = getelementptr inbounds %struct.port_info, %struct.port_info* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.cmac, %struct.cmac* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %102, %106
  %108 = load i32, i32* @F_XGM_INT, align 4
  %109 = call i32 @t3_set_reg_field(%struct.adapter* %101, i64 %107, i32 %108, i32 0)
  %110 = load %struct.adapter*, %struct.adapter** %7, align 8
  %111 = call i64 @is_10G(%struct.adapter* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %85
  %114 = load %struct.port_info*, %struct.port_info** %14, align 8
  %115 = getelementptr inbounds %struct.port_info, %struct.port_info* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %118, align 8
  %120 = load %struct.port_info*, %struct.port_info** %14, align 8
  %121 = getelementptr inbounds %struct.port_info, %struct.port_info* %120, i32 0, i32 1
  %122 = call i32 %119(%struct.TYPE_5__* %121, i32 1)
  br label %123

123:                                              ; preds = %113, %85
  %124 = load %struct.adapter*, %struct.adapter** %7, align 8
  %125 = load i64, i64* @A_XGM_INT_STATUS, align 8
  %126 = load %struct.port_info*, %struct.port_info** %14, align 8
  %127 = getelementptr inbounds %struct.port_info, %struct.port_info* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.cmac, %struct.cmac* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %125, %129
  %131 = call i32 @t3_read_reg(%struct.adapter* %124, i64 %130)
  %132 = load %struct.cmac*, %struct.cmac** %15, align 8
  %133 = load i32, i32* @MAC_DIRECTION_RX, align 4
  %134 = call i32 @t3_mac_disable(%struct.cmac* %132, i32 %133)
  %135 = load %struct.port_info*, %struct.port_info** %14, align 8
  %136 = getelementptr inbounds %struct.port_info, %struct.port_info* %135, i32 0, i32 1
  %137 = load %struct.cmac*, %struct.cmac** %15, align 8
  %138 = load %struct.port_info*, %struct.port_info** %14, align 8
  %139 = getelementptr inbounds %struct.port_info, %struct.port_info* %138, i32 0, i32 0
  %140 = call i32 @t3_link_start(%struct.TYPE_5__* %136, %struct.cmac* %137, i32* %139)
  %141 = load %struct.adapter*, %struct.adapter** %7, align 8
  %142 = load %struct.port_info*, %struct.port_info** %14, align 8
  %143 = call i32 @enable_tx_fifo_drain(%struct.adapter* %141, %struct.port_info* %142)
  br label %144

144:                                              ; preds = %123, %39
  %145 = load %struct.net_device*, %struct.net_device** %13, align 8
  %146 = call i32 @link_report(%struct.net_device* %145)
  br label %147

147:                                              ; preds = %30, %144, %31
  ret void
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @disable_tx_fifo_drain(%struct.adapter*, %struct.port_info*) #1

declare dso_local i32 @t3_mac_enable(%struct.cmac*, i32) #1

declare dso_local i32 @t3_xgm_intr_disable(%struct.adapter*, i32) #1

declare dso_local i32 @t3_read_reg(%struct.adapter*, i64) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i64, i32) #1

declare dso_local i32 @t3_set_reg_field(%struct.adapter*, i64, i32, i32) #1

declare dso_local i32 @t3_xgm_intr_enable(%struct.adapter*, i32) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i64 @is_10G(%struct.adapter*) #1

declare dso_local i32 @t3_mac_disable(%struct.cmac*, i32) #1

declare dso_local i32 @t3_link_start(%struct.TYPE_5__*, %struct.cmac*, i32*) #1

declare dso_local i32 @enable_tx_fifo_drain(%struct.adapter*, %struct.port_info*) #1

declare dso_local i32 @link_report(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
