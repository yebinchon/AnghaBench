; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_tx.c_lbs_send_tx_feedback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_tx.c_lbs_send_tx_feedback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64, i64, i64, %struct.TYPE_5__*, i64, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.tx_radiotap_hdr = type { i64 }

@NL80211_IFTYPE_MONITOR = common dso_local global i64 0, align 8
@LBS_CONNECTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lbs_send_tx_feedback(%struct.lbs_private* %0, i64 %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tx_radiotap_hdr*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %7 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %6, i32 0, i32 5
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NL80211_IFTYPE_MONITOR, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %15 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %14, i32 0, i32 3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = icmp eq %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %2
  br label %83

19:                                               ; preds = %13
  %20 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %21 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %20, i32 0, i32 3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.tx_radiotap_hdr*
  store %struct.tx_radiotap_hdr* %25, %struct.tx_radiotap_hdr** %5, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %30 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 1, %31
  %33 = load i64, i64* %4, align 8
  %34 = sub nsw i64 %32, %33
  br label %36

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %35, %28
  %37 = phi i64 [ %34, %28 ], [ 0, %35 ]
  %38 = load %struct.tx_radiotap_hdr*, %struct.tx_radiotap_hdr** %5, align 8
  %39 = getelementptr inbounds %struct.tx_radiotap_hdr, %struct.tx_radiotap_hdr* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %41 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %40, i32 0, i32 3
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %44 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @eth_type_trans(%struct.TYPE_5__* %42, i64 %45)
  %47 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %48 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %47, i32 0, i32 3
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 8
  %51 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %52 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %51, i32 0, i32 3
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = call i32 @netif_rx(%struct.TYPE_5__* %53)
  %55 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %56 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %55, i32 0, i32 3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %56, align 8
  %57 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %58 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @LBS_CONNECTED, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %36
  %63 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %64 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @netif_wake_queue(i64 %65)
  br label %67

67:                                               ; preds = %62, %36
  %68 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %69 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %74 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @netif_running(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %80 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @netif_wake_queue(i64 %81)
  br label %83

83:                                               ; preds = %18, %78, %72, %67
  ret void
}

declare dso_local i32 @eth_type_trans(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @netif_rx(%struct.TYPE_5__*) #1

declare dso_local i32 @netif_wake_queue(i64) #1

declare dso_local i64 @netif_running(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
