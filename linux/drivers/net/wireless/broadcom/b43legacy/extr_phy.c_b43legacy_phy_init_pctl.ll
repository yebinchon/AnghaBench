; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_phy.c_b43legacy_phy_init_pctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_phy.c_b43legacy_phy_init_pctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_6__*, %struct.b43legacy_phy }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.b43legacy_phy = type { i64, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@B43legacy_PHYTYPE_B = common dso_local global i64 0, align 8
@B43legacy_PHYTYPE_G = common dso_local global i64 0, align 8
@B43legacy_PHY_G_PCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*)* @b43legacy_phy_init_pctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_phy_init_pctl(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.b43legacy_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %8 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %9 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %8, i32 0, i32 1
  store %struct.b43legacy_phy* %9, %struct.b43legacy_phy** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %11 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @B43legacy_PHYTYPE_B, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %17 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @B43legacy_PHYTYPE_G, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %15, %1
  %22 = phi i1 [ true, %1 ], [ %20, %15 ]
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @B43legacy_BUG_ON(i32 %24)
  %26 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %27 = call i64 @is_bcm_board_vendor(%struct.b43legacy_wldev* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %21
  %30 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %31 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 1046
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %142

40:                                               ; preds = %29, %21
  %41 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %42 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %41, i32 40, i32 32792)
  %43 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %44 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %45 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %44, i32 998)
  %46 = and i32 %45, 65503
  %47 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %43, i32 998, i32 %46)
  %48 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %49 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @B43legacy_PHYTYPE_G, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %40
  %54 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %55 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %142

59:                                               ; preds = %53
  %60 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %61 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %60, i32 1146, i32 49425)
  br label %62

62:                                               ; preds = %59, %40
  %63 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %64 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 65535
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %142

68:                                               ; preds = %62
  %69 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %70 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @B43legacy_PHYTYPE_B, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %68
  %75 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %76 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp sge i32 %77, 2
  br i1 %78, label %79, label %90

79:                                               ; preds = %74
  %80 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %81 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 8272
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %86 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %87 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %86, i32 118)
  %88 = or i32 %87, 132
  %89 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %85, i32 118, i32 %88)
  br label %117

90:                                               ; preds = %79, %74, %68
  %91 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %92 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %4, align 4
  %94 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %95 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %5, align 4
  %97 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %98 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %6, align 4
  %100 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %101 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 8
  %103 = icmp sge i32 %102, 6
  br i1 %103, label %104, label %113

104:                                              ; preds = %90
  %105 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %106 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 8
  %108 = icmp sle i32 %107, 8
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  br i1 false, label %110, label %113

110:                                              ; preds = %109
  %111 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %112 = call i32 @b43legacy_radio_set_txpower_bg(%struct.b43legacy_wldev* %111, i32 11, i32 31, i32 0)
  br label %116

113:                                              ; preds = %109, %104, %90
  %114 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %115 = call i32 @b43legacy_radio_set_txpower_bg(%struct.b43legacy_wldev* %114, i32 11, i32 9, i32 0)
  br label %116

116:                                              ; preds = %113, %110
  store i32 1, i32* %7, align 4
  br label %117

117:                                              ; preds = %116, %84
  %118 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %119 = call i32 @b43legacy_dummy_transmission(%struct.b43legacy_wldev* %118)
  %120 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %121 = load i32, i32* @B43legacy_PHY_G_PCTL, align 4
  %122 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %120, i32 %121)
  %123 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %124 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %117
  %128 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @b43legacy_radio_set_txpower_bg(%struct.b43legacy_wldev* %128, i32 %129, i32 %130, i32 %131)
  br label %139

133:                                              ; preds = %117
  %134 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %135 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %136 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %135, i32 118)
  %137 = and i32 %136, 65403
  %138 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %134, i32 118, i32 %137)
  br label %139

139:                                              ; preds = %133, %127
  %140 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %141 = call i32 @b43legacy_radio_clear_tssi(%struct.b43legacy_wldev* %140)
  br label %142

142:                                              ; preds = %139, %67, %58, %39
  ret void
}

declare dso_local i32 @B43legacy_BUG_ON(i32) #1

declare dso_local i64 @is_bcm_board_vendor(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_phy_write(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_write16(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_read16(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_radio_write16(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_radio_read16(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_radio_set_txpower_bg(%struct.b43legacy_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43legacy_dummy_transmission(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_phy_read(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_radio_clear_tssi(%struct.b43legacy_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
