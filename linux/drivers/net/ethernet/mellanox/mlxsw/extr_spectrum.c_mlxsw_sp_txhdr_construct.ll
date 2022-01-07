; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_txhdr_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_txhdr_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.mlxsw_tx_info = type { i32 }

@MLXSW_TXHDR_LEN = common dso_local global i32 0, align 4
@MLXSW_TXHDR_VERSION_1 = common dso_local global i32 0, align 4
@MLXSW_TXHDR_ETH_CTL = common dso_local global i32 0, align 4
@MLXSW_TXHDR_PROTO_ETH = common dso_local global i32 0, align 4
@MLXSW_TXHDR_TYPE_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.mlxsw_tx_info*)* @mlxsw_sp_txhdr_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_txhdr_construct(%struct.sk_buff* %0, %struct.mlxsw_tx_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.mlxsw_tx_info*, align 8
  %5 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.mlxsw_tx_info* %1, %struct.mlxsw_tx_info** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = load i32, i32* @MLXSW_TXHDR_LEN, align 4
  %8 = call i8* @skb_push(%struct.sk_buff* %6, i32 %7)
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* @MLXSW_TXHDR_LEN, align 4
  %11 = call i32 @memset(i8* %9, i32 0, i32 %10)
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @MLXSW_TXHDR_VERSION_1, align 4
  %14 = call i32 @mlxsw_tx_hdr_version_set(i8* %12, i32 %13)
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @MLXSW_TXHDR_ETH_CTL, align 4
  %17 = call i32 @mlxsw_tx_hdr_ctl_set(i8* %15, i32 %16)
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @MLXSW_TXHDR_PROTO_ETH, align 4
  %20 = call i32 @mlxsw_tx_hdr_proto_set(i8* %18, i32 %19)
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @mlxsw_tx_hdr_swid_set(i8* %21, i32 0)
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @mlxsw_tx_hdr_control_tclass_set(i8* %23, i32 1)
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.mlxsw_tx_info*, %struct.mlxsw_tx_info** %4, align 8
  %27 = getelementptr inbounds %struct.mlxsw_tx_info, %struct.mlxsw_tx_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mlxsw_tx_hdr_port_mid_set(i8* %25, i32 %28)
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @MLXSW_TXHDR_TYPE_CONTROL, align 4
  %32 = call i32 @mlxsw_tx_hdr_type_set(i8* %30, i32 %31)
  ret void
}

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mlxsw_tx_hdr_version_set(i8*, i32) #1

declare dso_local i32 @mlxsw_tx_hdr_ctl_set(i8*, i32) #1

declare dso_local i32 @mlxsw_tx_hdr_proto_set(i8*, i32) #1

declare dso_local i32 @mlxsw_tx_hdr_swid_set(i8*, i32) #1

declare dso_local i32 @mlxsw_tx_hdr_control_tclass_set(i8*, i32) #1

declare dso_local i32 @mlxsw_tx_hdr_port_mid_set(i8*, i32) #1

declare dso_local i32 @mlxsw_tx_hdr_type_set(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
