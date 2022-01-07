; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_cmsg.c_nfp_flower_queue_ctl_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_cmsg.c_nfp_flower_queue_ctl_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { i32, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }

@NFP_FLOWER_CMSG_TYPE_PORT_MOD = common dso_local global i32 0, align 4
@NFP_FLOWER_WORKQ_MAX_SKBS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Dropping queued control messages\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_app*, %struct.sk_buff*, i32)* @nfp_flower_queue_ctl_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_flower_queue_ctl_msg(%struct.nfp_app* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.nfp_app*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfp_flower_priv*, align 8
  %8 = alloca %struct.sk_buff_head*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %10 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %9, i32 0, i32 0
  %11 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %10, align 8
  store %struct.nfp_flower_priv* %11, %struct.nfp_flower_priv** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @NFP_FLOWER_CMSG_TYPE_PORT_MOD, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %7, align 8
  %17 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %16, i32 0, i32 2
  store %struct.sk_buff_head* %17, %struct.sk_buff_head** %8, align 8
  br label %21

18:                                               ; preds = %3
  %19 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %7, align 8
  %20 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %19, i32 0, i32 1
  store %struct.sk_buff_head* %20, %struct.sk_buff_head** %8, align 8
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %23 = call i64 @skb_queue_len(%struct.sk_buff_head* %22)
  %24 = load i64, i64* @NFP_FLOWER_WORKQ_MAX_SKBS, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %28 = call i32 @nfp_flower_cmsg_warn(%struct.nfp_app* %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %29)
  br label %38

31:                                               ; preds = %21
  %32 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = call i32 @skb_queue_tail(%struct.sk_buff_head* %32, %struct.sk_buff* %33)
  %35 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %7, align 8
  %36 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %35, i32 0, i32 0
  %37 = call i32 @schedule_work(i32* %36)
  br label %38

38:                                               ; preds = %31, %26
  ret void
}

declare dso_local i64 @skb_queue_len(%struct.sk_buff_head*) #1

declare dso_local i32 @nfp_flower_cmsg_warn(%struct.nfp_app*, i8*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
