; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_ethtool.c_pch_gbe_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_ethtool.c_pch_gbe_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32, i64, i64 }
%struct.pch_gbe_adapter = type { i32, %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring* }
%struct.pch_gbe_tx_ring = type { i8* }
%struct.pch_gbe_rx_ring = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCH_GBE_MIN_RXD = common dso_local global i32 0, align 4
@PCH_GBE_MAX_RXD = common dso_local global i32 0, align 4
@PCH_GBE_RX_DESC_MULTIPLE = common dso_local global i32 0, align 4
@PCH_GBE_TX_DESC_MULTIPLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @pch_gbe_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_gbe_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.pch_gbe_adapter*, align 8
  %7 = alloca %struct.pch_gbe_tx_ring*, align 8
  %8 = alloca %struct.pch_gbe_tx_ring*, align 8
  %9 = alloca %struct.pch_gbe_rx_ring*, align 8
  %10 = alloca %struct.pch_gbe_rx_ring*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device* %14)
  store %struct.pch_gbe_adapter* %15, %struct.pch_gbe_adapter** %6, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %179

28:                                               ; preds = %20
  store i32 8, i32* %11, align 4
  store i32 8, i32* %12, align 4
  %29 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %30 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @netif_running(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %36 = call i32 @pch_gbe_down(%struct.pch_gbe_adapter* %35)
  br label %37

37:                                               ; preds = %34, %28
  %38 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %39 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %38, i32 0, i32 1
  %40 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %39, align 8
  store %struct.pch_gbe_tx_ring* %40, %struct.pch_gbe_tx_ring** %8, align 8
  %41 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %42 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %41, i32 0, i32 2
  %43 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %42, align 8
  %44 = bitcast %struct.pch_gbe_tx_ring* %43 to %struct.pch_gbe_rx_ring*
  store %struct.pch_gbe_rx_ring* %44, %struct.pch_gbe_rx_ring** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.pch_gbe_tx_ring* @kzalloc(i32 %45, i32 %46)
  store %struct.pch_gbe_tx_ring* %47, %struct.pch_gbe_tx_ring** %7, align 8
  %48 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %7, align 8
  %49 = icmp ne %struct.pch_gbe_tx_ring* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %37
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %13, align 4
  br label %168

53:                                               ; preds = %37
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.pch_gbe_tx_ring* @kzalloc(i32 %54, i32 %55)
  %57 = bitcast %struct.pch_gbe_tx_ring* %56 to %struct.pch_gbe_rx_ring*
  store %struct.pch_gbe_rx_ring* %57, %struct.pch_gbe_rx_ring** %9, align 8
  %58 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %9, align 8
  %59 = icmp ne %struct.pch_gbe_rx_ring* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %13, align 4
  br label %165

63:                                               ; preds = %53
  %64 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %7, align 8
  %65 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %66 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %65, i32 0, i32 1
  store %struct.pch_gbe_tx_ring* %64, %struct.pch_gbe_tx_ring** %66, align 8
  %67 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %9, align 8
  %68 = bitcast %struct.pch_gbe_rx_ring* %67 to %struct.pch_gbe_tx_ring*
  %69 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %70 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %69, i32 0, i32 2
  store %struct.pch_gbe_tx_ring* %68, %struct.pch_gbe_tx_ring** %70, align 8
  %71 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %72 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PCH_GBE_MIN_RXD, align 4
  %75 = load i32, i32* @PCH_GBE_MAX_RXD, align 4
  %76 = call i8* @clamp_val(i32 %73, i32 %74, i32 %75)
  %77 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %9, align 8
  %78 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %9, align 8
  %80 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* @PCH_GBE_RX_DESC_MULTIPLE, align 4
  %83 = call i8* @roundup(i8* %81, i32 %82)
  %84 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %9, align 8
  %85 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %87 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @PCH_GBE_MIN_RXD, align 4
  %90 = load i32, i32* @PCH_GBE_MAX_RXD, align 4
  %91 = call i8* @clamp_val(i32 %88, i32 %89, i32 %90)
  %92 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %7, align 8
  %93 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  %94 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %7, align 8
  %95 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i32, i32* @PCH_GBE_TX_DESC_MULTIPLE, align 4
  %98 = call i8* @roundup(i8* %96, i32 %97)
  %99 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %7, align 8
  %100 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  %101 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %102 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @netif_running(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %146

106:                                              ; preds = %63
  %107 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %108 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %109 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %108, i32 0, i32 2
  %110 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %109, align 8
  %111 = call i32 @pch_gbe_setup_rx_resources(%struct.pch_gbe_adapter* %107, %struct.pch_gbe_tx_ring* %110)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %154

115:                                              ; preds = %106
  %116 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %117 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %118 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %117, i32 0, i32 1
  %119 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %118, align 8
  %120 = call i32 @pch_gbe_setup_tx_resources(%struct.pch_gbe_adapter* %116, %struct.pch_gbe_tx_ring* %119)
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  br label %148

124:                                              ; preds = %115
  %125 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %126 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %10, align 8
  %127 = bitcast %struct.pch_gbe_rx_ring* %126 to %struct.pch_gbe_tx_ring*
  %128 = call i32 @pch_gbe_free_rx_resources(%struct.pch_gbe_adapter* %125, %struct.pch_gbe_tx_ring* %127)
  %129 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %130 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %8, align 8
  %131 = call i32 @pch_gbe_free_tx_resources(%struct.pch_gbe_adapter* %129, %struct.pch_gbe_tx_ring* %130)
  %132 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %8, align 8
  %133 = call i32 @kfree(%struct.pch_gbe_tx_ring* %132)
  %134 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %10, align 8
  %135 = bitcast %struct.pch_gbe_rx_ring* %134 to %struct.pch_gbe_tx_ring*
  %136 = call i32 @kfree(%struct.pch_gbe_tx_ring* %135)
  %137 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %9, align 8
  %138 = bitcast %struct.pch_gbe_rx_ring* %137 to %struct.pch_gbe_tx_ring*
  %139 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %140 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %139, i32 0, i32 2
  store %struct.pch_gbe_tx_ring* %138, %struct.pch_gbe_tx_ring** %140, align 8
  %141 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %7, align 8
  %142 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %143 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %142, i32 0, i32 1
  store %struct.pch_gbe_tx_ring* %141, %struct.pch_gbe_tx_ring** %143, align 8
  %144 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %145 = call i32 @pch_gbe_up(%struct.pch_gbe_adapter* %144)
  store i32 %145, i32* %13, align 4
  br label %146

146:                                              ; preds = %124, %63
  %147 = load i32, i32* %13, align 4
  store i32 %147, i32* %3, align 4
  br label %179

148:                                              ; preds = %123
  %149 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %150 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %151 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %150, i32 0, i32 2
  %152 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %151, align 8
  %153 = call i32 @pch_gbe_free_rx_resources(%struct.pch_gbe_adapter* %149, %struct.pch_gbe_tx_ring* %152)
  br label %154

154:                                              ; preds = %148, %114
  %155 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %10, align 8
  %156 = bitcast %struct.pch_gbe_rx_ring* %155 to %struct.pch_gbe_tx_ring*
  %157 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %158 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %157, i32 0, i32 2
  store %struct.pch_gbe_tx_ring* %156, %struct.pch_gbe_tx_ring** %158, align 8
  %159 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %8, align 8
  %160 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %161 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %160, i32 0, i32 1
  store %struct.pch_gbe_tx_ring* %159, %struct.pch_gbe_tx_ring** %161, align 8
  %162 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %9, align 8
  %163 = bitcast %struct.pch_gbe_rx_ring* %162 to %struct.pch_gbe_tx_ring*
  %164 = call i32 @kfree(%struct.pch_gbe_tx_ring* %163)
  br label %165

165:                                              ; preds = %154, %60
  %166 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %7, align 8
  %167 = call i32 @kfree(%struct.pch_gbe_tx_ring* %166)
  br label %168

168:                                              ; preds = %165, %50
  %169 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %170 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i64 @netif_running(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %168
  %175 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %176 = call i32 @pch_gbe_up(%struct.pch_gbe_adapter* %175)
  br label %177

177:                                              ; preds = %174, %168
  %178 = load i32, i32* %13, align 4
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %177, %146, %25
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @pch_gbe_down(%struct.pch_gbe_adapter*) #1

declare dso_local %struct.pch_gbe_tx_ring* @kzalloc(i32, i32) #1

declare dso_local i8* @clamp_val(i32, i32, i32) #1

declare dso_local i8* @roundup(i8*, i32) #1

declare dso_local i32 @pch_gbe_setup_rx_resources(%struct.pch_gbe_adapter*, %struct.pch_gbe_tx_ring*) #1

declare dso_local i32 @pch_gbe_setup_tx_resources(%struct.pch_gbe_adapter*, %struct.pch_gbe_tx_ring*) #1

declare dso_local i32 @pch_gbe_free_rx_resources(%struct.pch_gbe_adapter*, %struct.pch_gbe_tx_ring*) #1

declare dso_local i32 @pch_gbe_free_tx_resources(%struct.pch_gbe_adapter*, %struct.pch_gbe_tx_ring*) #1

declare dso_local i32 @kfree(%struct.pch_gbe_tx_ring*) #1

declare dso_local i32 @pch_gbe_up(%struct.pch_gbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
