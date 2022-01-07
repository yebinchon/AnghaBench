; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_port_rx_proc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_port_rx_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker = type { i32 }
%struct.rocker_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.rocker_desc_info = type { i32 }
%struct.sk_buff = type { i32, i64, i32 }
%struct.rocker_tlv = type { i32 }

@ROCKER_TLV_RX_MAX = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ROCKER_TLV_RX_FRAG_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ROCKER_TLV_RX_FLAGS = common dso_local global i64 0, align 8
@ROCKER_RX_FLAGS_FWD_OFFLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker*, %struct.rocker_port*, %struct.rocker_desc_info*)* @rocker_port_rx_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_port_rx_proc(%struct.rocker* %0, %struct.rocker_port* %1, %struct.rocker_desc_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rocker*, align 8
  %6 = alloca %struct.rocker_port*, align 8
  %7 = alloca %struct.rocker_desc_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rocker* %0, %struct.rocker** %5, align 8
  store %struct.rocker_port* %1, %struct.rocker_port** %6, align 8
  store %struct.rocker_desc_info* %2, %struct.rocker_desc_info** %7, align 8
  %14 = load i32, i32* @ROCKER_TLV_RX_MAX, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca %struct.rocker_tlv*, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %7, align 8
  %20 = call %struct.sk_buff* @rocker_desc_cookie_ptr_get(%struct.rocker_desc_info* %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %10, align 8
  store i32 0, i32* %12, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %98

26:                                               ; preds = %3
  %27 = load i32, i32* @ROCKER_TLV_RX_MAX, align 4
  %28 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %7, align 8
  %29 = call i32 @rocker_tlv_parse_desc(%struct.rocker_tlv** %18, i32 %27, %struct.rocker_desc_info* %28)
  %30 = load i64, i64* @ROCKER_TLV_RX_FRAG_LEN, align 8
  %31 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %18, i64 %30
  %32 = load %struct.rocker_tlv*, %struct.rocker_tlv** %31, align 8
  %33 = icmp ne %struct.rocker_tlv* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %98

37:                                               ; preds = %26
  %38 = load i64, i64* @ROCKER_TLV_RX_FLAGS, align 8
  %39 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %18, i64 %38
  %40 = load %struct.rocker_tlv*, %struct.rocker_tlv** %39, align 8
  %41 = icmp ne %struct.rocker_tlv* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i64, i64* @ROCKER_TLV_RX_FLAGS, align 8
  %44 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %18, i64 %43
  %45 = load %struct.rocker_tlv*, %struct.rocker_tlv** %44, align 8
  %46 = call i8* @rocker_tlv_get_u16(%struct.rocker_tlv* %45)
  %47 = ptrtoint i8* %46 to i32
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %42, %37
  %49 = load %struct.rocker*, %struct.rocker** %5, align 8
  %50 = call i32 @rocker_dma_rx_ring_skb_unmap(%struct.rocker* %49, %struct.rocker_tlv** %18)
  %51 = load i64, i64* @ROCKER_TLV_RX_FRAG_LEN, align 8
  %52 = getelementptr inbounds %struct.rocker_tlv*, %struct.rocker_tlv** %18, i64 %51
  %53 = load %struct.rocker_tlv*, %struct.rocker_tlv** %52, align 8
  %54 = call i8* @rocker_tlv_get_u16(%struct.rocker_tlv* %53)
  %55 = ptrtoint i8* %54 to i64
  store i64 %55, i64* %11, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @skb_put(%struct.sk_buff* %56, i64 %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %60 = load %struct.rocker_port*, %struct.rocker_port** %6, align 8
  %61 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = call i32 @eth_type_trans(%struct.sk_buff* %59, %struct.TYPE_4__* %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @ROCKER_RX_FLAGS_FWD_OFFLOAD, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %48
  %71 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  br label %73

73:                                               ; preds = %70, %48
  %74 = load %struct.rocker_port*, %struct.rocker_port** %6, align 8
  %75 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.rocker_port*, %struct.rocker_port** %6, align 8
  %85 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %83
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 4
  %93 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %94 = call i32 @netif_receive_skb(%struct.sk_buff* %93)
  %95 = load %struct.rocker_port*, %struct.rocker_port** %6, align 8
  %96 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %7, align 8
  %97 = call i32 @rocker_dma_rx_ring_skb_alloc(%struct.rocker_port* %95, %struct.rocker_desc_info* %96)
  store i32 %97, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %98

98:                                               ; preds = %73, %34, %23
  %99 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.sk_buff* @rocker_desc_cookie_ptr_get(%struct.rocker_desc_info*) #2

declare dso_local i32 @rocker_tlv_parse_desc(%struct.rocker_tlv**, i32, %struct.rocker_desc_info*) #2

declare dso_local i8* @rocker_tlv_get_u16(%struct.rocker_tlv*) #2

declare dso_local i32 @rocker_dma_rx_ring_skb_unmap(%struct.rocker*, %struct.rocker_tlv**) #2

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #2

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_4__*) #2

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #2

declare dso_local i32 @rocker_dma_rx_ring_skb_alloc(%struct.rocker_port*, %struct.rocker_desc_info*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
