; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmutil/extr_utils.c_brcmu_pktq_mdeq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmutil/extr_utils.c_brcmu_pktq_mdeq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.pktq = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sk_buff_head }
%struct.sk_buff_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @brcmu_pktq_mdeq(%struct.pktq* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.pktq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sk_buff_head*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.pktq* %0, %struct.pktq** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.pktq*, %struct.pktq** %5, align 8
  %12 = getelementptr inbounds %struct.pktq, %struct.pktq* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %89

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %34, %16
  %18 = load %struct.pktq*, %struct.pktq** %5, align 8
  %19 = getelementptr inbounds %struct.pktq, %struct.pktq* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load %struct.pktq*, %struct.pktq** %5, align 8
  %24 = getelementptr inbounds %struct.pktq, %struct.pktq* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i64 @skb_queue_empty(%struct.sk_buff_head* %29)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %22, %17
  %33 = phi i1 [ false, %17 ], [ %31, %22 ]
  br i1 %33, label %34, label %39

34:                                               ; preds = %32
  %35 = load %struct.pktq*, %struct.pktq** %5, align 8
  %36 = getelementptr inbounds %struct.pktq, %struct.pktq* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %36, align 8
  br label %17

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %63, %39
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %10, align 4
  %43 = shl i32 1, %42
  %44 = and i32 %41, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %40
  %47 = load %struct.pktq*, %struct.pktq** %5, align 8
  %48 = getelementptr inbounds %struct.pktq, %struct.pktq* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i64 @skb_queue_empty(%struct.sk_buff_head* %53)
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %46, %40
  %57 = phi i1 [ true, %40 ], [ %55, %46 ]
  br i1 %57, label %58, label %64

58:                                               ; preds = %56
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %10, align 4
  %61 = icmp eq i32 %59, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %89

63:                                               ; preds = %58
  br label %40

64:                                               ; preds = %56
  %65 = load %struct.pktq*, %struct.pktq** %5, align 8
  %66 = getelementptr inbounds %struct.pktq, %struct.pktq* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store %struct.sk_buff_head* %71, %struct.sk_buff_head** %8, align 8
  %72 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %73 = call %struct.sk_buff* @skb_dequeue(%struct.sk_buff_head* %72)
  store %struct.sk_buff* %73, %struct.sk_buff** %9, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %75 = icmp eq %struct.sk_buff* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %64
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %89

77:                                               ; preds = %64
  %78 = load %struct.pktq*, %struct.pktq** %5, align 8
  %79 = getelementptr inbounds %struct.pktq, %struct.pktq* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, -1
  store i64 %81, i64* %79, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load i32, i32* %10, align 4
  %86 = load i32*, i32** %7, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %77
  %88 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %88, %struct.sk_buff** %4, align 8
  br label %89

89:                                               ; preds = %87, %76, %62, %15
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %90
}

declare dso_local i64 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(%struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
