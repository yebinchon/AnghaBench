; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_tx_cal_phy_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_tx_cal_phy_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@B43_NPHY_AFECTL_C1 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_C2 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_OVER1 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_OVER = common dso_local global i32 0, align 4
@B43_NPHY_BBCFG = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_INTC1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_INTC2 = common dso_local global i32 0, align 4
@B43_NPHY_PAPD_EN0 = common dso_local global i32 0, align 4
@B43_NPHY_PAPD_EN1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_tx_cal_phy_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_tx_cal_phy_cleanup(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca i32*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %4 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %5 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %3, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sge i32 %13, 3
  br i1 %14, label %15, label %84

15:                                               ; preds = %1
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %17 = load i32, i32* @B43_NPHY_AFECTL_C1, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @b43_phy_write(%struct.b43_wldev* %16, i32 %17, i32 %20)
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %23 = load i32, i32* @B43_NPHY_AFECTL_C2, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @b43_phy_write(%struct.b43_wldev* %22, i32 %23, i32 %26)
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %29 = load i32, i32* @B43_NPHY_AFECTL_OVER1, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @b43_phy_write(%struct.b43_wldev* %28, i32 %29, i32 %32)
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %35 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @b43_phy_write(%struct.b43_wldev* %34, i32 %35, i32 %38)
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %41 = load i32, i32* @B43_NPHY_BBCFG, align 4
  %42 = load i32*, i32** %3, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @b43_phy_write(%struct.b43_wldev* %40, i32 %41, i32 %44)
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %47 = call i32 @B43_NTAB16(i32 8, i32 3)
  %48 = load i32*, i32** %3, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 5
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @b43_ntab_write(%struct.b43_wldev* %46, i32 %47, i32 %50)
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %53 = call i32 @B43_NTAB16(i32 8, i32 19)
  %54 = load i32*, i32** %3, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 6
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @b43_ntab_write(%struct.b43_wldev* %52, i32 %53, i32 %56)
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %59 = load i32, i32* @B43_NPHY_RFCTL_INTC1, align 4
  %60 = load i32*, i32** %3, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 7
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @b43_phy_write(%struct.b43_wldev* %58, i32 %59, i32 %62)
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %65 = load i32, i32* @B43_NPHY_RFCTL_INTC2, align 4
  %66 = load i32*, i32** %3, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 8
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @b43_phy_write(%struct.b43_wldev* %64, i32 %65, i32 %68)
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %71 = load i32, i32* @B43_NPHY_PAPD_EN0, align 4
  %72 = load i32*, i32** %3, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 9
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @b43_phy_write(%struct.b43_wldev* %70, i32 %71, i32 %74)
  %76 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %77 = load i32, i32* @B43_NPHY_PAPD_EN1, align 4
  %78 = load i32*, i32** %3, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 10
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @b43_phy_write(%struct.b43_wldev* %76, i32 %77, i32 %80)
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %83 = call i32 @b43_nphy_reset_cca(%struct.b43_wldev* %82)
  br label %127

84:                                               ; preds = %1
  %85 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %86 = load i32, i32* @B43_NPHY_AFECTL_C1, align 4
  %87 = load i32*, i32** %3, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @b43_phy_maskset(%struct.b43_wldev* %85, i32 %86, i32 4095, i32 %89)
  %91 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %92 = load i32, i32* @B43_NPHY_AFECTL_C2, align 4
  %93 = load i32*, i32** %3, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @b43_phy_maskset(%struct.b43_wldev* %91, i32 %92, i32 4095, i32 %95)
  %97 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %98 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %99 = load i32*, i32** %3, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @b43_phy_write(%struct.b43_wldev* %97, i32 %98, i32 %101)
  %103 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %104 = call i32 @B43_NTAB16(i32 8, i32 2)
  %105 = load i32*, i32** %3, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @b43_ntab_write(%struct.b43_wldev* %103, i32 %104, i32 %107)
  %109 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %110 = call i32 @B43_NTAB16(i32 8, i32 18)
  %111 = load i32*, i32** %3, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 4
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @b43_ntab_write(%struct.b43_wldev* %109, i32 %110, i32 %113)
  %115 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %116 = load i32, i32* @B43_NPHY_RFCTL_INTC1, align 4
  %117 = load i32*, i32** %3, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 5
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @b43_phy_write(%struct.b43_wldev* %115, i32 %116, i32 %119)
  %121 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %122 = load i32, i32* @B43_NPHY_RFCTL_INTC2, align 4
  %123 = load i32*, i32** %3, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 6
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @b43_phy_write(%struct.b43_wldev* %121, i32 %122, i32 %125)
  br label %127

127:                                              ; preds = %84, %15
  ret void
}

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_ntab_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_NTAB16(i32, i32) #1

declare dso_local i32 @b43_nphy_reset_cca(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
