; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_loadsampletable_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_loadsampletable_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64 }
%struct.cordic_iq = type { i64, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@NPHY_TBL_ID_SAMPLEPLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, %struct.cordic_iq*, i64)* @wlc_phy_loadsampletable_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_loadsampletable_nphy(%struct.brcms_phy* %0, %struct.cordic_iq* %1, i64 %2) #0 {
  %4 = alloca %struct.brcms_phy*, align 8
  %5 = alloca %struct.cordic_iq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %4, align 8
  store %struct.cordic_iq* %1, %struct.cordic_iq** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32* null, i32** %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call i32* @kmalloc_array(i64 %9, i32 4, i32 %10)
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %66

15:                                               ; preds = %3
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %17 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %22 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %21, i32 1)
  br label %23

23:                                               ; preds = %20, %15
  store i64 0, i64* %7, align 8
  br label %24

24:                                               ; preds = %48, %23
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %24
  %29 = load %struct.cordic_iq*, %struct.cordic_iq** %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %29, i64 %30
  %32 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = and i32 %34, 1023
  %36 = shl i32 %35, 10
  %37 = load %struct.cordic_iq*, %struct.cordic_iq** %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %37, i64 %38
  %40 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = and i32 %42, 1023
  %44 = or i32 %36, %43
  %45 = load i32*, i32** %8, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32 %44, i32* %47, align 4
  br label %48

48:                                               ; preds = %28
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %7, align 8
  br label %24

51:                                               ; preds = %24
  %52 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %53 = load i32, i32* @NPHY_TBL_ID_SAMPLEPLAY, align 4
  %54 = load i64, i64* %6, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %52, i32 %53, i64 %54, i32 0, i32 32, i32* %55)
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @kfree(i32* %57)
  %59 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %60 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %51
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %65 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %64, i32 0)
  br label %66

66:                                               ; preds = %14, %63, %51
  ret void
}

declare dso_local i32* @kmalloc_array(i64, i32, i32) #1

declare dso_local i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i64, i32, i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
