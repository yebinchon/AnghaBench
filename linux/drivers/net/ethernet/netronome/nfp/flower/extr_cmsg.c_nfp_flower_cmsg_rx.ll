; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_cmsg.c_nfp_flower_cmsg_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_cmsg.c_nfp_flower_cmsg_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nfp_flower_cmsg_hdr = type { i64, i64 }

@NFP_FLOWER_CMSG_VER1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Cannot handle repr control version %u\0A\00", align 1
@NFP_FLOWER_CMSG_TYPE_FLOW_STATS = common dso_local global i64 0, align 8
@NFP_FLOWER_CMSG_TYPE_PORT_MOD = common dso_local global i64 0, align 8
@NFP_FLOWER_CMSG_TYPE_TUN_NEIGH = common dso_local global i64 0, align 8
@NFP_FLOWER_CMSG_TYPE_PORT_REIFY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfp_flower_cmsg_rx(%struct.nfp_app* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nfp_app*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nfp_flower_cmsg_hdr*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = call %struct.nfp_flower_cmsg_hdr* @nfp_flower_cmsg_get_hdr(%struct.sk_buff* %6)
  store %struct.nfp_flower_cmsg_hdr* %7, %struct.nfp_flower_cmsg_hdr** %5, align 8
  %8 = load %struct.nfp_flower_cmsg_hdr*, %struct.nfp_flower_cmsg_hdr** %5, align 8
  %9 = getelementptr inbounds %struct.nfp_flower_cmsg_hdr, %struct.nfp_flower_cmsg_hdr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NFP_FLOWER_CMSG_VER1, align 8
  %12 = icmp ne i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %18 = load %struct.nfp_flower_cmsg_hdr*, %struct.nfp_flower_cmsg_hdr** %5, align 8
  %19 = getelementptr inbounds %struct.nfp_flower_cmsg_hdr, %struct.nfp_flower_cmsg_hdr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @nfp_flower_cmsg_warn(%struct.nfp_app* %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %22)
  br label %81

24:                                               ; preds = %2
  %25 = load %struct.nfp_flower_cmsg_hdr*, %struct.nfp_flower_cmsg_hdr** %5, align 8
  %26 = getelementptr inbounds %struct.nfp_flower_cmsg_hdr, %struct.nfp_flower_cmsg_hdr* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NFP_FLOWER_CMSG_TYPE_FLOW_STATS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i32 @nfp_flower_rx_flow_stats(%struct.nfp_app* %31, %struct.sk_buff* %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = call i32 @dev_consume_skb_any(%struct.sk_buff* %34)
  br label %81

36:                                               ; preds = %24
  %37 = load %struct.nfp_flower_cmsg_hdr*, %struct.nfp_flower_cmsg_hdr** %5, align 8
  %38 = getelementptr inbounds %struct.nfp_flower_cmsg_hdr, %struct.nfp_flower_cmsg_hdr* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NFP_FLOWER_CMSG_TYPE_PORT_MOD, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call i64 @nfp_flower_process_mtu_ack(%struct.nfp_app* %43, %struct.sk_buff* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = call i32 @dev_consume_skb_any(%struct.sk_buff* %48)
  br label %80

50:                                               ; preds = %42, %36
  %51 = load %struct.nfp_flower_cmsg_hdr*, %struct.nfp_flower_cmsg_hdr** %5, align 8
  %52 = getelementptr inbounds %struct.nfp_flower_cmsg_hdr, %struct.nfp_flower_cmsg_hdr* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @NFP_FLOWER_CMSG_TYPE_TUN_NEIGH, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = call i32 @dev_consume_skb_any(%struct.sk_buff* %57)
  br label %79

59:                                               ; preds = %50
  %60 = load %struct.nfp_flower_cmsg_hdr*, %struct.nfp_flower_cmsg_hdr** %5, align 8
  %61 = getelementptr inbounds %struct.nfp_flower_cmsg_hdr, %struct.nfp_flower_cmsg_hdr* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @NFP_FLOWER_CMSG_TYPE_PORT_REIFY, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = call i32 @nfp_flower_cmsg_portreify_rx(%struct.nfp_app* %66, %struct.sk_buff* %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = call i32 @dev_consume_skb_any(%struct.sk_buff* %69)
  br label %78

71:                                               ; preds = %59
  %72 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = load %struct.nfp_flower_cmsg_hdr*, %struct.nfp_flower_cmsg_hdr** %5, align 8
  %75 = getelementptr inbounds %struct.nfp_flower_cmsg_hdr, %struct.nfp_flower_cmsg_hdr* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @nfp_flower_queue_ctl_msg(%struct.nfp_app* %72, %struct.sk_buff* %73, i64 %76)
  br label %78

78:                                               ; preds = %71, %65
  br label %79

79:                                               ; preds = %78, %56
  br label %80

80:                                               ; preds = %79, %47
  br label %81

81:                                               ; preds = %16, %80, %30
  ret void
}

declare dso_local %struct.nfp_flower_cmsg_hdr* @nfp_flower_cmsg_get_hdr(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nfp_flower_cmsg_warn(%struct.nfp_app*, i8*, i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @nfp_flower_rx_flow_stats(%struct.nfp_app*, %struct.sk_buff*) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @nfp_flower_process_mtu_ack(%struct.nfp_app*, %struct.sk_buff*) #1

declare dso_local i32 @nfp_flower_cmsg_portreify_rx(%struct.nfp_app*, %struct.sk_buff*) #1

declare dso_local i32 @nfp_flower_queue_ctl_msg(%struct.nfp_app*, %struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
