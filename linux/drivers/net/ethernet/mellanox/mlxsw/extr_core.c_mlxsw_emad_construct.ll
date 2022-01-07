; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_emad_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_emad_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.mlxsw_reg_info = type { i32 }

@MLXSW_EMAD_END_TLV_LEN = common dso_local global i32 0, align 4
@MLXSW_EMAD_OP_TLV_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.mlxsw_reg_info*, i8*, i32, i32)* @mlxsw_emad_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_emad_construct(%struct.sk_buff* %0, %struct.mlxsw_reg_info* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.mlxsw_reg_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.mlxsw_reg_info* %1, %struct.mlxsw_reg_info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = load i32, i32* @MLXSW_EMAD_END_TLV_LEN, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = call i8* @skb_push(%struct.sk_buff* %12, i32 %16)
  store i8* %17, i8** %11, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = call i32 @mlxsw_emad_pack_end_tlv(i8* %18)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = load %struct.mlxsw_reg_info*, %struct.mlxsw_reg_info** %7, align 8
  %22 = getelementptr inbounds %struct.mlxsw_reg_info, %struct.mlxsw_reg_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = call i8* @skb_push(%struct.sk_buff* %20, i32 %26)
  store i8* %27, i8** %11, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load %struct.mlxsw_reg_info*, %struct.mlxsw_reg_info** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @mlxsw_emad_pack_reg_tlv(i8* %28, %struct.mlxsw_reg_info* %29, i8* %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = load i32, i32* @MLXSW_EMAD_OP_TLV_LEN, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i8* @skb_push(%struct.sk_buff* %32, i32 %36)
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load %struct.mlxsw_reg_info*, %struct.mlxsw_reg_info** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @mlxsw_emad_pack_op_tlv(i8* %38, %struct.mlxsw_reg_info* %39, i32 %40, i32 %41)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = call i32 @mlxsw_emad_construct_eth_hdr(%struct.sk_buff* %43)
  ret void
}

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @mlxsw_emad_pack_end_tlv(i8*) #1

declare dso_local i32 @mlxsw_emad_pack_reg_tlv(i8*, %struct.mlxsw_reg_info*, i8*) #1

declare dso_local i32 @mlxsw_emad_pack_op_tlv(i8*, %struct.mlxsw_reg_info*, i32, i32) #1

declare dso_local i32 @mlxsw_emad_construct_eth_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
