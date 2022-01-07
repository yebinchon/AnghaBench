; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_tx.c_hinic_tx_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_tx.c_hinic_tx_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hinic_sq_task = type { i32 }

@TX_OFFLOAD_TSO = common dso_local global i32 0, align 4
@TX_OFFLOAD_CSUM = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4
@TX_OFFLOAD_VLAN = common dso_local global i32 0, align 4
@QUEUE_INFO_PLDOFF = common dso_local global i32 0, align 4
@MAX_PAYLOAD_OFFSET = common dso_local global i64 0, align 8
@QUEUE_INFO_MSS = common dso_local global i32 0, align 4
@HINIC_MSS_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.hinic_sq_task*, i32*)* @hinic_tx_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hinic_tx_offload(%struct.sk_buff* %0, %struct.hinic_sq_task* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.hinic_sq_task*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.hinic_sq_task* %1, %struct.hinic_sq_task** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.hinic_sq_task*, %struct.hinic_sq_task** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call i32 @offload_tso(%struct.hinic_sq_task* %11, i32* %12, %struct.sk_buff* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @TX_OFFLOAD_TSO, align 4
  %19 = load i32, i32* %8, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %8, align 4
  br label %40

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load %struct.hinic_sq_task*, %struct.hinic_sq_task** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = call i32 @offload_csum(%struct.hinic_sq_task* %25, i32* %26, %struct.sk_buff* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i32, i32* @TX_OFFLOAD_CSUM, align 4
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %31, %24
  br label %39

36:                                               ; preds = %21
  %37 = load i32, i32* @EPROTONOSUPPORT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %96

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39, %17
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call i32 @skb_vlan_tag_present(%struct.sk_buff* %41)
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %46)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.hinic_sq_task*, %struct.hinic_sq_task** %6, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @VLAN_PRIO_SHIFT, align 4
  %53 = ashr i32 %51, %52
  %54 = call i32 @offload_vlan(%struct.hinic_sq_task* %48, i32* %49, i32 %50, i32 %53)
  %55 = load i32, i32* @TX_OFFLOAD_VLAN, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %45, %40
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.hinic_sq_task*, %struct.hinic_sq_task** %6, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = call i32 @skb_network_offset(%struct.sk_buff* %63)
  %65 = call i32 @hinic_task_set_l2hdr(%struct.hinic_sq_task* %62, i32 %64)
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @QUEUE_INFO_PLDOFF, align 4
  %70 = call i64 @HINIC_SQ_CTRL_GET(i32 %68, i32 %69)
  %71 = load i64, i64* @MAX_PAYLOAD_OFFSET, align 8
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* @EPROTONOSUPPORT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %96

76:                                               ; preds = %66
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @QUEUE_INFO_MSS, align 4
  %80 = call i64 @HINIC_SQ_CTRL_GET(i32 %78, i32 %79)
  %81 = load i64, i64* @HINIC_MSS_MIN, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %76
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @QUEUE_INFO_MSS, align 4
  %87 = call i32 @HINIC_SQ_CTRL_CLEAR(i32 %85, i32 %86)
  %88 = load i32*, i32** %7, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i64, i64* @HINIC_MSS_MIN, align 8
  %90 = load i32, i32* @QUEUE_INFO_MSS, align 4
  %91 = call i32 @HINIC_SQ_CTRL_SET(i64 %89, i32 %90)
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %91
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %83, %76
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %73, %36
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @offload_tso(%struct.hinic_sq_task*, i32*, %struct.sk_buff*) #1

declare dso_local i32 @offload_csum(%struct.hinic_sq_task*, i32*, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @offload_vlan(%struct.hinic_sq_task*, i32*, i32, i32) #1

declare dso_local i32 @hinic_task_set_l2hdr(%struct.hinic_sq_task*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i64 @HINIC_SQ_CTRL_GET(i32, i32) #1

declare dso_local i32 @HINIC_SQ_CTRL_CLEAR(i32, i32) #1

declare dso_local i32 @HINIC_SQ_CTRL_SET(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
