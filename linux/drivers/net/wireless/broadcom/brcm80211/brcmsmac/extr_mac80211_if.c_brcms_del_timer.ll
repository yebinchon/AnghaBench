; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_mac80211_if.c_brcms_del_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_mac80211_if.c_brcms_del_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_timer = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_del_timer(%struct.brcms_timer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcms_timer*, align 8
  store %struct.brcms_timer* %0, %struct.brcms_timer** %3, align 8
  %4 = load %struct.brcms_timer*, %struct.brcms_timer** %3, align 8
  %5 = getelementptr inbounds %struct.brcms_timer, %struct.brcms_timer* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.brcms_timer*, %struct.brcms_timer** %3, align 8
  %10 = getelementptr inbounds %struct.brcms_timer, %struct.brcms_timer* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.brcms_timer*, %struct.brcms_timer** %3, align 8
  %12 = getelementptr inbounds %struct.brcms_timer, %struct.brcms_timer* %11, i32 0, i32 2
  %13 = call i32 @cancel_delayed_work(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %23

16:                                               ; preds = %8
  %17 = load %struct.brcms_timer*, %struct.brcms_timer** %3, align 8
  %18 = getelementptr inbounds %struct.brcms_timer, %struct.brcms_timer* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @atomic_dec(i32* %20)
  br label %22

22:                                               ; preds = %16, %1
  store i32 1, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %15
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
