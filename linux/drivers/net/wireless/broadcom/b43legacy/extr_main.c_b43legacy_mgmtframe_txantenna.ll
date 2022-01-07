; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_mgmtframe_txantenna.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_mgmtframe_txantenna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32 }

@B43legacy_TX4_PHY_ANT0 = common dso_local global i32 0, align 4
@B43legacy_TX4_PHY_ANT1 = common dso_local global i32 0, align 4
@B43legacy_TX4_PHY_ANTLAST = common dso_local global i32 0, align 4
@B43legacy_SHM_SHARED = common dso_local global i32 0, align 4
@B43legacy_SHM_SH_BEACPHYCTL = common dso_local global i32 0, align 4
@B43legacy_TX4_PHY_ANT = common dso_local global i32 0, align 4
@B43legacy_SHM_SH_ACKCTSPHYCTL = common dso_local global i32 0, align 4
@B43legacy_SHM_SH_PRPHYCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*, i32)* @b43legacy_mgmtframe_txantenna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_mgmtframe_txantenna(%struct.b43legacy_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %20 [
    i32 130, label %8
    i32 129, label %12
    i32 128, label %16
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @B43legacy_TX4_PHY_ANT0, align 4
  %10 = load i32, i32* %5, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %5, align 4
  br label %22

12:                                               ; preds = %2
  %13 = load i32, i32* @B43legacy_TX4_PHY_ANT1, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  br label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @B43legacy_TX4_PHY_ANTLAST, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %22

20:                                               ; preds = %2
  %21 = call i32 @B43legacy_BUG_ON(i32 1)
  br label %22

22:                                               ; preds = %20, %16, %12, %8
  %23 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %24 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %25 = load i32, i32* @B43legacy_SHM_SH_BEACPHYCTL, align 4
  %26 = call i32 @b43legacy_shm_read16(%struct.b43legacy_wldev* %23, i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @B43legacy_TX4_PHY_ANT, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %6, align 4
  %33 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %34 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %35 = load i32, i32* @B43legacy_SHM_SH_BEACPHYCTL, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %39 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %40 = load i32, i32* @B43legacy_SHM_SH_ACKCTSPHYCTL, align 4
  %41 = call i32 @b43legacy_shm_read16(%struct.b43legacy_wldev* %38, i32 %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @B43legacy_TX4_PHY_ANT, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %6, align 4
  %48 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %49 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %50 = load i32, i32* @B43legacy_SHM_SH_ACKCTSPHYCTL, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %48, i32 %49, i32 %50, i32 %51)
  %53 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %54 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %55 = load i32, i32* @B43legacy_SHM_SH_PRPHYCTL, align 4
  %56 = call i32 @b43legacy_shm_read16(%struct.b43legacy_wldev* %53, i32 %54, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @B43legacy_TX4_PHY_ANT, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %6, align 4
  %63 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %64 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %65 = load i32, i32* @B43legacy_SHM_SH_PRPHYCTL, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %63, i32 %64, i32 %65, i32 %66)
  ret void
}

declare dso_local i32 @B43legacy_BUG_ON(i32) #1

declare dso_local i32 @b43legacy_shm_read16(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_shm_write16(%struct.b43legacy_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
