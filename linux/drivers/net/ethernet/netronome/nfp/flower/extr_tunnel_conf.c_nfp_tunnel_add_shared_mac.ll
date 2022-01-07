; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_tunnel_conf.c_nfp_tunnel_add_shared_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_tunnel_conf.c_nfp_tunnel_add_shared_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.nfp_tun_offloaded_mac = type { i32, i32, i32, i32, i32, i64 }

@NFP_MAX_MAC_INDEX = common dso_local global i32 0, align 4
@NFP_TUN_PRE_TUN_IDX_BIT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@offloaded_macs_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.net_device*, i32, i32)* @nfp_tunnel_add_shared_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_tunnel_add_shared_mac(%struct.nfp_app* %0, %struct.net_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_app*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfp_flower_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nfp_tun_offloaded_mac*, align 8
  %14 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %16 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %15, i32 0, i32 0
  %17 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %16, align 8
  store %struct.nfp_flower_priv* %17, %struct.nfp_flower_priv** %10, align 8
  %18 = load i32, i32* @NFP_MAX_MAC_INDEX, align 4
  store i32 %18, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %19 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %20 = load %struct.net_device*, %struct.net_device** %7, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.nfp_tun_offloaded_mac* @nfp_tunnel_lookup_offloaded_macs(%struct.nfp_app* %19, i32 %22)
  store %struct.nfp_tun_offloaded_mac* %23, %struct.nfp_tun_offloaded_mac** %13, align 8
  %24 = load %struct.nfp_tun_offloaded_mac*, %struct.nfp_tun_offloaded_mac** %13, align 8
  %25 = icmp ne %struct.nfp_tun_offloaded_mac* %24, null
  br i1 %25, label %26, label %52

26:                                               ; preds = %4
  %27 = load %struct.nfp_tun_offloaded_mac*, %struct.nfp_tun_offloaded_mac** %13, align 8
  %28 = getelementptr inbounds %struct.nfp_tun_offloaded_mac, %struct.nfp_tun_offloaded_mac* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @nfp_tunnel_is_mac_idx_global(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %26
  %33 = load %struct.nfp_tun_offloaded_mac*, %struct.nfp_tun_offloaded_mac** %13, align 8
  %34 = getelementptr inbounds %struct.nfp_tun_offloaded_mac, %struct.nfp_tun_offloaded_mac* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load %struct.net_device*, %struct.net_device** %7, align 8
  %39 = call i64 @nfp_flower_is_supported_bridge(%struct.net_device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37, %32
  %42 = load %struct.nfp_tun_offloaded_mac*, %struct.nfp_tun_offloaded_mac** %13, align 8
  %43 = load %struct.net_device*, %struct.net_device** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @nfp_tunnel_offloaded_macs_inc_ref_and_link(%struct.nfp_tun_offloaded_mac* %42, %struct.net_device* %43, i32 %44)
  store i32 0, i32* %5, align 4
  br label %168

46:                                               ; preds = %37
  %47 = load %struct.nfp_tun_offloaded_mac*, %struct.nfp_tun_offloaded_mac** %13, align 8
  %48 = getelementptr inbounds %struct.nfp_tun_offloaded_mac, %struct.nfp_tun_offloaded_mac* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @NFP_TUN_PRE_TUN_IDX_BIT, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %14, align 4
  br label %52

52:                                               ; preds = %46, %26, %4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %87, label %55

55:                                               ; preds = %52
  %56 = load %struct.nfp_tun_offloaded_mac*, %struct.nfp_tun_offloaded_mac** %13, align 8
  %57 = icmp ne %struct.nfp_tun_offloaded_mac* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %83, label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %10, align 8
  %63 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* @NFP_MAX_MAC_INDEX, align 4
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i32 @ida_simple_get(i32* %64, i32 0, i32 %65, i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %5, align 4
  br label %168

72:                                               ; preds = %61
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @nfp_tunnel_get_global_mac_idx_from_ida(i32 %73)
  store i32 %74, i32* %14, align 4
  %75 = load %struct.net_device*, %struct.net_device** %7, align 8
  %76 = call i64 @nfp_flower_is_supported_bridge(%struct.net_device* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i32, i32* @NFP_TUN_PRE_TUN_IDX_BIT, align 4
  %80 = load i32, i32* %14, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %14, align 4
  br label %82

82:                                               ; preds = %78, %72
  br label %86

83:                                               ; preds = %58
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @nfp_tunnel_get_mac_idx_from_phy_port_id(i32 %84)
  store i32 %85, i32* %14, align 4
  br label %86

86:                                               ; preds = %83, %82
  br label %87

87:                                               ; preds = %86, %52
  %88 = load %struct.nfp_tun_offloaded_mac*, %struct.nfp_tun_offloaded_mac** %13, align 8
  %89 = icmp ne %struct.nfp_tun_offloaded_mac* %88, null
  br i1 %89, label %121, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call %struct.nfp_tun_offloaded_mac* @kzalloc(i32 32, i32 %91)
  store %struct.nfp_tun_offloaded_mac* %92, %struct.nfp_tun_offloaded_mac** %13, align 8
  %93 = load %struct.nfp_tun_offloaded_mac*, %struct.nfp_tun_offloaded_mac** %13, align 8
  %94 = icmp ne %struct.nfp_tun_offloaded_mac* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %12, align 4
  br label %156

98:                                               ; preds = %90
  %99 = load %struct.nfp_tun_offloaded_mac*, %struct.nfp_tun_offloaded_mac** %13, align 8
  %100 = getelementptr inbounds %struct.nfp_tun_offloaded_mac, %struct.nfp_tun_offloaded_mac* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.net_device*, %struct.net_device** %7, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ether_addr_copy(i32 %101, i32 %104)
  %106 = load %struct.nfp_tun_offloaded_mac*, %struct.nfp_tun_offloaded_mac** %13, align 8
  %107 = getelementptr inbounds %struct.nfp_tun_offloaded_mac, %struct.nfp_tun_offloaded_mac* %106, i32 0, i32 3
  %108 = call i32 @INIT_LIST_HEAD(i32* %107)
  %109 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %10, align 8
  %110 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load %struct.nfp_tun_offloaded_mac*, %struct.nfp_tun_offloaded_mac** %13, align 8
  %113 = getelementptr inbounds %struct.nfp_tun_offloaded_mac, %struct.nfp_tun_offloaded_mac* %112, i32 0, i32 1
  %114 = load i32, i32* @offloaded_macs_params, align 4
  %115 = call i64 @rhashtable_insert_fast(i32* %111, i32* %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %98
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %12, align 4
  br label %153

120:                                              ; preds = %98
  br label %121

121:                                              ; preds = %120, %87
  %122 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %123 = load %struct.net_device*, %struct.net_device** %7, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %14, align 4
  %127 = call i32 @__nfp_tunnel_offload_mac(%struct.nfp_app* %122, i32 %125, i32 %126, i32 0)
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %121
  %131 = load %struct.nfp_tun_offloaded_mac*, %struct.nfp_tun_offloaded_mac** %13, align 8
  %132 = getelementptr inbounds %struct.nfp_tun_offloaded_mac, %struct.nfp_tun_offloaded_mac* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %130
  br label %145

136:                                              ; preds = %130
  br label %156

137:                                              ; preds = %121
  %138 = load i32, i32* %14, align 4
  %139 = load %struct.nfp_tun_offloaded_mac*, %struct.nfp_tun_offloaded_mac** %13, align 8
  %140 = getelementptr inbounds %struct.nfp_tun_offloaded_mac, %struct.nfp_tun_offloaded_mac* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load %struct.nfp_tun_offloaded_mac*, %struct.nfp_tun_offloaded_mac** %13, align 8
  %142 = load %struct.net_device*, %struct.net_device** %7, align 8
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @nfp_tunnel_offloaded_macs_inc_ref_and_link(%struct.nfp_tun_offloaded_mac* %141, %struct.net_device* %142, i32 %143)
  store i32 0, i32* %5, align 4
  br label %168

145:                                              ; preds = %135
  %146 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %10, align 8
  %147 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  %149 = load %struct.nfp_tun_offloaded_mac*, %struct.nfp_tun_offloaded_mac** %13, align 8
  %150 = getelementptr inbounds %struct.nfp_tun_offloaded_mac, %struct.nfp_tun_offloaded_mac* %149, i32 0, i32 1
  %151 = load i32, i32* @offloaded_macs_params, align 4
  %152 = call i32 @rhashtable_remove_fast(i32* %148, i32* %150, i32 %151)
  br label %153

153:                                              ; preds = %145, %117
  %154 = load %struct.nfp_tun_offloaded_mac*, %struct.nfp_tun_offloaded_mac** %13, align 8
  %155 = call i32 @kfree(%struct.nfp_tun_offloaded_mac* %154)
  br label %156

156:                                              ; preds = %153, %136, %95
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* @NFP_MAX_MAC_INDEX, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %156
  %161 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %10, align 8
  %162 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @ida_simple_remove(i32* %163, i32 %164)
  br label %166

166:                                              ; preds = %160, %156
  %167 = load i32, i32* %12, align 4
  store i32 %167, i32* %5, align 4
  br label %168

168:                                              ; preds = %166, %137, %70, %41
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local %struct.nfp_tun_offloaded_mac* @nfp_tunnel_lookup_offloaded_macs(%struct.nfp_app*, i32) #1

declare dso_local i64 @nfp_tunnel_is_mac_idx_global(i32) #1

declare dso_local i64 @nfp_flower_is_supported_bridge(%struct.net_device*) #1

declare dso_local i32 @nfp_tunnel_offloaded_macs_inc_ref_and_link(%struct.nfp_tun_offloaded_mac*, %struct.net_device*, i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @nfp_tunnel_get_global_mac_idx_from_ida(i32) #1

declare dso_local i32 @nfp_tunnel_get_mac_idx_from_phy_port_id(i32) #1

declare dso_local %struct.nfp_tun_offloaded_mac* @kzalloc(i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @rhashtable_insert_fast(i32*, i32*, i32) #1

declare dso_local i32 @__nfp_tunnel_offload_mac(%struct.nfp_app*, i32, i32, i32) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.nfp_tun_offloaded_mac*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
