; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_b43_hardware_pctl_init_gphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_b43_hardware_pctl_init_gphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32, %struct.b43_phy_g* }
%struct.b43_phy_g = type { i64, i64 }

@B43_HF_HWPCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_hardware_pctl_init_gphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_hardware_pctl_init_gphy(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca %struct.b43_phy_g*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %6 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %5, i32 0, i32 0
  store %struct.b43_phy* %6, %struct.b43_phy** %3, align 8
  %7 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %8 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %7, i32 0, i32 1
  %9 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  store %struct.b43_phy_g* %9, %struct.b43_phy_g** %4, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %11 = call i32 @b43_has_hardware_pctl(%struct.b43_wldev* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %1
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %16 = call i32 @b43_hf_read(%struct.b43_wldev* %15)
  %17 = load i32, i32* @B43_HF_HWPCTL, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = call i32 @b43_hf_write(%struct.b43_wldev* %14, i32 %19)
  br label %68

21:                                               ; preds = %1
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %23 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %24 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %27 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  %30 = call i32 @b43_phy_maskset(%struct.b43_wldev* %22, i32 54, i32 65472, i64 %29)
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %32 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %33 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %36 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = call i32 @b43_phy_maskset(%struct.b43_wldev* %31, i32 1144, i32 65280, i64 %38)
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %41 = call i32 @b43_gphy_tssi_power_lt_init(%struct.b43_wldev* %40)
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %43 = call i32 @b43_gphy_gain_lt_init(%struct.b43_wldev* %42)
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %45 = call i32 @b43_phy_mask(%struct.b43_wldev* %44, i32 96, i32 65471)
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %47 = call i32 @b43_phy_write(%struct.b43_wldev* %46, i32 20, i32 0)
  %48 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %49 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %50, 6
  %52 = zext i1 %51 to i32
  %53 = call i32 @B43_WARN_ON(i32 %52)
  %54 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %55 = call i32 @b43_phy_set(%struct.b43_wldev* %54, i32 1144, i32 2048)
  %56 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %57 = call i32 @b43_phy_mask(%struct.b43_wldev* %56, i32 1144, i32 65279)
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %59 = call i32 @b43_phy_mask(%struct.b43_wldev* %58, i32 2049, i32 65471)
  %60 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %61 = call i32 @b43_gphy_dc_lt_init(%struct.b43_wldev* %60, i32 1)
  %62 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %64 = call i32 @b43_hf_read(%struct.b43_wldev* %63)
  %65 = load i32, i32* @B43_HF_HWPCTL, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @b43_hf_write(%struct.b43_wldev* %62, i32 %66)
  br label %68

68:                                               ; preds = %21, %13
  ret void
}

declare dso_local i32 @b43_has_hardware_pctl(%struct.b43_wldev*) #1

declare dso_local i32 @b43_hf_write(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_hf_read(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i64) #1

declare dso_local i32 @b43_gphy_tssi_power_lt_init(%struct.b43_wldev*) #1

declare dso_local i32 @b43_gphy_gain_lt_init(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_gphy_dc_lt_init(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
