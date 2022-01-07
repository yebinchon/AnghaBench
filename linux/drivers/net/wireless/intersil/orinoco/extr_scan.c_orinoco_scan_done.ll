; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_scan.c_orinoco_scan_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_scan.c_orinoco_scan_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orinoco_private = type { i32* }
%struct.cfg80211_scan_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @orinoco_scan_done(%struct.orinoco_private* %0, i32 %1) #0 {
  %3 = alloca %struct.orinoco_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfg80211_scan_info, align 4
  store %struct.orinoco_private* %0, %struct.orinoco_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %7 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.cfg80211_scan_info, %struct.cfg80211_scan_info* %5, i32 0, i32 0
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %14 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @cfg80211_scan_done(i32* %15, %struct.cfg80211_scan_info* %5)
  %17 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %18 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  br label %19

19:                                               ; preds = %10, %2
  ret void
}

declare dso_local i32 @cfg80211_scan_done(i32*, %struct.cfg80211_scan_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
