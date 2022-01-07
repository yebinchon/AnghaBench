; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { %struct.at86rf230_local* }
%struct.at86rf230_local = type { i32, i32, i64, %struct.sk_buff*, %struct.at86rf230_state_change }
%struct.at86rf230_state_change = type { i32 }
%struct.sk_buff = type { i32 }

@STATE_TRX_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_hw*, %struct.sk_buff*)* @at86rf230_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at86rf230_xmit(%struct.ieee802154_hw* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee802154_hw*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.at86rf230_local*, align 8
  %6 = alloca %struct.at86rf230_state_change*, align 8
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %7, i32 0, i32 0
  %9 = load %struct.at86rf230_local*, %struct.at86rf230_local** %8, align 8
  store %struct.at86rf230_local* %9, %struct.at86rf230_local** %5, align 8
  %10 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %11 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %10, i32 0, i32 4
  store %struct.at86rf230_state_change* %11, %struct.at86rf230_state_change** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %14 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %13, i32 0, i32 3
  store %struct.sk_buff* %12, %struct.sk_buff** %14, align 8
  %15 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %16 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %18 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @time_is_before_jiffies(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %24 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %26 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %6, align 8
  %27 = load i32, i32* @STATE_TRX_OFF, align 4
  %28 = call i32 @at86rf230_async_state_change(%struct.at86rf230_local* %25, %struct.at86rf230_state_change* %26, i32 %27, i32 (%struct.at86rf230_state_change*)* @at86rf230_xmit_start)
  br label %34

29:                                               ; preds = %2
  %30 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %31 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %6, align 8
  %33 = call i32 @at86rf230_xmit_start(%struct.at86rf230_state_change* %32)
  br label %34

34:                                               ; preds = %29, %22
  ret i32 0
}

declare dso_local i64 @time_is_before_jiffies(i32) #1

declare dso_local i32 @at86rf230_async_state_change(%struct.at86rf230_local*, %struct.at86rf230_state_change*, i32, i32 (%struct.at86rf230_state_change*)*) #1

declare dso_local i32 @at86rf230_xmit_start(%struct.at86rf230_state_change*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
