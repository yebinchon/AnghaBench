; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpts.c_cpts_tx_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpts.c_cpts_tx_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpts = type { i32 }
%struct.sk_buff = type { i32 }
%struct.skb_shared_hwtstamps = type { i32 }
%struct.TYPE_2__ = type { i32 }

@SKBTX_IN_PROGRESS = common dso_local global i32 0, align 4
@CPTS_EV_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpts_tx_timestamp(%struct.cpts* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.cpts*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.skb_shared_hwtstamps, align 4
  store %struct.cpts* %0, %struct.cpts** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SKBTX_IN_PROGRESS, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %30

15:                                               ; preds = %2
  %16 = load %struct.cpts*, %struct.cpts** %3, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = load i32, i32* @CPTS_EV_TX, align 4
  %19 = call i32 @cpts_find_ts(%struct.cpts* %16, %struct.sk_buff* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  br label %30

23:                                               ; preds = %15
  %24 = call i32 @memset(%struct.skb_shared_hwtstamps* %6, i32 0, i32 4)
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @ns_to_ktime(i32 %25)
  %27 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %6, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = call i32 @skb_tstamp_tx(%struct.sk_buff* %28, %struct.skb_shared_hwtstamps* %6)
  br label %30

30:                                               ; preds = %23, %22, %14
  ret void
}

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @cpts_find_ts(%struct.cpts*, %struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.skb_shared_hwtstamps*, i32, i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local i32 @skb_tstamp_tx(%struct.sk_buff*, %struct.skb_shared_hwtstamps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
