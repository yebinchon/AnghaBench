; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_stay_in_carriersearch_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_stay_in_carriersearch_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64, i32, i32* }

@__const.wlc_phy_stay_in_carriersearch_nphy.clip_off = private unnamed_addr constant [2 x i32] [i32 65535, i32 65535], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = bitcast [2 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast ([2 x i32]* @__const.wlc_phy_stay_in_carriersearch_nphy.clip_off to i8*), i64 8, i1 false)
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %2
  %10 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %11 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %16 = call i32 @wlc_phy_classifier_nphy(%struct.brcms_phy* %15, i32 0, i32 0)
  %17 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %18 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %20 = call i32 @wlc_phy_classifier_nphy(%struct.brcms_phy* %19, i32 7, i32 4)
  %21 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %23 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @wlc_phy_clip_det_nphy(%struct.brcms_phy* %21, i32 0, i32* %24)
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %28 = call i32 @wlc_phy_clip_det_nphy(%struct.brcms_phy* %26, i32 1, i32* %27)
  br label %29

29:                                               ; preds = %14, %9
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %31 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %35 = call i32 @wlc_phy_resetcca_nphy(%struct.brcms_phy* %34)
  br label %57

36:                                               ; preds = %2
  %37 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %38 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* %38, align 8
  %41 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %42 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %36
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %47 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %48 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @wlc_phy_classifier_nphy(%struct.brcms_phy* %46, i32 7, i32 %49)
  %51 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %52 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %53 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @wlc_phy_clip_det_nphy(%struct.brcms_phy* %51, i32 1, i32* %54)
  br label %56

56:                                               ; preds = %45, %36
  br label %57

57:                                               ; preds = %56, %29
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @wlc_phy_classifier_nphy(%struct.brcms_phy*, i32, i32) #2

declare dso_local i32 @wlc_phy_clip_det_nphy(%struct.brcms_phy*, i32, i32*) #2

declare dso_local i32 @wlc_phy_resetcca_nphy(%struct.brcms_phy*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
