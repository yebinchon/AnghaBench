; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_reapply_txcal_coeffs_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_reapply_txcal_coeffs_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64, i64, i64*, i64 }

@NPHY_TBL_ID_IQLOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_reapply_txcal_coeffs_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_reapply_txcal_coeffs_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca [7 x i64], align 16
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %4 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %5 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %8 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %6, %9
  br i1 %10, label %11, label %88

11:                                               ; preds = %1
  %12 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %13 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %88

16:                                               ; preds = %11
  %17 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %18 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %19 = getelementptr inbounds [7 x i64], [7 x i64]* %3, i64 0, i64 0
  %20 = call i32 @ARRAY_SIZE(i64* %19)
  %21 = getelementptr inbounds [7 x i64], [7 x i64]* %3, i64 0, i64 0
  %22 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %17, i32 %18, i32 %20, i32 80, i32 16, i64* %21)
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %24 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %23, i32 0, i32 2
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds [7 x i64], [7 x i64]* %3, i64 0, i64 0
  %29 = load i64, i64* %28, align 16
  %30 = icmp ne i64 %27, %29
  br i1 %30, label %58, label %31

31:                                               ; preds = %16
  %32 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %33 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %32, i32 0, i32 2
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds [7 x i64], [7 x i64]* %3, i64 0, i64 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %36, %38
  br i1 %39, label %58, label %40

40:                                               ; preds = %31
  %41 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %42 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %41, i32 0, i32 2
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 2
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds [7 x i64], [7 x i64]* %3, i64 0, i64 2
  %47 = load i64, i64* %46, align 16
  %48 = icmp ne i64 %45, %47
  br i1 %48, label %58, label %49

49:                                               ; preds = %40
  %50 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %51 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %50, i32 0, i32 2
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 3
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds [7 x i64], [7 x i64]* %3, i64 0, i64 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %54, %56
  br i1 %57, label %58, label %87

58:                                               ; preds = %49, %40, %31, %16
  %59 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %60 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %62 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %59, i32 %60, i32 4, i32 80, i32 16, i64* %63)
  %65 = getelementptr inbounds [7 x i64], [7 x i64]* %3, i64 0, i64 0
  store i64 0, i64* %65, align 16
  %66 = getelementptr inbounds [7 x i64], [7 x i64]* %3, i64 0, i64 1
  store i64 0, i64* %66, align 8
  %67 = getelementptr inbounds [7 x i64], [7 x i64]* %3, i64 0, i64 2
  store i64 0, i64* %67, align 16
  %68 = getelementptr inbounds [7 x i64], [7 x i64]* %3, i64 0, i64 3
  store i64 0, i64* %68, align 8
  %69 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %70 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %71 = getelementptr inbounds [7 x i64], [7 x i64]* %3, i64 0, i64 0
  %72 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %69, i32 %70, i32 4, i32 88, i32 16, i64* %71)
  %73 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %74 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %75 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %76 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %75, i32 0, i32 2
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 5
  %79 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %73, i32 %74, i32 2, i32 85, i32 16, i64* %78)
  %80 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %81 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %82 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %83 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %82, i32 0, i32 2
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 5
  %86 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %80, i32 %81, i32 2, i32 93, i32 16, i64* %85)
  br label %87

87:                                               ; preds = %58, %49
  br label %88

88:                                               ; preds = %87, %11, %1
  ret void
}

declare dso_local i32 @wlc_phy_table_read_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
