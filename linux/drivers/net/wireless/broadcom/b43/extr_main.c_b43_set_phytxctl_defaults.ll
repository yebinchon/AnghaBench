; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_set_phytxctl_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_set_phytxctl_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_TXH_PHY_ENC_CCK = common dso_local global i32 0, align 4
@B43_TXH_PHY_ANT01AUTO = common dso_local global i32 0, align 4
@B43_TXH_PHY_TXPWR = common dso_local global i32 0, align 4
@B43_SHM_SHARED = common dso_local global i32 0, align 4
@B43_SHM_SH_BEACPHYCTL = common dso_local global i32 0, align 4
@B43_SHM_SH_ACKCTSPHYCTL = common dso_local global i32 0, align 4
@B43_SHM_SH_PRPHYCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_set_phytxctl_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_set_phytxctl_defaults(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @B43_TXH_PHY_ENC_CCK, align 4
  %5 = load i32, i32* %3, align 4
  %6 = or i32 %5, %4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @B43_TXH_PHY_ANT01AUTO, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @B43_TXH_PHY_TXPWR, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %14 = load i32, i32* @B43_SHM_SHARED, align 4
  %15 = load i32, i32* @B43_SHM_SH_BEACPHYCTL, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @b43_shm_write16(%struct.b43_wldev* %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %19 = load i32, i32* @B43_SHM_SHARED, align 4
  %20 = load i32, i32* @B43_SHM_SH_ACKCTSPHYCTL, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @b43_shm_write16(%struct.b43_wldev* %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %24 = load i32, i32* @B43_SHM_SHARED, align 4
  %25 = load i32, i32* @B43_SHM_SH_PRPHYCTL, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @b43_shm_write16(%struct.b43_wldev* %23, i32 %24, i32 %25, i32 %26)
  ret void
}

declare dso_local i32 @b43_shm_write16(%struct.b43_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
