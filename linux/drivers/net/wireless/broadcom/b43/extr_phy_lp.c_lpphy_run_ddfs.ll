; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_run_ddfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_run_ddfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_LPPHY_AFE_DDFS_POINTER_INIT = common dso_local global i32 0, align 4
@B43_LPPHY_AFE_DDFS_INCR_INIT = common dso_local global i32 0, align 4
@B43_LPPHY_AFE_DDFS = common dso_local global i32 0, align 4
@B43_LPPHY_LP_PHY_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32, i32, i32, i32, i32)* @lpphy_run_ddfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpphy_run_ddfs(%struct.b43_wldev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.b43_wldev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %14 = call i32 @lpphy_stop_ddfs(%struct.b43_wldev* %13)
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %16 = load i32, i32* @B43_LPPHY_AFE_DDFS_POINTER_INIT, align 4
  %17 = call i32 @b43_phy_mask(%struct.b43_wldev* %15, i32 %16, i32 65408)
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %19 = load i32, i32* @B43_LPPHY_AFE_DDFS_POINTER_INIT, align 4
  %20 = call i32 @b43_phy_mask(%struct.b43_wldev* %18, i32 %19, i32 33023)
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %22 = load i32, i32* @B43_LPPHY_AFE_DDFS_INCR_INIT, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @b43_phy_maskset(%struct.b43_wldev* %21, i32 %22, i32 65408, i32 %23)
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %26 = load i32, i32* @B43_LPPHY_AFE_DDFS_INCR_INIT, align 4
  %27 = load i32, i32* %11, align 4
  %28 = shl i32 %27, 8
  %29 = call i32 @b43_phy_maskset(%struct.b43_wldev* %25, i32 %26, i32 33023, i32 %28)
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %31 = load i32, i32* @B43_LPPHY_AFE_DDFS, align 4
  %32 = load i32, i32* %8, align 4
  %33 = shl i32 %32, 3
  %34 = call i32 @b43_phy_maskset(%struct.b43_wldev* %30, i32 %31, i32 65527, i32 %33)
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %36 = load i32, i32* @B43_LPPHY_AFE_DDFS, align 4
  %37 = load i32, i32* %9, align 4
  %38 = shl i32 %37, 4
  %39 = call i32 @b43_phy_maskset(%struct.b43_wldev* %35, i32 %36, i32 65519, i32 %38)
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %41 = load i32, i32* @B43_LPPHY_AFE_DDFS, align 4
  %42 = load i32, i32* %12, align 4
  %43 = shl i32 %42, 5
  %44 = call i32 @b43_phy_maskset(%struct.b43_wldev* %40, i32 %41, i32 65439, i32 %43)
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %46 = load i32, i32* @B43_LPPHY_AFE_DDFS, align 4
  %47 = call i32 @b43_phy_mask(%struct.b43_wldev* %45, i32 %46, i32 65531)
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %49 = load i32, i32* @B43_LPPHY_AFE_DDFS, align 4
  %50 = call i32 @b43_phy_set(%struct.b43_wldev* %48, i32 %49, i32 2)
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %52 = load i32, i32* @B43_LPPHY_LP_PHY_CTL, align 4
  %53 = call i32 @b43_phy_set(%struct.b43_wldev* %51, i32 %52, i32 32)
  ret void
}

declare dso_local i32 @lpphy_stop_ddfs(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
