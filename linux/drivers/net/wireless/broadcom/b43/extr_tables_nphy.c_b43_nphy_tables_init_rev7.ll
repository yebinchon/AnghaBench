; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables_nphy.c_b43_nphy_tables_init_rev7.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables_nphy.c_b43_nphy_tables_init_rev7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@B43_NTAB_FRAMESTRUCT_R3 = common dso_local global i32 0, align 4
@b43_ntab_framestruct_r3 = common dso_local global i32 0, align 4
@B43_NTAB_PILOT_R3 = common dso_local global i32 0, align 4
@b43_ntab_pilot_r3 = common dso_local global i32 0, align 4
@B43_NTAB_TMAP_R7 = common dso_local global i32 0, align 4
@b43_ntab_tmap_r7 = common dso_local global i32 0, align 4
@B43_NTAB_INTLEVEL_R3 = common dso_local global i32 0, align 4
@b43_ntab_intlevel_r3 = common dso_local global i32 0, align 4
@B43_NTAB_TDTRN_R3 = common dso_local global i32 0, align 4
@b43_ntab_tdtrn_r3 = common dso_local global i32 0, align 4
@B43_NTAB_NOISEVAR_R7 = common dso_local global i32 0, align 4
@b43_ntab_noisevar_r7 = common dso_local global i32 0, align 4
@B43_NTAB_MCS_R3 = common dso_local global i32 0, align 4
@b43_ntab_mcs_r3 = common dso_local global i32 0, align 4
@B43_NTAB_TDI20A0_R3 = common dso_local global i32 0, align 4
@b43_ntab_tdi20a0_r3 = common dso_local global i32 0, align 4
@B43_NTAB_TDI20A1_R3 = common dso_local global i32 0, align 4
@b43_ntab_tdi20a1_r3 = common dso_local global i32 0, align 4
@B43_NTAB_TDI40A0_R3 = common dso_local global i32 0, align 4
@b43_ntab_tdi40a0_r3 = common dso_local global i32 0, align 4
@B43_NTAB_TDI40A1_R3 = common dso_local global i32 0, align 4
@b43_ntab_tdi40a1_r3 = common dso_local global i32 0, align 4
@B43_NTAB_PILOTLT_R3 = common dso_local global i32 0, align 4
@b43_ntab_pilotlt_r3 = common dso_local global i32 0, align 4
@B43_NTAB_CHANEST_R3 = common dso_local global i32 0, align 4
@b43_ntab_channelest_r3 = common dso_local global i32 0, align 4
@B43_NTAB_FRAMELT_R3 = common dso_local global i32 0, align 4
@b43_ntab_framelookup_r3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_tables_init_rev7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_tables_init_rev7(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %3 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %4 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %67

8:                                                ; preds = %1
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %10 = load i32, i32* @B43_NTAB_FRAMESTRUCT_R3, align 4
  %11 = load i32, i32* @b43_ntab_framestruct_r3, align 4
  %12 = call i32 @ntab_upload(%struct.b43_wldev* %9, i32 %10, i32 %11)
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %14 = load i32, i32* @B43_NTAB_PILOT_R3, align 4
  %15 = load i32, i32* @b43_ntab_pilot_r3, align 4
  %16 = call i32 @ntab_upload(%struct.b43_wldev* %13, i32 %14, i32 %15)
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %18 = load i32, i32* @B43_NTAB_TMAP_R7, align 4
  %19 = load i32, i32* @b43_ntab_tmap_r7, align 4
  %20 = call i32 @ntab_upload(%struct.b43_wldev* %17, i32 %18, i32 %19)
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %22 = load i32, i32* @B43_NTAB_INTLEVEL_R3, align 4
  %23 = load i32, i32* @b43_ntab_intlevel_r3, align 4
  %24 = call i32 @ntab_upload(%struct.b43_wldev* %21, i32 %22, i32 %23)
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %26 = load i32, i32* @B43_NTAB_TDTRN_R3, align 4
  %27 = load i32, i32* @b43_ntab_tdtrn_r3, align 4
  %28 = call i32 @ntab_upload(%struct.b43_wldev* %25, i32 %26, i32 %27)
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %30 = load i32, i32* @B43_NTAB_NOISEVAR_R7, align 4
  %31 = load i32, i32* @b43_ntab_noisevar_r7, align 4
  %32 = call i32 @ntab_upload(%struct.b43_wldev* %29, i32 %30, i32 %31)
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %34 = load i32, i32* @B43_NTAB_MCS_R3, align 4
  %35 = load i32, i32* @b43_ntab_mcs_r3, align 4
  %36 = call i32 @ntab_upload(%struct.b43_wldev* %33, i32 %34, i32 %35)
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %38 = load i32, i32* @B43_NTAB_TDI20A0_R3, align 4
  %39 = load i32, i32* @b43_ntab_tdi20a0_r3, align 4
  %40 = call i32 @ntab_upload(%struct.b43_wldev* %37, i32 %38, i32 %39)
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %42 = load i32, i32* @B43_NTAB_TDI20A1_R3, align 4
  %43 = load i32, i32* @b43_ntab_tdi20a1_r3, align 4
  %44 = call i32 @ntab_upload(%struct.b43_wldev* %41, i32 %42, i32 %43)
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %46 = load i32, i32* @B43_NTAB_TDI40A0_R3, align 4
  %47 = load i32, i32* @b43_ntab_tdi40a0_r3, align 4
  %48 = call i32 @ntab_upload(%struct.b43_wldev* %45, i32 %46, i32 %47)
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %50 = load i32, i32* @B43_NTAB_TDI40A1_R3, align 4
  %51 = load i32, i32* @b43_ntab_tdi40a1_r3, align 4
  %52 = call i32 @ntab_upload(%struct.b43_wldev* %49, i32 %50, i32 %51)
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %54 = load i32, i32* @B43_NTAB_PILOTLT_R3, align 4
  %55 = load i32, i32* @b43_ntab_pilotlt_r3, align 4
  %56 = call i32 @ntab_upload(%struct.b43_wldev* %53, i32 %54, i32 %55)
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %58 = load i32, i32* @B43_NTAB_CHANEST_R3, align 4
  %59 = load i32, i32* @b43_ntab_channelest_r3, align 4
  %60 = call i32 @ntab_upload(%struct.b43_wldev* %57, i32 %58, i32 %59)
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %62 = load i32, i32* @B43_NTAB_FRAMELT_R3, align 4
  %63 = load i32, i32* @b43_ntab_framelookup_r3, align 4
  %64 = call i32 @ntab_upload(%struct.b43_wldev* %61, i32 %62, i32 %63)
  %65 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %66 = call i32 @b43_nphy_tables_init_shared_lut(%struct.b43_wldev* %65)
  br label %67

67:                                               ; preds = %8, %1
  %68 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %69 = call i32 @b43_nphy_tables_init_rev7_volatile(%struct.b43_wldev* %68)
  ret void
}

declare dso_local i32 @ntab_upload(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_nphy_tables_init_shared_lut(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_tables_init_rev7_volatile(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
