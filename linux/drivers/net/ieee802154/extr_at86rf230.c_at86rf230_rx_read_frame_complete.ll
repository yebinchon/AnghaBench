; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_rx_read_frame_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_rx_read_frame_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at86rf230_state_change = type { i32*, %struct.at86rf230_local* }
%struct.at86rf230_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"corrupted frame received\0A\00", align 1
@IEEE802154_MTU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to allocate sk_buff\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @at86rf230_rx_read_frame_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at86rf230_rx_read_frame_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.at86rf230_state_change*, align 8
  %4 = alloca %struct.at86rf230_local*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.at86rf230_state_change*
  store %struct.at86rf230_state_change* %10, %struct.at86rf230_state_change** %3, align 8
  %11 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %12 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %11, i32 0, i32 1
  %13 = load %struct.at86rf230_local*, %struct.at86rf230_local** %12, align 8
  store %struct.at86rf230_local* %13, %struct.at86rf230_local** %4, align 8
  %14 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %15 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @ieee802154_is_valid_psdu_len(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %1
  %24 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %25 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @dev_vdbg(i32* %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @IEEE802154_MTU, align 4
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %23, %1
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 2, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @IEEE802154_MTU, align 4
  %38 = call %struct.sk_buff* @dev_alloc_skb(i32 %37)
  store %struct.sk_buff* %38, %struct.sk_buff** %6, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %30
  %42 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %43 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @dev_vdbg(i32* %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %48 = call i32 @kfree(%struct.at86rf230_state_change* %47)
  br label %63

49:                                               ; preds = %30
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @skb_put_data(%struct.sk_buff* %50, i32* %52, i32 %53)
  %55 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %56 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @ieee802154_rx_irqsafe(i32 %57, %struct.sk_buff* %58, i32 %59)
  %61 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %62 = call i32 @kfree(%struct.at86rf230_state_change* %61)
  br label %63

63:                                               ; preds = %49, %41
  ret void
}

declare dso_local i32 @ieee802154_is_valid_psdu_len(i32) #1

declare dso_local i32 @dev_vdbg(i32*, i8*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @kfree(%struct.at86rf230_state_change*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @ieee802154_rx_irqsafe(i32, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
