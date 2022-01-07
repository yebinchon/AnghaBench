; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_pr41573_workaround.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_pr41573_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.b43_phy_lp* }
%struct.b43_phy_lp = type { i32, i32, i32, i64, i32, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"PR41573 failed. Out of memory!\0A\00", align 1
@B43_LPPHY_TXPCTL_OFF = common dso_local global i32 0, align 4
@B43_MMIO_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @lpphy_pr41573_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpphy_pr41573_workaround(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_lp*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %12, align 8
  store %struct.b43_phy_lp* %13, %struct.b43_phy_lp** %3, align 8
  store i32 256, i32* %5, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32* @kcalloc(i32 256, i32 4, i32 %14)
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %20 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @b43err(i32 %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %123

23:                                               ; preds = %1
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %25 = call i32 @lpphy_read_tx_pctl_mode_from_hardware(%struct.b43_wldev* %24)
  %26 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %3, align 8
  %27 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %6, align 4
  %29 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %3, align 8
  %30 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  %32 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %3, align 8
  %33 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %32, i32 0, i32 6
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %8, align 8
  %35 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %3, align 8
  %36 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %35, i32 0, i32 5
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %9, align 8
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %39 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %48

43:                                               ; preds = %23
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %45 = call i32 @B43_LPTAB32(i32 10, i32 320)
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @b43_lptab_read_bulk(%struct.b43_wldev* %44, i32 %45, i32 256, i32* %46)
  br label %53

48:                                               ; preds = %23
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %50 = call i32 @B43_LPTAB32(i32 7, i32 320)
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @b43_lptab_read_bulk(%struct.b43_wldev* %49, i32 %50, i32 256, i32* %51)
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %55 = call i32 @lpphy_table_init(%struct.b43_wldev* %54)
  %56 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %57 = call i32 @lpphy_baseband_init(%struct.b43_wldev* %56)
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %59 = call i32 @lpphy_tx_pctl_init(%struct.b43_wldev* %58)
  %60 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %61 = call i32 @b43_lpphy_op_software_rfkill(%struct.b43_wldev* %60, i32 0)
  %62 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %63 = load i32, i32* @B43_LPPHY_TXPCTL_OFF, align 4
  %64 = call i32 @lpphy_set_tx_power_control(%struct.b43_wldev* %62, i32 %63)
  %65 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %66 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %68, 2
  br i1 %69, label %70, label %75

70:                                               ; preds = %53
  %71 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %72 = call i32 @B43_LPTAB32(i32 10, i32 320)
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %71, i32 %72, i32 256, i32* %73)
  br label %80

75:                                               ; preds = %53
  %76 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %77 = call i32 @B43_LPTAB32(i32 7, i32 320)
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @b43_lptab_write_bulk(%struct.b43_wldev* %76, i32 %77, i32 256, i32* %78)
  br label %80

80:                                               ; preds = %75, %70
  %81 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %82 = load i32, i32* @B43_MMIO_CHANNEL, align 4
  %83 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %3, align 8
  %84 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @b43_write16(%struct.b43_wldev* %81, i32 %82, i32 %85)
  %87 = load i8*, i8** %8, align 8
  %88 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %3, align 8
  %89 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %88, i32 0, i32 6
  store i8* %87, i8** %89, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %3, align 8
  %92 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %91, i32 0, i32 5
  store i8* %90, i8** %92, align 8
  %93 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %94 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %3, align 8
  %95 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @lpphy_set_analog_filter(%struct.b43_wldev* %93, i32 %96)
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, -1
  br i1 %99, label %100, label %104

100:                                              ; preds = %80
  %101 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @lpphy_set_tx_power_by_index(%struct.b43_wldev* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %80
  %105 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %3, align 8
  %106 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %111 = call i32 @lpphy_set_rc_cap(%struct.b43_wldev* %110)
  br label %112

112:                                              ; preds = %109, %104
  %113 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %114 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %3, align 8
  %115 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @b43_lpphy_op_set_rx_antenna(%struct.b43_wldev* %113, i32 %116)
  %118 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @lpphy_set_tx_power_control(%struct.b43_wldev* %118, i32 %119)
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @kfree(i32* %121)
  br label %123

123:                                              ; preds = %112, %18
  ret void
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

declare dso_local i32 @lpphy_read_tx_pctl_mode_from_hardware(%struct.b43_wldev*) #1

declare dso_local i32 @b43_lptab_read_bulk(%struct.b43_wldev*, i32, i32, i32*) #1

declare dso_local i32 @B43_LPTAB32(i32, i32) #1

declare dso_local i32 @lpphy_table_init(%struct.b43_wldev*) #1

declare dso_local i32 @lpphy_baseband_init(%struct.b43_wldev*) #1

declare dso_local i32 @lpphy_tx_pctl_init(%struct.b43_wldev*) #1

declare dso_local i32 @b43_lpphy_op_software_rfkill(%struct.b43_wldev*, i32) #1

declare dso_local i32 @lpphy_set_tx_power_control(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_lptab_write_bulk(%struct.b43_wldev*, i32, i32, i32*) #1

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @lpphy_set_analog_filter(%struct.b43_wldev*, i32) #1

declare dso_local i32 @lpphy_set_tx_power_by_index(%struct.b43_wldev*, i32) #1

declare dso_local i32 @lpphy_set_rc_cap(%struct.b43_wldev*) #1

declare dso_local i32 @b43_lpphy_op_set_rx_antenna(%struct.b43_wldev*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
