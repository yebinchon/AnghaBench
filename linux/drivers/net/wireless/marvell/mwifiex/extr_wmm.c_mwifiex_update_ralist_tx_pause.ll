; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_update_ralist_tx_pause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_update_ralist_tx_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32* }
%struct.mwifiex_ra_list_tbl = type { i64, i64 }

@MAX_NUM_TID = common dso_local global i32 0, align 4
@HIGH_PRIO_TID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_update_ralist_tx_pause(%struct.mwifiex_private* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mwifiex_ra_list_tbl*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %12 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_bh(i32* %13)
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %75, %3
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @MAX_NUM_TID, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %78

19:                                               ; preds = %15
  %20 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i64*, i64** %5, align 8
  %23 = call %struct.mwifiex_ra_list_tbl* @mwifiex_wmm_get_ralist_node(%struct.mwifiex_private* %20, i32 %21, i64* %22)
  store %struct.mwifiex_ra_list_tbl* %23, %struct.mwifiex_ra_list_tbl** %7, align 8
  %24 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %7, align 8
  %25 = icmp ne %struct.mwifiex_ra_list_tbl* %24, null
  br i1 %25, label %26, label %74

26:                                               ; preds = %19
  %27 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %7, align 8
  %28 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %74

32:                                               ; preds = %26
  %33 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %7, align 8
  %34 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %7, align 8
  %40 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %32
  %44 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %7, align 8
  %45 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %48 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %46
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 4
  br label %73

58:                                               ; preds = %32
  %59 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %7, align 8
  %60 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %63 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = sub nsw i64 %70, %61
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %68, align 4
  br label %73

73:                                               ; preds = %58, %43
  br label %74

74:                                               ; preds = %73, %26, %19
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %15

78:                                               ; preds = %15
  %79 = load i64, i64* %8, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %107

81:                                               ; preds = %78
  %82 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %83 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = call i64 @atomic_read(i32* %84)
  store i64 %85, i64* %9, align 8
  %86 = load i64, i64* %6, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* %9, align 8
  %91 = sub nsw i64 %90, %89
  store i64 %91, i64* %9, align 8
  br label %96

92:                                               ; preds = %81
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %9, align 8
  %95 = add nsw i64 %94, %93
  store i64 %95, i64* %9, align 8
  br label %96

96:                                               ; preds = %92, %88
  %97 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %98 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i64, i64* %9, align 8
  %101 = call i32 @atomic_set(i32* %99, i64 %100)
  %102 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %103 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i64, i64* @HIGH_PRIO_TID, align 8
  %106 = call i32 @atomic_set(i32* %104, i64 %105)
  br label %107

107:                                              ; preds = %96, %78
  %108 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %109 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = call i32 @spin_unlock_bh(i32* %110)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.mwifiex_ra_list_tbl* @mwifiex_wmm_get_ralist_node(%struct.mwifiex_private*, i32, i64*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
