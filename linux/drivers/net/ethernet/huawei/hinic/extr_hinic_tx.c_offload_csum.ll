; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_tx.c_offload_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_tx.c_offload_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_sq_task = type { i32 }
%struct.sk_buff = type { i64, i64 }
%union.hinic_l3 = type { i8* }
%union.hinic_l4 = type { i32 }
%struct.TYPE_2__ = type { i32 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@IPV4_PKT_NO_CHKSUM_OFFLOAD = common dso_local global i32 0, align 4
@IPV6_PKT = common dso_local global i32 0, align 4
@L3TYPE_UNKNOWN = common dso_local global i32 0, align 4
@TUNNEL_UDP_NO_CSUM = common dso_local global i32 0, align 4
@TX_OFFLOAD_CSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_sq_task*, i64*, %struct.sk_buff*)* @offload_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @offload_csum(%struct.hinic_sq_task* %0, i64* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hinic_sq_task*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.hinic_l3, align 8
  %14 = alloca %union.hinic_l4, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.hinic_sq_task* %0, %struct.hinic_sq_task** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %100

23:                                               ; preds = %3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %73

28:                                               ; preds = %23
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = call i8* @skb_network_header(%struct.sk_buff* %29)
  %31 = bitcast %union.hinic_l3* %13 to i8**
  store i8* %30, i8** %31, align 8
  %32 = bitcast %union.hinic_l3* %13 to %struct.TYPE_2__**
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 4
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @IPV4_PKT_NO_CHKSUM_OFFLOAD, align 4
  store i32 %38, i32* %12, align 4
  br label %50

39:                                               ; preds = %28
  %40 = bitcast %union.hinic_l3* %13 to %struct.TYPE_2__**
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 6
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @IPV6_PKT, align 4
  store i32 %46, i32* %12, align 4
  br label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @L3TYPE_UNKNOWN, align 4
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %47, %45
  br label %50

50:                                               ; preds = %49, %37
  %51 = load %struct.hinic_sq_task*, %struct.hinic_sq_task** %5, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = call i64 @skb_network_header_len(%struct.sk_buff* %53)
  %55 = call i32 @hinic_task_set_outter_l3(%struct.hinic_sq_task* %51, i32 %52, i64 %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %57 = call i64 @skb_inner_network_offset(%struct.sk_buff* %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = call i64 @skb_transport_offset(%struct.sk_buff* %58)
  %60 = sub nsw i64 %57, %59
  store i64 %60, i64* %16, align 8
  %61 = load %struct.hinic_sq_task*, %struct.hinic_sq_task** %5, align 8
  %62 = load i32, i32* @TUNNEL_UDP_NO_CSUM, align 4
  %63 = load i64, i64* %16, align 8
  %64 = call i32 @hinic_task_set_tunnel_l4(%struct.hinic_sq_task* %61, i32 %62, i64 %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %66 = call i8* @skb_inner_network_header(%struct.sk_buff* %65)
  %67 = bitcast %union.hinic_l3* %13 to i8**
  store i8* %66, i8** %67, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = call i32 @skb_inner_transport_header(%struct.sk_buff* %68)
  %70 = bitcast %union.hinic_l4* %14 to i32*
  store i32 %69, i32* %70, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %72 = call i64 @skb_inner_network_header_len(%struct.sk_buff* %71)
  store i64 %72, i64* %11, align 8
  br label %82

73:                                               ; preds = %23
  %74 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %75 = call i8* @skb_network_header(%struct.sk_buff* %74)
  %76 = bitcast %union.hinic_l3* %13 to i8**
  store i8* %75, i8** %76, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = call i32 @skb_transport_header(%struct.sk_buff* %77)
  %79 = bitcast %union.hinic_l4* %14 to i32*
  store i32 %78, i32* %79, align 4
  %80 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %81 = call i64 @skb_network_header_len(%struct.sk_buff* %80)
  store i64 %81, i64* %11, align 8
  br label %82

82:                                               ; preds = %73, %50
  %83 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %84 = load i32, i32* @TX_OFFLOAD_CSUM, align 4
  %85 = call i32 @get_inner_l3_l4_type(%struct.sk_buff* %83, %union.hinic_l3* %13, %union.hinic_l4* %14, i32 %84, i32* %12, i32* %15)
  %86 = load %struct.hinic_sq_task*, %struct.hinic_sq_task** %5, align 8
  %87 = load i32, i32* %12, align 4
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @hinic_task_set_inner_l3(%struct.hinic_sq_task* %86, i32 %87, i64 %88)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %91 = load i32, i32* @TX_OFFLOAD_CSUM, align 4
  %92 = load i32, i32* %15, align 4
  %93 = call i32 @get_inner_l4_info(%struct.sk_buff* %90, %union.hinic_l4* %14, i32 %91, i32 %92, i32* %8, i64* %10, i64* %9)
  %94 = load %struct.hinic_sq_task*, %struct.hinic_sq_task** %5, align 8
  %95 = load i64*, i64** %6, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @hinic_set_cs_inner_l4(%struct.hinic_sq_task* %94, i64* %95, i32 %96, i64 %97, i64 %98)
  store i32 1, i32* %4, align 4
  br label %100

100:                                              ; preds = %82, %22
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i8* @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @hinic_task_set_outter_l3(%struct.hinic_sq_task*, i32, i64) #1

declare dso_local i64 @skb_network_header_len(%struct.sk_buff*) #1

declare dso_local i64 @skb_inner_network_offset(%struct.sk_buff*) #1

declare dso_local i64 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @hinic_task_set_tunnel_l4(%struct.hinic_sq_task*, i32, i64) #1

declare dso_local i8* @skb_inner_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_inner_transport_header(%struct.sk_buff*) #1

declare dso_local i64 @skb_inner_network_header_len(%struct.sk_buff*) #1

declare dso_local i32 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @get_inner_l3_l4_type(%struct.sk_buff*, %union.hinic_l3*, %union.hinic_l4*, i32, i32*, i32*) #1

declare dso_local i32 @hinic_task_set_inner_l3(%struct.hinic_sq_task*, i32, i64) #1

declare dso_local i32 @get_inner_l4_info(%struct.sk_buff*, %union.hinic_l4*, i32, i32, i32*, i64*, i64*) #1

declare dso_local i32 @hinic_set_cs_inner_l4(%struct.hinic_sq_task*, i64*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
