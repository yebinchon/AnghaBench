; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_wmm_lists_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_wmm_lists_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, %struct.TYPE_4__, %struct.mwifiex_private** }
%struct.TYPE_4__ = type { i32 (%struct.mwifiex_private*)* }
%struct.mwifiex_private = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_wmm_lists_empty(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %58, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %61

12:                                               ; preds = %6
  %13 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %13, i32 0, i32 2
  %15 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %15, i64 %17
  %19 = load %struct.mwifiex_private*, %struct.mwifiex_private** %18, align 8
  store %struct.mwifiex_private* %19, %struct.mwifiex_private** %5, align 8
  %20 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %21 = icmp ne %struct.mwifiex_private* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  br label %58

23:                                               ; preds = %12
  %24 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %25 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %23
  %29 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %30 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %58

35:                                               ; preds = %28, %23
  %36 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32 (%struct.mwifiex_private*)*, i32 (%struct.mwifiex_private*)** %38, align 8
  %40 = icmp ne i32 (%struct.mwifiex_private*)* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32 (%struct.mwifiex_private*)*, i32 (%struct.mwifiex_private*)** %44, align 8
  %46 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %47 = call i32 %45(%struct.mwifiex_private* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  br label %58

50:                                               ; preds = %41, %35
  %51 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %52 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = call i64 @atomic_read(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %62

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %49, %34, %22
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %6

61:                                               ; preds = %6
  store i32 1, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %56
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
