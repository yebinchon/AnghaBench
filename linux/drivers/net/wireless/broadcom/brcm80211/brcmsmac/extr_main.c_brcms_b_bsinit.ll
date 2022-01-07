; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_bsinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_bsinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.brcms_hardware* }
%struct.brcms_hardware = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"wl%d: bandunit %d\0A\00", align 1
@BRCM_BAND_5G = common dso_local global i64 0, align 8
@M_PHYTYPE = common dso_local global i32 0, align 4
@M_PHYVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_c_info*, i32)* @brcms_b_bsinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_b_bsinit(%struct.brcms_c_info* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_c_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcms_hardware*, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %7 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %6, i32 0, i32 0
  %8 = load %struct.brcms_hardware*, %struct.brcms_hardware** %7, align 8
  store %struct.brcms_hardware* %8, %struct.brcms_hardware** %5, align 8
  %9 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %10 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %13 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %16 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @brcms_dbg_mac80211(i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %19)
  %21 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %22 = call i32 @brcms_c_ucode_bsinit(%struct.brcms_hardware* %21)
  %23 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %24 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @wlc_phy_init(i32 %27, i32 %28)
  %30 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %31 = call i32 @brcms_c_ucode_txant_set(%struct.brcms_hardware* %30)
  %32 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %33 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %34 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @brcms_b_set_cwmin(%struct.brcms_hardware* %32, i32 %37)
  %39 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %40 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %41 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @brcms_b_set_cwmax(%struct.brcms_hardware* %39, i32 %44)
  %46 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %47 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %48 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @BRCM_BAND_5G, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %2
  br label %59

55:                                               ; preds = %2
  %56 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %57 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  br label %59

59:                                               ; preds = %55, %54
  %60 = phi i32 [ 1, %54 ], [ %58, %55 ]
  %61 = call i32 @brcms_b_update_slot_timing(%struct.brcms_hardware* %46, i32 %60)
  %62 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %63 = load i32, i32* @M_PHYTYPE, align 4
  %64 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %65 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @brcms_b_write_shm(%struct.brcms_hardware* %62, i32 %63, i32 %69)
  %71 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %72 = load i32, i32* @M_PHYVER, align 4
  %73 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %74 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @brcms_b_write_shm(%struct.brcms_hardware* %71, i32 %72, i32 %78)
  %80 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %81 = call i32 @brcms_upd_ofdm_pctl1_table(%struct.brcms_hardware* %80)
  %82 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %83 = call i32 @brcms_b_upd_synthpu(%struct.brcms_hardware* %82)
  ret void
}

declare dso_local i32 @brcms_dbg_mac80211(i32, i8*, i32, i32) #1

declare dso_local i32 @brcms_c_ucode_bsinit(%struct.brcms_hardware*) #1

declare dso_local i32 @wlc_phy_init(i32, i32) #1

declare dso_local i32 @brcms_c_ucode_txant_set(%struct.brcms_hardware*) #1

declare dso_local i32 @brcms_b_set_cwmin(%struct.brcms_hardware*, i32) #1

declare dso_local i32 @brcms_b_set_cwmax(%struct.brcms_hardware*, i32) #1

declare dso_local i32 @brcms_b_update_slot_timing(%struct.brcms_hardware*, i32) #1

declare dso_local i32 @brcms_b_write_shm(%struct.brcms_hardware*, i32, i32) #1

declare dso_local i32 @brcms_upd_ofdm_pctl1_table(%struct.brcms_hardware*) #1

declare dso_local i32 @brcms_b_upd_synthpu(%struct.brcms_hardware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
