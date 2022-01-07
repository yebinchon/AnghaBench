; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_rev2plus_rc_calib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_rev2plus_rc_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ssb_bus* }
%struct.ssb_bus = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@B2063_RX_BB_SP8 = common dso_local global i32 0, align 4
@B2063_RC_CALIB_CTL1 = common dso_local global i32 0, align 4
@B2063_PLL_SP1 = common dso_local global i32 0, align 4
@B2063_RC_CALIB_CTL2 = common dso_local global i32 0, align 4
@B2063_RC_CALIB_CTL3 = common dso_local global i32 0, align 4
@B2063_RC_CALIB_CTL4 = common dso_local global i32 0, align 4
@B2063_RC_CALIB_CTL5 = common dso_local global i32 0, align 4
@B2063_RC_CALIB_CTL6 = common dso_local global i32 0, align 4
@B2063_TX_BB_SP3 = common dso_local global i32 0, align 4
@B2063_PA_SP7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @lpphy_rev2plus_rc_calib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpphy_rev2plus_rc_calib(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.ssb_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.ssb_bus*, %struct.ssb_bus** %12, align 8
  store %struct.ssb_bus* %13, %struct.ssb_bus** %3, align 8
  %14 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %15 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 1000
  store i32 %19, i32* %4, align 4
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %21 = load i32, i32* @B2063_RX_BB_SP8, align 4
  %22 = call i32 @b43_radio_read(%struct.b43_wldev* %20, i32 %21)
  %23 = and i32 %22, 255
  store i32 %23, i32* %5, align 4
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %25 = load i32, i32* @B2063_RX_BB_SP8, align 4
  %26 = call i32 @b43_radio_write(%struct.b43_wldev* %24, i32 %25, i32 0)
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %28 = load i32, i32* @B2063_RC_CALIB_CTL1, align 4
  %29 = call i32 @b43_radio_write(%struct.b43_wldev* %27, i32 %28, i32 126)
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %31 = load i32, i32* @B2063_PLL_SP1, align 4
  %32 = call i32 @b43_radio_mask(%struct.b43_wldev* %30, i32 %31, i32 247)
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %34 = load i32, i32* @B2063_RC_CALIB_CTL1, align 4
  %35 = call i32 @b43_radio_write(%struct.b43_wldev* %33, i32 %34, i32 124)
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %37 = load i32, i32* @B2063_RC_CALIB_CTL2, align 4
  %38 = call i32 @b43_radio_write(%struct.b43_wldev* %36, i32 %37, i32 21)
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %40 = load i32, i32* @B2063_RC_CALIB_CTL3, align 4
  %41 = call i32 @b43_radio_write(%struct.b43_wldev* %39, i32 %40, i32 112)
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %43 = load i32, i32* @B2063_RC_CALIB_CTL4, align 4
  %44 = call i32 @b43_radio_write(%struct.b43_wldev* %42, i32 %43, i32 82)
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %46 = load i32, i32* @B2063_RC_CALIB_CTL5, align 4
  %47 = call i32 @b43_radio_write(%struct.b43_wldev* %45, i32 %46, i32 1)
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %49 = load i32, i32* @B2063_RC_CALIB_CTL1, align 4
  %50 = call i32 @b43_radio_write(%struct.b43_wldev* %48, i32 %49, i32 125)
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %63, %1
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 10000
  br i1 %53, label %54, label %66

54:                                               ; preds = %51
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %56 = load i32, i32* @B2063_RC_CALIB_CTL6, align 4
  %57 = call i32 @b43_radio_read(%struct.b43_wldev* %55, i32 %56)
  %58 = and i32 %57, 2
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %66

61:                                               ; preds = %54
  %62 = call i32 @msleep(i32 1)
  br label %63

63:                                               ; preds = %61
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %51

66:                                               ; preds = %60, %51
  %67 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %68 = load i32, i32* @B2063_RC_CALIB_CTL6, align 4
  %69 = call i32 @b43_radio_read(%struct.b43_wldev* %67, i32 %68)
  %70 = and i32 %69, 2
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %66
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %74 = load i32, i32* @B2063_RX_BB_SP8, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @b43_radio_write(%struct.b43_wldev* %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %72, %66
  %78 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %79 = load i32, i32* @B2063_TX_BB_SP3, align 4
  %80 = call i32 @b43_radio_read(%struct.b43_wldev* %78, i32 %79)
  %81 = and i32 %80, 255
  store i32 %81, i32* %5, align 4
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %83 = load i32, i32* @B2063_TX_BB_SP3, align 4
  %84 = call i32 @b43_radio_write(%struct.b43_wldev* %82, i32 %83, i32 0)
  %85 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %86 = load i32, i32* @B2063_RC_CALIB_CTL1, align 4
  %87 = call i32 @b43_radio_write(%struct.b43_wldev* %85, i32 %86, i32 126)
  %88 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %89 = load i32, i32* @B2063_RC_CALIB_CTL1, align 4
  %90 = call i32 @b43_radio_write(%struct.b43_wldev* %88, i32 %89, i32 124)
  %91 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %92 = load i32, i32* @B2063_RC_CALIB_CTL2, align 4
  %93 = call i32 @b43_radio_write(%struct.b43_wldev* %91, i32 %92, i32 85)
  %94 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %95 = load i32, i32* @B2063_RC_CALIB_CTL3, align 4
  %96 = call i32 @b43_radio_write(%struct.b43_wldev* %94, i32 %95, i32 118)
  %97 = load i32, i32* %4, align 4
  %98 = icmp eq i32 %97, 24000000
  br i1 %98, label %99, label %106

99:                                               ; preds = %77
  %100 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %101 = load i32, i32* @B2063_RC_CALIB_CTL4, align 4
  %102 = call i32 @b43_radio_write(%struct.b43_wldev* %100, i32 %101, i32 252)
  %103 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %104 = load i32, i32* @B2063_RC_CALIB_CTL5, align 4
  %105 = call i32 @b43_radio_write(%struct.b43_wldev* %103, i32 %104, i32 0)
  br label %113

106:                                              ; preds = %77
  %107 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %108 = load i32, i32* @B2063_RC_CALIB_CTL4, align 4
  %109 = call i32 @b43_radio_write(%struct.b43_wldev* %107, i32 %108, i32 19)
  %110 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %111 = load i32, i32* @B2063_RC_CALIB_CTL5, align 4
  %112 = call i32 @b43_radio_write(%struct.b43_wldev* %110, i32 %111, i32 1)
  br label %113

113:                                              ; preds = %106, %99
  %114 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %115 = load i32, i32* @B2063_PA_SP7, align 4
  %116 = call i32 @b43_radio_write(%struct.b43_wldev* %114, i32 %115, i32 125)
  store i32 0, i32* %6, align 4
  br label %117

117:                                              ; preds = %129, %113
  %118 = load i32, i32* %6, align 4
  %119 = icmp slt i32 %118, 10000
  br i1 %119, label %120, label %132

120:                                              ; preds = %117
  %121 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %122 = load i32, i32* @B2063_RC_CALIB_CTL6, align 4
  %123 = call i32 @b43_radio_read(%struct.b43_wldev* %121, i32 %122)
  %124 = and i32 %123, 2
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %132

127:                                              ; preds = %120
  %128 = call i32 @msleep(i32 1)
  br label %129

129:                                              ; preds = %127
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %6, align 4
  br label %117

132:                                              ; preds = %126, %117
  %133 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %134 = load i32, i32* @B2063_RC_CALIB_CTL6, align 4
  %135 = call i32 @b43_radio_read(%struct.b43_wldev* %133, i32 %134)
  %136 = and i32 %135, 2
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %132
  %139 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %140 = load i32, i32* @B2063_TX_BB_SP3, align 4
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @b43_radio_write(%struct.b43_wldev* %139, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %138, %132
  %144 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %145 = load i32, i32* @B2063_RC_CALIB_CTL1, align 4
  %146 = call i32 @b43_radio_write(%struct.b43_wldev* %144, i32 %145, i32 126)
  ret void
}

declare dso_local i32 @b43_radio_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
