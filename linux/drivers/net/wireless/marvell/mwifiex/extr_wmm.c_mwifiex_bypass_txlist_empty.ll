; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_bypass_txlist_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_bypass_txlist_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, %struct.TYPE_2__, %struct.mwifiex_private** }
%struct.TYPE_2__ = type { i32 (%struct.mwifiex_private*)* }
%struct.mwifiex_private = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_bypass_txlist_empty(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %45, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %48

12:                                               ; preds = %6
  %13 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %13, i32 0, i32 2
  %15 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %15, i64 %17
  %19 = load %struct.mwifiex_private*, %struct.mwifiex_private** %18, align 8
  store %struct.mwifiex_private* %19, %struct.mwifiex_private** %4, align 8
  %20 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %21 = icmp ne %struct.mwifiex_private* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  br label %45

23:                                               ; preds = %12
  %24 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.mwifiex_private*)*, i32 (%struct.mwifiex_private*)** %26, align 8
  %28 = icmp ne i32 (%struct.mwifiex_private*)* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.mwifiex_private*)*, i32 (%struct.mwifiex_private*)** %32, align 8
  %34 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %35 = call i32 %33(%struct.mwifiex_private* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  br label %45

38:                                               ; preds = %29, %23
  %39 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %40 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %39, i32 0, i32 0
  %41 = call i32 @skb_queue_empty(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %49

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %37, %22
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %6

48:                                               ; preds = %6
  store i32 1, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %43
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @skb_queue_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
