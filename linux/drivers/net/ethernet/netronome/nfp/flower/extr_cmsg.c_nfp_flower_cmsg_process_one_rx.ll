; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_cmsg.c_nfp_flower_cmsg_process_one_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_cmsg.c_nfp_flower_cmsg_process_one_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nfp_flower_cmsg_hdr = type { i32 }

@NFP_FL_FEATS_FLOW_MERGE = common dso_local global i32 0, align 4
@NFP_FL_FEATS_LAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Cannot handle invalid repr control type %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_app*, %struct.sk_buff*)* @nfp_flower_cmsg_process_one_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_flower_cmsg_process_one_rx(%struct.nfp_app* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nfp_app*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nfp_flower_priv*, align 8
  %6 = alloca %struct.nfp_flower_cmsg_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %10 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %9, i32 0, i32 0
  %11 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %10, align 8
  store %struct.nfp_flower_priv* %11, %struct.nfp_flower_priv** %5, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call %struct.nfp_flower_cmsg_hdr* @nfp_flower_cmsg_get_hdr(%struct.sk_buff* %12)
  store %struct.nfp_flower_cmsg_hdr* %13, %struct.nfp_flower_cmsg_hdr** %6, align 8
  %14 = load %struct.nfp_flower_cmsg_hdr*, %struct.nfp_flower_cmsg_hdr** %6, align 8
  %15 = getelementptr inbounds %struct.nfp_flower_cmsg_hdr, %struct.nfp_flower_cmsg_hdr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %58 [
    i32 129, label %18
    i32 131, label %22
    i32 130, label %34
    i32 133, label %38
    i32 128, label %42
    i32 132, label %46
  ]

18:                                               ; preds = %2
  %19 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @nfp_flower_cmsg_portmod_rx(%struct.nfp_app* %19, %struct.sk_buff* %20)
  br label %63

22:                                               ; preds = %2
  %23 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %5, align 8
  %24 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NFP_FL_FEATS_FLOW_MERGE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call i32 @nfp_flower_cmsg_merge_hint_rx(%struct.nfp_app* %30, %struct.sk_buff* %31)
  br label %63

33:                                               ; preds = %22
  br label %59

34:                                               ; preds = %2
  %35 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call i32 @nfp_tunnel_request_route(%struct.nfp_app* %35, %struct.sk_buff* %36)
  br label %63

38:                                               ; preds = %2
  %39 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call i32 @nfp_tunnel_keep_alive(%struct.nfp_app* %39, %struct.sk_buff* %40)
  br label %63

42:                                               ; preds = %2
  %43 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call i32 @nfp_flower_stats_rlim_reply(%struct.nfp_app* %43, %struct.sk_buff* %44)
  br label %63

46:                                               ; preds = %2
  %47 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %5, align 8
  %48 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NFP_FL_FEATS_LAG, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = call i32 @nfp_flower_lag_unprocessed_msg(%struct.nfp_app* %54, %struct.sk_buff* %55)
  store i32 %56, i32* %8, align 4
  br label %63

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %2, %57
  br label %59

59:                                               ; preds = %58, %33
  %60 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @nfp_flower_cmsg_warn(%struct.nfp_app* %60, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %70

63:                                               ; preds = %53, %42, %38, %34, %29, %18
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = call i32 @dev_consume_skb_any(%struct.sk_buff* %67)
  br label %69

69:                                               ; preds = %66, %63
  br label %73

70:                                               ; preds = %59
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %71)
  br label %73

73:                                               ; preds = %70, %69
  ret void
}

declare dso_local %struct.nfp_flower_cmsg_hdr* @nfp_flower_cmsg_get_hdr(%struct.sk_buff*) #1

declare dso_local i32 @nfp_flower_cmsg_portmod_rx(%struct.nfp_app*, %struct.sk_buff*) #1

declare dso_local i32 @nfp_flower_cmsg_merge_hint_rx(%struct.nfp_app*, %struct.sk_buff*) #1

declare dso_local i32 @nfp_tunnel_request_route(%struct.nfp_app*, %struct.sk_buff*) #1

declare dso_local i32 @nfp_tunnel_keep_alive(%struct.nfp_app*, %struct.sk_buff*) #1

declare dso_local i32 @nfp_flower_stats_rlim_reply(%struct.nfp_app*, %struct.sk_buff*) #1

declare dso_local i32 @nfp_flower_lag_unprocessed_msg(%struct.nfp_app*, %struct.sk_buff*) #1

declare dso_local i32 @nfp_flower_cmsg_warn(%struct.nfp_app*, i8*, i32) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
