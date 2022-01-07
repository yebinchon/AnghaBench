; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_stf.c_brcms_c_stf_txcore_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_stf.c_brcms_c_stf_txcore_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { i32, i64, %struct.TYPE_5__*, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64, i64, i64*, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"wl%d: Nsts %d core_mask %x\0A\00", align 1
@PHY_TXC_ANT_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_c_info*, i64, i64)* @brcms_c_stf_txcore_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_c_stf_txcore_set(%struct.brcms_c_info* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.brcms_c_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %8 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %7, i32 0, i32 3
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %13 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %12, i32 0, i32 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @brcms_dbg_ht(i32 %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %17, i64 %18)
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @hweight8(i64 %20)
  %22 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %23 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %21, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i64 0, i64* %6, align 8
  br label %29

29:                                               ; preds = %28, %3
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @hweight8(i64 %30)
  %32 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %33 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %32, i32 0, i32 2
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %31, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %29
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %41 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %40, i32 0, i32 2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = xor i64 %44, -1
  %46 = and i64 %39, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %38
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %51 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %50, i32 0, i32 2
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = and i64 %49, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %48, %38
  %58 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %59 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %58, i32 0, i32 2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %6, align 8
  br label %63

63:                                               ; preds = %57, %48, %29
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %66 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %65, i32 0, i32 2
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* %5, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  store i64 %64, i64* %71, align 8
  %72 = load i64, i64* %5, align 8
  %73 = icmp eq i64 %72, 1
  br i1 %73, label %74, label %106

74:                                               ; preds = %63
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @PHY_TXC_ANT_SHIFT, align 8
  %77 = shl i64 %75, %76
  %78 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %79 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %78, i32 0, i32 2
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 3
  store i64 %77, i64* %81, align 8
  %82 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %83 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %82, i32 0, i32 3
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %86 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %85, i32 0, i32 2
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @brcms_b_txant_set(%struct.TYPE_6__* %84, i64 %89)
  %91 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %92 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %74
  %96 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %97 = call i32 @brcms_c_suspend_mac_and_wait(%struct.brcms_c_info* %96)
  %98 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %99 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %100 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @brcms_c_beacon_phytxctl_txant_upd(%struct.brcms_c_info* %98, i32 %101)
  %103 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %104 = call i32 @brcms_c_enable_mac(%struct.brcms_c_info* %103)
  br label %105

105:                                              ; preds = %95, %74
  br label %106

106:                                              ; preds = %105, %63
  ret i32 0
}

declare dso_local i32 @brcms_dbg_ht(i32, i8*, i32, i64, i64) #1

declare dso_local i64 @hweight8(i64) #1

declare dso_local i32 @brcms_b_txant_set(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @brcms_c_suspend_mac_and_wait(%struct.brcms_c_info*) #1

declare dso_local i32 @brcms_c_beacon_phytxctl_txant_upd(%struct.brcms_c_info*, i32) #1

declare dso_local i32 @brcms_c_enable_mac(%struct.brcms_c_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
