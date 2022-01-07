; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_txhdr_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_txhdr_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.mlxsw_tx_info = type { i32, i32 }

@MLXSW_TXHDR_LEN = common dso_local global i32 0, align 4
@MLXSW_TXHDR_VERSION_0 = common dso_local global i32 0, align 4
@MLXSW_TXHDR_ETH_CTL = common dso_local global i32 0, align 4
@MLXSW_TXHDR_PROTO_ETH = common dso_local global i32 0, align 4
@MLXSW_TXHDR_ETCLASS_6 = common dso_local global i32 0, align 4
@MLXSW_TXHDR_ETCLASS_5 = common dso_local global i32 0, align 4
@MLXSW_TXHDR_CTCLASS3 = common dso_local global i32 0, align 4
@MLXSW_TXHDR_RDQ_EMAD = common dso_local global i32 0, align 4
@MLXSW_TXHDR_RDQ_OTHER = common dso_local global i32 0, align 4
@MLXSW_TXHDR_CPU_SIG = common dso_local global i32 0, align 4
@MLXSW_TXHDR_SIG = common dso_local global i32 0, align 4
@MLXSW_TXHDR_STCLASS_NONE = common dso_local global i32 0, align 4
@MLXSW_TXHDR_EMAD = common dso_local global i32 0, align 4
@MLXSW_TXHDR_NOT_EMAD = common dso_local global i32 0, align 4
@MLXSW_TXHDR_TYPE_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.mlxsw_tx_info*)* @mlxsw_sx_txhdr_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sx_txhdr_construct(%struct.sk_buff* %0, %struct.mlxsw_tx_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.mlxsw_tx_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.mlxsw_tx_info* %1, %struct.mlxsw_tx_info** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = load i32, i32* @MLXSW_TXHDR_LEN, align 4
  %9 = call i8* @skb_push(%struct.sk_buff* %7, i32 %8)
  store i8* %9, i8** %5, align 8
  %10 = load %struct.mlxsw_tx_info*, %struct.mlxsw_tx_info** %4, align 8
  %11 = getelementptr inbounds %struct.mlxsw_tx_info, %struct.mlxsw_tx_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* @MLXSW_TXHDR_LEN, align 4
  %15 = call i32 @memset(i8* %13, i32 0, i32 %14)
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* @MLXSW_TXHDR_VERSION_0, align 4
  %18 = call i32 @mlxsw_tx_hdr_version_set(i8* %16, i32 %17)
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* @MLXSW_TXHDR_ETH_CTL, align 4
  %21 = call i32 @mlxsw_tx_hdr_ctl_set(i8* %19, i32 %20)
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* @MLXSW_TXHDR_PROTO_ETH, align 4
  %24 = call i32 @mlxsw_tx_hdr_proto_set(i8* %22, i32 %23)
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @MLXSW_TXHDR_ETCLASS_6, align 4
  br label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @MLXSW_TXHDR_ETCLASS_5, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = call i32 @mlxsw_tx_hdr_etclass_set(i8* %25, i32 %33)
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @mlxsw_tx_hdr_swid_set(i8* %35, i32 0)
  %37 = load i8*, i8** %5, align 8
  %38 = load %struct.mlxsw_tx_info*, %struct.mlxsw_tx_info** %4, align 8
  %39 = getelementptr inbounds %struct.mlxsw_tx_info, %struct.mlxsw_tx_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mlxsw_tx_hdr_port_mid_set(i8* %37, i32 %40)
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* @MLXSW_TXHDR_CTCLASS3, align 4
  %44 = call i32 @mlxsw_tx_hdr_ctclass3_set(i8* %42, i32 %43)
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %32
  %49 = load i32, i32* @MLXSW_TXHDR_RDQ_EMAD, align 4
  br label %52

50:                                               ; preds = %32
  %51 = load i32, i32* @MLXSW_TXHDR_RDQ_OTHER, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = call i32 @mlxsw_tx_hdr_rdq_set(i8* %45, i32 %53)
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* @MLXSW_TXHDR_CPU_SIG, align 4
  %57 = call i32 @mlxsw_tx_hdr_cpu_sig_set(i8* %55, i32 %56)
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* @MLXSW_TXHDR_SIG, align 4
  %60 = call i32 @mlxsw_tx_hdr_sig_set(i8* %58, i32 %59)
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* @MLXSW_TXHDR_STCLASS_NONE, align 4
  %63 = call i32 @mlxsw_tx_hdr_stclass_set(i8* %61, i32 %62)
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %52
  %68 = load i32, i32* @MLXSW_TXHDR_EMAD, align 4
  br label %71

69:                                               ; preds = %52
  %70 = load i32, i32* @MLXSW_TXHDR_NOT_EMAD, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = call i32 @mlxsw_tx_hdr_emad_set(i8* %64, i32 %72)
  %74 = load i8*, i8** %5, align 8
  %75 = load i32, i32* @MLXSW_TXHDR_TYPE_CONTROL, align 4
  %76 = call i32 @mlxsw_tx_hdr_type_set(i8* %74, i32 %75)
  ret void
}

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mlxsw_tx_hdr_version_set(i8*, i32) #1

declare dso_local i32 @mlxsw_tx_hdr_ctl_set(i8*, i32) #1

declare dso_local i32 @mlxsw_tx_hdr_proto_set(i8*, i32) #1

declare dso_local i32 @mlxsw_tx_hdr_etclass_set(i8*, i32) #1

declare dso_local i32 @mlxsw_tx_hdr_swid_set(i8*, i32) #1

declare dso_local i32 @mlxsw_tx_hdr_port_mid_set(i8*, i32) #1

declare dso_local i32 @mlxsw_tx_hdr_ctclass3_set(i8*, i32) #1

declare dso_local i32 @mlxsw_tx_hdr_rdq_set(i8*, i32) #1

declare dso_local i32 @mlxsw_tx_hdr_cpu_sig_set(i8*, i32) #1

declare dso_local i32 @mlxsw_tx_hdr_sig_set(i8*, i32) #1

declare dso_local i32 @mlxsw_tx_hdr_stclass_set(i8*, i32) #1

declare dso_local i32 @mlxsw_tx_hdr_emad_set(i8*, i32) #1

declare dso_local i32 @mlxsw_tx_hdr_type_set(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
