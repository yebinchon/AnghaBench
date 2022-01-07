; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables_nphy.c_b43_nphy_tables_init_rev0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables_nphy.c_b43_nphy_tables_init_rev0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@B43_NTAB_FRAMESTRUCT = common dso_local global i32 0, align 4
@b43_ntab_framestruct = common dso_local global i32 0, align 4
@B43_NTAB_FRAMELT = common dso_local global i32 0, align 4
@b43_ntab_framelookup = common dso_local global i32 0, align 4
@B43_NTAB_TMAP = common dso_local global i32 0, align 4
@b43_ntab_tmap = common dso_local global i32 0, align 4
@B43_NTAB_TDTRN = common dso_local global i32 0, align 4
@b43_ntab_tdtrn = common dso_local global i32 0, align 4
@B43_NTAB_INTLEVEL = common dso_local global i32 0, align 4
@b43_ntab_intlevel = common dso_local global i32 0, align 4
@B43_NTAB_PILOT = common dso_local global i32 0, align 4
@b43_ntab_pilot = common dso_local global i32 0, align 4
@B43_NTAB_TDI20A0 = common dso_local global i32 0, align 4
@b43_ntab_tdi20a0 = common dso_local global i32 0, align 4
@B43_NTAB_TDI20A1 = common dso_local global i32 0, align 4
@b43_ntab_tdi20a1 = common dso_local global i32 0, align 4
@B43_NTAB_TDI40A0 = common dso_local global i32 0, align 4
@b43_ntab_tdi40a0 = common dso_local global i32 0, align 4
@B43_NTAB_TDI40A1 = common dso_local global i32 0, align 4
@b43_ntab_tdi40a1 = common dso_local global i32 0, align 4
@B43_NTAB_CHANEST = common dso_local global i32 0, align 4
@b43_ntab_channelest = common dso_local global i32 0, align 4
@B43_NTAB_MCS = common dso_local global i32 0, align 4
@b43_ntab_mcs = common dso_local global i32 0, align 4
@B43_NTAB_NOISEVAR10 = common dso_local global i32 0, align 4
@b43_ntab_noisevar10 = common dso_local global i32 0, align 4
@B43_NTAB_NOISEVAR11 = common dso_local global i32 0, align 4
@b43_ntab_noisevar11 = common dso_local global i32 0, align 4
@B43_NTAB_BDI = common dso_local global i32 0, align 4
@b43_ntab_bdi = common dso_local global i32 0, align 4
@B43_NTAB_PILOTLT = common dso_local global i32 0, align 4
@b43_ntab_pilotlt = common dso_local global i32 0, align 4
@B43_NTAB_C0_GAINCTL = common dso_local global i32 0, align 4
@b43_ntab_gainctl0 = common dso_local global i32 0, align 4
@B43_NTAB_C1_GAINCTL = common dso_local global i32 0, align 4
@b43_ntab_gainctl1 = common dso_local global i32 0, align 4
@B43_NTAB_C0_ESTPLT = common dso_local global i32 0, align 4
@b43_ntab_estimatepowerlt0 = common dso_local global i32 0, align 4
@B43_NTAB_C1_ESTPLT = common dso_local global i32 0, align 4
@b43_ntab_estimatepowerlt1 = common dso_local global i32 0, align 4
@B43_NTAB_C0_ADJPLT = common dso_local global i32 0, align 4
@b43_ntab_adjustpower0 = common dso_local global i32 0, align 4
@B43_NTAB_C1_ADJPLT = common dso_local global i32 0, align 4
@b43_ntab_adjustpower1 = common dso_local global i32 0, align 4
@B43_NTAB_C0_IQLT = common dso_local global i32 0, align 4
@b43_ntab_iqlt0 = common dso_local global i32 0, align 4
@B43_NTAB_C1_IQLT = common dso_local global i32 0, align 4
@b43_ntab_iqlt1 = common dso_local global i32 0, align 4
@B43_NTAB_C0_LOFEEDTH = common dso_local global i32 0, align 4
@b43_ntab_loftlt0 = common dso_local global i32 0, align 4
@B43_NTAB_C1_LOFEEDTH = common dso_local global i32 0, align 4
@b43_ntab_loftlt1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_tables_init_rev0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_tables_init_rev0(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %3 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %4 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %65

8:                                                ; preds = %1
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %10 = load i32, i32* @B43_NTAB_FRAMESTRUCT, align 4
  %11 = load i32, i32* @b43_ntab_framestruct, align 4
  %12 = call i32 @ntab_upload(%struct.b43_wldev* %9, i32 %10, i32 %11)
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %14 = load i32, i32* @B43_NTAB_FRAMELT, align 4
  %15 = load i32, i32* @b43_ntab_framelookup, align 4
  %16 = call i32 @ntab_upload(%struct.b43_wldev* %13, i32 %14, i32 %15)
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %18 = load i32, i32* @B43_NTAB_TMAP, align 4
  %19 = load i32, i32* @b43_ntab_tmap, align 4
  %20 = call i32 @ntab_upload(%struct.b43_wldev* %17, i32 %18, i32 %19)
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %22 = load i32, i32* @B43_NTAB_TDTRN, align 4
  %23 = load i32, i32* @b43_ntab_tdtrn, align 4
  %24 = call i32 @ntab_upload(%struct.b43_wldev* %21, i32 %22, i32 %23)
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %26 = load i32, i32* @B43_NTAB_INTLEVEL, align 4
  %27 = load i32, i32* @b43_ntab_intlevel, align 4
  %28 = call i32 @ntab_upload(%struct.b43_wldev* %25, i32 %26, i32 %27)
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %30 = load i32, i32* @B43_NTAB_PILOT, align 4
  %31 = load i32, i32* @b43_ntab_pilot, align 4
  %32 = call i32 @ntab_upload(%struct.b43_wldev* %29, i32 %30, i32 %31)
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %34 = load i32, i32* @B43_NTAB_TDI20A0, align 4
  %35 = load i32, i32* @b43_ntab_tdi20a0, align 4
  %36 = call i32 @ntab_upload(%struct.b43_wldev* %33, i32 %34, i32 %35)
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %38 = load i32, i32* @B43_NTAB_TDI20A1, align 4
  %39 = load i32, i32* @b43_ntab_tdi20a1, align 4
  %40 = call i32 @ntab_upload(%struct.b43_wldev* %37, i32 %38, i32 %39)
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %42 = load i32, i32* @B43_NTAB_TDI40A0, align 4
  %43 = load i32, i32* @b43_ntab_tdi40a0, align 4
  %44 = call i32 @ntab_upload(%struct.b43_wldev* %41, i32 %42, i32 %43)
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %46 = load i32, i32* @B43_NTAB_TDI40A1, align 4
  %47 = load i32, i32* @b43_ntab_tdi40a1, align 4
  %48 = call i32 @ntab_upload(%struct.b43_wldev* %45, i32 %46, i32 %47)
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %50 = load i32, i32* @B43_NTAB_CHANEST, align 4
  %51 = load i32, i32* @b43_ntab_channelest, align 4
  %52 = call i32 @ntab_upload(%struct.b43_wldev* %49, i32 %50, i32 %51)
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %54 = load i32, i32* @B43_NTAB_MCS, align 4
  %55 = load i32, i32* @b43_ntab_mcs, align 4
  %56 = call i32 @ntab_upload(%struct.b43_wldev* %53, i32 %54, i32 %55)
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %58 = load i32, i32* @B43_NTAB_NOISEVAR10, align 4
  %59 = load i32, i32* @b43_ntab_noisevar10, align 4
  %60 = call i32 @ntab_upload(%struct.b43_wldev* %57, i32 %58, i32 %59)
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %62 = load i32, i32* @B43_NTAB_NOISEVAR11, align 4
  %63 = load i32, i32* @b43_ntab_noisevar11, align 4
  %64 = call i32 @ntab_upload(%struct.b43_wldev* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %8, %1
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %67 = load i32, i32* @B43_NTAB_BDI, align 4
  %68 = load i32, i32* @b43_ntab_bdi, align 4
  %69 = call i32 @ntab_upload(%struct.b43_wldev* %66, i32 %67, i32 %68)
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %71 = load i32, i32* @B43_NTAB_PILOTLT, align 4
  %72 = load i32, i32* @b43_ntab_pilotlt, align 4
  %73 = call i32 @ntab_upload(%struct.b43_wldev* %70, i32 %71, i32 %72)
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %75 = load i32, i32* @B43_NTAB_C0_GAINCTL, align 4
  %76 = load i32, i32* @b43_ntab_gainctl0, align 4
  %77 = call i32 @ntab_upload(%struct.b43_wldev* %74, i32 %75, i32 %76)
  %78 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %79 = load i32, i32* @B43_NTAB_C1_GAINCTL, align 4
  %80 = load i32, i32* @b43_ntab_gainctl1, align 4
  %81 = call i32 @ntab_upload(%struct.b43_wldev* %78, i32 %79, i32 %80)
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %83 = load i32, i32* @B43_NTAB_C0_ESTPLT, align 4
  %84 = load i32, i32* @b43_ntab_estimatepowerlt0, align 4
  %85 = call i32 @ntab_upload(%struct.b43_wldev* %82, i32 %83, i32 %84)
  %86 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %87 = load i32, i32* @B43_NTAB_C1_ESTPLT, align 4
  %88 = load i32, i32* @b43_ntab_estimatepowerlt1, align 4
  %89 = call i32 @ntab_upload(%struct.b43_wldev* %86, i32 %87, i32 %88)
  %90 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %91 = load i32, i32* @B43_NTAB_C0_ADJPLT, align 4
  %92 = load i32, i32* @b43_ntab_adjustpower0, align 4
  %93 = call i32 @ntab_upload(%struct.b43_wldev* %90, i32 %91, i32 %92)
  %94 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %95 = load i32, i32* @B43_NTAB_C1_ADJPLT, align 4
  %96 = load i32, i32* @b43_ntab_adjustpower1, align 4
  %97 = call i32 @ntab_upload(%struct.b43_wldev* %94, i32 %95, i32 %96)
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %99 = load i32, i32* @B43_NTAB_C0_IQLT, align 4
  %100 = load i32, i32* @b43_ntab_iqlt0, align 4
  %101 = call i32 @ntab_upload(%struct.b43_wldev* %98, i32 %99, i32 %100)
  %102 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %103 = load i32, i32* @B43_NTAB_C1_IQLT, align 4
  %104 = load i32, i32* @b43_ntab_iqlt1, align 4
  %105 = call i32 @ntab_upload(%struct.b43_wldev* %102, i32 %103, i32 %104)
  %106 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %107 = load i32, i32* @B43_NTAB_C0_LOFEEDTH, align 4
  %108 = load i32, i32* @b43_ntab_loftlt0, align 4
  %109 = call i32 @ntab_upload(%struct.b43_wldev* %106, i32 %107, i32 %108)
  %110 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %111 = load i32, i32* @B43_NTAB_C1_LOFEEDTH, align 4
  %112 = load i32, i32* @b43_ntab_loftlt1, align 4
  %113 = call i32 @ntab_upload(%struct.b43_wldev* %110, i32 %111, i32 %112)
  ret void
}

declare dso_local i32 @ntab_upload(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
