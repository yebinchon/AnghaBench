; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_cancel_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_cancel_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_scan_info = type { i32 }
%struct.mwifiex_adapter = type { i32, i32, %struct.mwifiex_private**, i32 }
%struct.mwifiex_private = type { i32, i32* }

@__const.mwifiex_cancel_scan.info = private unnamed_addr constant %struct.cfg80211_scan_info { i32 1 }, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"info: aborting scan\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_cancel_scan(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfg80211_scan_info, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  %6 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %7 = call i32 @mwifiex_cancel_pending_scan_cmd(%struct.mwifiex_adapter* %6)
  %8 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %61

12:                                               ; preds = %1
  %13 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %13, i32 0, i32 3
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %18, i32 0, i32 3
  %20 = call i32 @spin_unlock_bh(i32* %19)
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %57, %12
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %60

27:                                               ; preds = %21
  %28 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %28, i32 0, i32 2
  %30 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %30, i64 %32
  %34 = load %struct.mwifiex_private*, %struct.mwifiex_private** %33, align 8
  store %struct.mwifiex_private* %34, %struct.mwifiex_private** %3, align 8
  %35 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %36 = icmp ne %struct.mwifiex_private* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  br label %57

38:                                               ; preds = %27
  %39 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %40 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = bitcast %struct.cfg80211_scan_info* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 bitcast (%struct.cfg80211_scan_info* @__const.mwifiex_cancel_scan.info to i8*), i64 4, i1 false)
  %45 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %46 = load i32, i32* @INFO, align 4
  %47 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %45, i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %49 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @cfg80211_scan_done(i32* %50, %struct.cfg80211_scan_info* %5)
  %52 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %53 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %52, i32 0, i32 1
  store i32* null, i32** %53, align 8
  %54 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %55 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  br label %56

56:                                               ; preds = %43, %38
  br label %57

57:                                               ; preds = %56, %37
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %21

60:                                               ; preds = %21
  br label %61

61:                                               ; preds = %60, %1
  ret void
}

declare dso_local i32 @mwifiex_cancel_pending_scan_cmd(%struct.mwifiex_adapter*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local i32 @cfg80211_scan_done(i32*, %struct.cfg80211_scan_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
