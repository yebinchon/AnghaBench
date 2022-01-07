; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_core_event_listener_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_core_event_listener_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.mlxsw_event_listener_item = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.mlxsw_reg_info*, i8*, i32)* }
%struct.mlxsw_reg_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32, i8*)* @mlxsw_core_event_listener_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_core_event_listener_func(%struct.sk_buff* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mlxsw_event_listener_item*, align 8
  %8 = alloca %struct.mlxsw_reg_info, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.mlxsw_event_listener_item*
  store %struct.mlxsw_event_listener_item* %13, %struct.mlxsw_event_listener_item** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i8* @mlxsw_emad_op_tlv(%struct.sk_buff* %14)
  store i8* %15, i8** %10, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call i8* @mlxsw_emad_reg_tlv(%struct.sk_buff* %16)
  store i8* %17, i8** %11, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = call i32 @mlxsw_emad_op_tlv_register_id_get(i8* %18)
  %20 = getelementptr inbounds %struct.mlxsw_reg_info, %struct.mlxsw_reg_info* %8, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i8*, i8** %11, align 8
  %22 = call i32 @mlxsw_emad_reg_tlv_len_get(i8* %21)
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %struct.mlxsw_reg_info, %struct.mlxsw_reg_info* %8, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = call i8* @mlxsw_emad_reg_payload(i8* %28)
  store i8* %29, i8** %9, align 8
  %30 = load %struct.mlxsw_event_listener_item*, %struct.mlxsw_event_listener_item** %7, align 8
  %31 = getelementptr inbounds %struct.mlxsw_event_listener_item, %struct.mlxsw_event_listener_item* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.mlxsw_reg_info*, i8*, i32)*, i32 (%struct.mlxsw_reg_info*, i8*, i32)** %32, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load %struct.mlxsw_event_listener_item*, %struct.mlxsw_event_listener_item** %7, align 8
  %36 = getelementptr inbounds %struct.mlxsw_event_listener_item, %struct.mlxsw_event_listener_item* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 %33(%struct.mlxsw_reg_info* %8, i8* %34, i32 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = call i32 @dev_kfree_skb(%struct.sk_buff* %39)
  ret void
}

declare dso_local i8* @mlxsw_emad_op_tlv(%struct.sk_buff*) #1

declare dso_local i8* @mlxsw_emad_reg_tlv(%struct.sk_buff*) #1

declare dso_local i32 @mlxsw_emad_op_tlv_register_id_get(i8*) #1

declare dso_local i32 @mlxsw_emad_reg_tlv_len_get(i8*) #1

declare dso_local i8* @mlxsw_emad_reg_payload(i8*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
