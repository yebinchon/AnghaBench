; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_set_tx_power_by_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_set_tx_power_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.b43_phy_lp* }
%struct.b43_phy_lp = type { i64, i64 }
%struct.lpphy_tx_gains = type { i32, i32, i32, i32 }

@B43_LPPHY_TXPCTL_OFF = common dso_local global i64 0, align 8
@B43_LPPHY_TXPCTL_SW = common dso_local global i32 0, align 4
@B43_LPPHY_TX_GAIN_CTL_OVERRIDE_VAL = common dso_local global i32 0, align 4
@B43_LPPHY_RF_PWR_OVERRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i64)* @lpphy_set_tx_power_by_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpphy_set_tx_power_by_index(%struct.b43_wldev* %0, i64 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.b43_phy_lp*, align 8
  %6 = alloca %struct.lpphy_tx_gains, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %13, align 8
  store %struct.b43_phy_lp* %14, %struct.b43_phy_lp** %5, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %5, align 8
  %17 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %16, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %19 = call i32 @lpphy_read_tx_pctl_mode_from_hardware(%struct.b43_wldev* %18)
  %20 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %5, align 8
  %21 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @B43_LPPHY_TXPCTL_OFF, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %27 = load i32, i32* @B43_LPPHY_TXPCTL_SW, align 4
  %28 = call i32 @lpphy_set_tx_power_control(%struct.b43_wldev* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %2
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %31 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sge i32 %33, 2
  br i1 %34, label %35, label %68

35:                                               ; preds = %29
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %37 = load i64, i64* %4, align 8
  %38 = add nsw i64 %37, 320
  %39 = call i32 @B43_LPTAB32(i32 7, i64 %38)
  %40 = call i32 @b43_lptab_read(%struct.b43_wldev* %36, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %42 = load i64, i64* %4, align 8
  %43 = add nsw i64 %42, 192
  %44 = call i32 @B43_LPTAB32(i32 7, i64 %43)
  %45 = call i32 @b43_lptab_read(%struct.b43_wldev* %41, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = ashr i32 %46, 16
  %48 = and i32 %47, 255
  %49 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %6, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, 255
  %52 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %6, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %8, align 4
  %54 = ashr i32 %53, 8
  %55 = and i32 %54, 255
  %56 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %6, i32 0, i32 2
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %7, align 4
  %58 = ashr i32 %57, 28
  %59 = and i32 %58, 255
  %60 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %6, i32 0, i32 3
  store i32 %59, i32* %60, align 4
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %62 = bitcast %struct.lpphy_tx_gains* %6 to { i64, i64 }*
  %63 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 4
  %65 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %62, i32 0, i32 1
  %66 = load i64, i64* %65, align 4
  %67 = call i32 @lpphy_set_tx_gains(%struct.b43_wldev* %61, i64 %64, i64 %66)
  br label %94

68:                                               ; preds = %29
  %69 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %70 = load i64, i64* %4, align 8
  %71 = add nsw i64 %70, 320
  %72 = call i32 @B43_LPTAB32(i32 10, i64 %71)
  %73 = call i32 @b43_lptab_read(%struct.b43_wldev* %69, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %75 = load i64, i64* %4, align 8
  %76 = add nsw i64 %75, 192
  %77 = call i32 @B43_LPTAB32(i32 10, i64 %76)
  %78 = call i32 @b43_lptab_read(%struct.b43_wldev* %74, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %80 = load i32, i32* @B43_LPPHY_TX_GAIN_CTL_OVERRIDE_VAL, align 4
  %81 = load i32, i32* %8, align 4
  %82 = ashr i32 %81, 4
  %83 = and i32 %82, 32767
  %84 = call i32 @b43_phy_maskset(%struct.b43_wldev* %79, i32 %80, i32 63488, i32 %83)
  %85 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %86 = load i32, i32* %8, align 4
  %87 = and i32 %86, 7
  %88 = call i32 @lpphy_set_dac_gain(%struct.b43_wldev* %85, i32 %87)
  %89 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %90 = load i32, i32* %8, align 4
  %91 = ashr i32 %90, 24
  %92 = and i32 %91, 127
  %93 = call i32 @lpphy_set_pa_gain(%struct.b43_wldev* %89, i32 %92)
  br label %94

94:                                               ; preds = %68, %35
  %95 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %96 = load i32, i32* %7, align 4
  %97 = ashr i32 %96, 20
  %98 = and i32 %97, 255
  %99 = call i32 @lpphy_set_bb_mult(%struct.b43_wldev* %95, i32 %98)
  %100 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %101 = load i32, i32* %7, align 4
  %102 = ashr i32 %101, 10
  %103 = and i32 %102, 1023
  %104 = load i32, i32* %7, align 4
  %105 = and i32 %104, 1023
  %106 = call i32 @lpphy_set_tx_iqcc(%struct.b43_wldev* %100, i32 %103, i32 %105)
  %107 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %108 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp sge i32 %110, 2
  br i1 %111, label %112, label %118

112:                                              ; preds = %94
  %113 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %114 = load i64, i64* %4, align 8
  %115 = add nsw i64 %114, 448
  %116 = call i32 @B43_LPTAB32(i32 7, i64 %115)
  %117 = call i32 @b43_lptab_read(%struct.b43_wldev* %113, i32 %116)
  store i32 %117, i32* %9, align 4
  br label %124

118:                                              ; preds = %94
  %119 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %120 = load i64, i64* %4, align 8
  %121 = add nsw i64 %120, 448
  %122 = call i32 @B43_LPTAB32(i32 10, i64 %121)
  %123 = call i32 @b43_lptab_read(%struct.b43_wldev* %119, i32 %122)
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %118, %112
  %125 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %126 = call i32 @B43_LPTAB16(i32 0, i32 85)
  %127 = load i32, i32* %9, align 4
  %128 = and i32 %127, 65535
  %129 = call i32 @b43_lptab_write(%struct.b43_wldev* %125, i32 %126, i32 %128)
  %130 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %131 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp sge i32 %133, 2
  br i1 %134, label %135, label %146

135:                                              ; preds = %124
  %136 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %137 = load i64, i64* %4, align 8
  %138 = add nsw i64 %137, 576
  %139 = call i32 @B43_LPTAB32(i32 7, i64 %138)
  %140 = call i32 @b43_lptab_read(%struct.b43_wldev* %136, i32 %139)
  store i32 %140, i32* %10, align 4
  %141 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %142 = load i32, i32* @B43_LPPHY_RF_PWR_OVERRIDE, align 4
  %143 = load i32, i32* %10, align 4
  %144 = and i32 %143, 65535
  %145 = call i32 @b43_phy_maskset(%struct.b43_wldev* %141, i32 %142, i32 65280, i32 %144)
  br label %146

146:                                              ; preds = %135, %124
  %147 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %148 = call i32 @lpphy_enable_tx_gain_override(%struct.b43_wldev* %147)
  ret void
}

declare dso_local i32 @lpphy_read_tx_pctl_mode_from_hardware(%struct.b43_wldev*) #1

declare dso_local i32 @lpphy_set_tx_power_control(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_lptab_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @B43_LPTAB32(i32, i64) #1

declare dso_local i32 @lpphy_set_tx_gains(%struct.b43_wldev*, i64, i64) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @lpphy_set_dac_gain(%struct.b43_wldev*, i32) #1

declare dso_local i32 @lpphy_set_pa_gain(%struct.b43_wldev*, i32) #1

declare dso_local i32 @lpphy_set_bb_mult(%struct.b43_wldev*, i32) #1

declare dso_local i32 @lpphy_set_tx_iqcc(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_lptab_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_LPTAB16(i32, i32) #1

declare dso_local i32 @lpphy_enable_tx_gain_override(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
