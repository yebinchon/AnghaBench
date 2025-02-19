; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rxcal_phycleanup_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rxcal_phycleanup_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PHY_CORE_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i64)* @wlc_phy_rxcal_phycleanup_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_rxcal_phycleanup_nphy(%struct.brcms_phy* %0, i64 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i64, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %6 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %7 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @write_phy_reg(%struct.brcms_phy* %5, i32 162, i32 %10)
  %12 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @PHY_CORE_0, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 166, i32 167
  %18 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %19 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @write_phy_reg(%struct.brcms_phy* %12, i32 %17, i32 %22)
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @PHY_CORE_0, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 143, i32 165
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %31 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @write_phy_reg(%struct.brcms_phy* %24, i32 %29, i32 %34)
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %37 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %38 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @write_phy_reg(%struct.brcms_phy* %36, i32 145, i32 %41)
  %43 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %44 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %45 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @write_phy_reg(%struct.brcms_phy* %43, i32 146, i32 %48)
  %50 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %51 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %52 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 5
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @write_phy_reg(%struct.brcms_phy* %50, i32 122, i32 %55)
  %57 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %59 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 6
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @write_phy_reg(%struct.brcms_phy* %57, i32 125, i32 %62)
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %65 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %66 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 7
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @write_phy_reg(%struct.brcms_phy* %64, i32 231, i32 %69)
  %71 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %72 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %73 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 8
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @write_phy_reg(%struct.brcms_phy* %71, i32 236, i32 %76)
  %78 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %79 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @NREV_GE(i32 %81, i32 7)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %113

84:                                               ; preds = %2
  %85 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %86 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %87 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 11
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @write_phy_reg(%struct.brcms_phy* %85, i32 834, i32 %90)
  %92 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %93 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %94 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 12
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @write_phy_reg(%struct.brcms_phy* %92, i32 835, i32 %97)
  %99 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %100 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %101 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 13
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @write_phy_reg(%struct.brcms_phy* %99, i32 838, i32 %104)
  %106 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %107 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %108 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 14
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @write_phy_reg(%struct.brcms_phy* %106, i32 839, i32 %111)
  br label %113

113:                                              ; preds = %84, %2
  %114 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %115 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %116 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 9
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @write_phy_reg(%struct.brcms_phy* %114, i32 663, i32 %119)
  %121 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %122 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %123 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 10
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @write_phy_reg(%struct.brcms_phy* %121, i32 667, i32 %126)
  ret void
}

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
