; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_tdls.c_mwifiex_tdls_add_oper_class.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_tdls.c_mwifiex_tdls_add_oper_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ieee_types_generic = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@__const.mwifiex_tdls_add_oper_class.rc_list = private unnamed_addr constant [16 x i32] [i32 1, i32 1, i32 2, i32 3, i32 4, i32 12, i32 22, i32 23, i32 24, i32 25, i32 27, i32 28, i32 29, i32 30, i32 32, i32 33], align 16
@WLAN_EID_SUPPORTED_REGULATORY_CLASSES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @mwifiex_tdls_add_oper_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_tdls_add_oper_class(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.ieee_types_generic*, align 8
  %4 = alloca [16 x i32], align 16
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %5 = bitcast [16 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([16 x i32]* @__const.mwifiex_tdls_add_oper_class.rc_list to i8*), i64 64, i1 false)
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = call %struct.ieee_types_generic* @skb_put(%struct.sk_buff* %6, i32 68)
  store %struct.ieee_types_generic* %7, %struct.ieee_types_generic** %3, align 8
  %8 = load i32, i32* @WLAN_EID_SUPPORTED_REGULATORY_CLASSES, align 4
  %9 = load %struct.ieee_types_generic*, %struct.ieee_types_generic** %3, align 8
  %10 = getelementptr inbounds %struct.ieee_types_generic, %struct.ieee_types_generic* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i32 %8, i32* %11, align 4
  %12 = load %struct.ieee_types_generic*, %struct.ieee_types_generic** %3, align 8
  %13 = getelementptr inbounds %struct.ieee_types_generic, %struct.ieee_types_generic* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 64, i32* %14, align 4
  %15 = load %struct.ieee_types_generic*, %struct.ieee_types_generic** %3, align 8
  %16 = getelementptr inbounds %struct.ieee_types_generic, %struct.ieee_types_generic* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %19 = call i32 @memcpy(i32 %17, i32* %18, i32 64)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.ieee_types_generic* @skb_put(%struct.sk_buff*, i32) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
