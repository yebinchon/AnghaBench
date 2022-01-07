; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_htc_rxctrl_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_htc_rxctrl_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32 }
%struct.htc_packet = type { i64, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@ENDPOINT_0 = common dso_local global i64 0, align 8
@ECANCELED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htc_target*, %struct.htc_packet*)* @htc_rxctrl_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htc_rxctrl_complete(%struct.htc_target* %0, %struct.htc_packet* %1) #0 {
  %3 = alloca %struct.htc_target*, align 8
  %4 = alloca %struct.htc_packet*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.htc_target* %0, %struct.htc_target** %3, align 8
  store %struct.htc_packet* %1, %struct.htc_packet** %4, align 8
  %6 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %7 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %6, i32 0, i32 2
  %8 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %8, %struct.sk_buff** %5, align 8
  %9 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %10 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ENDPOINT_0, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %16 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ECANCELED, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i32 @dev_kfree_skb(%struct.sk_buff* %25)
  br label %27

27:                                               ; preds = %24, %21, %14, %2
  ret void
}

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
