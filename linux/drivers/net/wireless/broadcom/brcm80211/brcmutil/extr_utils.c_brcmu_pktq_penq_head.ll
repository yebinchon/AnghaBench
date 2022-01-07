; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmutil/extr_utils.c_brcmu_pktq_penq_head.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmutil/extr_utils.c_brcmu_pktq_penq_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktq = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sk_buff_head }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @brcmu_pktq_penq_head(%struct.pktq* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.pktq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff_head*, align 8
  store %struct.pktq* %0, %struct.pktq** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %9 = load %struct.pktq*, %struct.pktq** %5, align 8
  %10 = call i64 @pktq_full(%struct.pktq* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.pktq*, %struct.pktq** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @pktq_pfull(%struct.pktq* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %3
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %44

18:                                               ; preds = %12
  %19 = load %struct.pktq*, %struct.pktq** %5, align 8
  %20 = getelementptr inbounds %struct.pktq, %struct.pktq* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store %struct.sk_buff_head* %25, %struct.sk_buff_head** %8, align 8
  %26 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = call i32 @skb_queue_head(%struct.sk_buff_head* %26, %struct.sk_buff* %27)
  %29 = load %struct.pktq*, %struct.pktq** %5, align 8
  %30 = getelementptr inbounds %struct.pktq, %struct.pktq* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.pktq*, %struct.pktq** %5, align 8
  %34 = getelementptr inbounds %struct.pktq, %struct.pktq* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %18
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.pktq*, %struct.pktq** %5, align 8
  %41 = getelementptr inbounds %struct.pktq, %struct.pktq* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %38, %18
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %43, %struct.sk_buff** %4, align 8
  br label %44

44:                                               ; preds = %42, %17
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %45
}

declare dso_local i64 @pktq_full(%struct.pktq*) #1

declare dso_local i64 @pktq_pfull(%struct.pktq*, i32) #1

declare dso_local i32 @skb_queue_head(%struct.sk_buff_head*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
