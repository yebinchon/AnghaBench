; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_2063_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_2063_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@B2063_LOGEN_SP5 = common dso_local global i32 0, align 4
@B2063_COMM8 = common dso_local global i32 0, align 4
@B2063_REG_SP1 = common dso_local global i32 0, align 4
@B2063_RX_BB_CTL2 = common dso_local global i32 0, align 4
@B2063_PA_SP7 = common dso_local global i32 0, align 4
@B2063_TX_RF_SP6 = common dso_local global i32 0, align 4
@B2063_TX_RF_SP9 = common dso_local global i32 0, align 4
@B2063_PA_SP3 = common dso_local global i32 0, align 4
@B2063_PA_SP4 = common dso_local global i32 0, align 4
@B2063_PA_SP2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @lpphy_2063_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpphy_2063_init(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %3 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %4 = call i32 @b2063_upload_init_table(%struct.b43_wldev* %3)
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %6 = load i32, i32* @B2063_LOGEN_SP5, align 4
  %7 = call i32 @b43_radio_write(%struct.b43_wldev* %5, i32 %6, i32 0)
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %9 = load i32, i32* @B2063_COMM8, align 4
  %10 = call i32 @b43_radio_set(%struct.b43_wldev* %8, i32 %9, i32 56)
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %12 = load i32, i32* @B2063_REG_SP1, align 4
  %13 = call i32 @b43_radio_write(%struct.b43_wldev* %11, i32 %12, i32 86)
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %15 = load i32, i32* @B2063_RX_BB_CTL2, align 4
  %16 = call i32 @b43_radio_mask(%struct.b43_wldev* %14, i32 %15, i32 -3)
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %18 = load i32, i32* @B2063_PA_SP7, align 4
  %19 = call i32 @b43_radio_write(%struct.b43_wldev* %17, i32 %18, i32 0)
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %21 = load i32, i32* @B2063_TX_RF_SP6, align 4
  %22 = call i32 @b43_radio_write(%struct.b43_wldev* %20, i32 %21, i32 32)
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %24 = load i32, i32* @B2063_TX_RF_SP9, align 4
  %25 = call i32 @b43_radio_write(%struct.b43_wldev* %23, i32 %24, i32 64)
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %27 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %41

31:                                               ; preds = %1
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %33 = load i32, i32* @B2063_PA_SP3, align 4
  %34 = call i32 @b43_radio_write(%struct.b43_wldev* %32, i32 %33, i32 160)
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %36 = load i32, i32* @B2063_PA_SP4, align 4
  %37 = call i32 @b43_radio_write(%struct.b43_wldev* %35, i32 %36, i32 160)
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %39 = load i32, i32* @B2063_PA_SP2, align 4
  %40 = call i32 @b43_radio_write(%struct.b43_wldev* %38, i32 %39, i32 24)
  br label %48

41:                                               ; preds = %1
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %43 = load i32, i32* @B2063_PA_SP3, align 4
  %44 = call i32 @b43_radio_write(%struct.b43_wldev* %42, i32 %43, i32 32)
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %46 = load i32, i32* @B2063_PA_SP2, align 4
  %47 = call i32 @b43_radio_write(%struct.b43_wldev* %45, i32 %46, i32 32)
  br label %48

48:                                               ; preds = %41, %31
  ret void
}

declare dso_local i32 @b2063_upload_init_table(%struct.b43_wldev*) #1

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_mask(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
