; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_emad_construct_eth_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_emad_construct_eth_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@MLXSW_EMAD_ETH_HDR_LEN = common dso_local global i32 0, align 4
@MLXSW_EMAD_EH_DMAC = common dso_local global i32 0, align 4
@MLXSW_EMAD_EH_SMAC = common dso_local global i32 0, align 4
@MLXSW_EMAD_EH_ETHERTYPE = common dso_local global i32 0, align 4
@MLXSW_EMAD_EH_MLX_PROTO = common dso_local global i32 0, align 4
@MLXSW_EMAD_EH_PROTO_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @mlxsw_emad_construct_eth_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_emad_construct_eth_hdr(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %4 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %5 = load i32, i32* @MLXSW_EMAD_ETH_HDR_LEN, align 4
  %6 = call i8* @skb_push(%struct.sk_buff* %4, i32 %5)
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* @MLXSW_EMAD_EH_DMAC, align 4
  %9 = call i32 @mlxsw_emad_eth_hdr_dmac_memcpy_to(i8* %7, i32 %8)
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* @MLXSW_EMAD_EH_SMAC, align 4
  %12 = call i32 @mlxsw_emad_eth_hdr_smac_memcpy_to(i8* %10, i32 %11)
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* @MLXSW_EMAD_EH_ETHERTYPE, align 4
  %15 = call i32 @mlxsw_emad_eth_hdr_ethertype_set(i8* %13, i32 %14)
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* @MLXSW_EMAD_EH_MLX_PROTO, align 4
  %18 = call i32 @mlxsw_emad_eth_hdr_mlx_proto_set(i8* %16, i32 %17)
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* @MLXSW_EMAD_EH_PROTO_VERSION, align 4
  %21 = call i32 @mlxsw_emad_eth_hdr_ver_set(i8* %19, i32 %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %23 = call i32 @skb_reset_mac_header(%struct.sk_buff* %22)
  ret i32 0
}

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @mlxsw_emad_eth_hdr_dmac_memcpy_to(i8*, i32) #1

declare dso_local i32 @mlxsw_emad_eth_hdr_smac_memcpy_to(i8*, i32) #1

declare dso_local i32 @mlxsw_emad_eth_hdr_ethertype_set(i8*, i32) #1

declare dso_local i32 @mlxsw_emad_eth_hdr_mlx_proto_set(i8*, i32) #1

declare dso_local i32 @mlxsw_emad_eth_hdr_ver_set(i8*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
