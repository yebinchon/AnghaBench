; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_decode_txts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_decode_txts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dp83640_private = type { i32 }
%struct.phy_txts = type { i32 }
%struct.skb_shared_hwtstamps = type { i32 }
%struct.dp83640_skb_info = type { i32 }
%struct.sk_buff = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"have timestamp but tx_queue empty\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"tx timestamp queue overflow, count %d\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dp83640_private*, %struct.phy_txts*)* @decode_txts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_txts(%struct.dp83640_private* %0, %struct.phy_txts* %1) #0 {
  %3 = alloca %struct.dp83640_private*, align 8
  %4 = alloca %struct.phy_txts*, align 8
  %5 = alloca %struct.skb_shared_hwtstamps, align 4
  %6 = alloca %struct.dp83640_skb_info*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dp83640_private* %0, %struct.dp83640_private** %3, align 8
  store %struct.phy_txts* %1, %struct.phy_txts** %4, align 8
  br label %10

10:                                               ; preds = %50, %2
  %11 = load %struct.dp83640_private*, %struct.dp83640_private** %3, align 8
  %12 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %11, i32 0, i32 0
  %13 = call %struct.sk_buff* @skb_dequeue(i32* %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %62

18:                                               ; preds = %10
  %19 = load %struct.phy_txts*, %struct.phy_txts** %4, align 8
  %20 = getelementptr inbounds %struct.phy_txts, %struct.phy_txts* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 14
  %23 = and i32 %22, 3
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  %28 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %32, %26
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %34 = call i32 @kfree_skb(%struct.sk_buff* %33)
  %35 = load %struct.dp83640_private*, %struct.dp83640_private** %3, align 8
  %36 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %35, i32 0, i32 0
  %37 = call %struct.sk_buff* @skb_dequeue(i32* %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %7, align 8
  br label %29

38:                                               ; preds = %29
  br label %62

39:                                               ; preds = %18
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.dp83640_skb_info*
  store %struct.dp83640_skb_info* %43, %struct.dp83640_skb_info** %6, align 8
  %44 = load i32, i32* @jiffies, align 4
  %45 = load %struct.dp83640_skb_info*, %struct.dp83640_skb_info** %6, align 8
  %46 = getelementptr inbounds %struct.dp83640_skb_info, %struct.dp83640_skb_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @time_after(i32 %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = call i32 @kfree_skb(%struct.sk_buff* %51)
  br label %10

53:                                               ; preds = %39
  %54 = load %struct.phy_txts*, %struct.phy_txts** %4, align 8
  %55 = call i32 @phy2txts(%struct.phy_txts* %54)
  store i32 %55, i32* %9, align 4
  %56 = call i32 @memset(%struct.skb_shared_hwtstamps* %5, i32 0, i32 4)
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @ns_to_ktime(i32 %57)
  %59 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %5, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %61 = call i32 @skb_complete_tx_timestamp(%struct.sk_buff* %60, %struct.skb_shared_hwtstamps* %5)
  br label %62

62:                                               ; preds = %53, %38, %16
  ret void
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @time_after(i32, i32) #1

declare dso_local i32 @phy2txts(%struct.phy_txts*) #1

declare dso_local i32 @memset(%struct.skb_shared_hwtstamps*, i32, i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local i32 @skb_complete_tx_timestamp(%struct.sk_buff*, %struct.skb_shared_hwtstamps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
