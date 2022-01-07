; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_scan_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_scan_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32*, i64 }
%struct.cfg80211_scan_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lbs_scan_done(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca %struct.cfg80211_scan_info, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  %4 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %5 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %12 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %17 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @kfree(i32* %18)
  br label %26

20:                                               ; preds = %1
  %21 = bitcast %struct.cfg80211_scan_info* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 4, i1 false)
  %22 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %23 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @cfg80211_scan_done(i32* %24, %struct.cfg80211_scan_info* %3)
  br label %26

26:                                               ; preds = %20, %15
  %27 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %28 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @cfg80211_scan_done(i32*, %struct.cfg80211_scan_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
