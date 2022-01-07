; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_validate_chipaccess.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_validate_chipaccess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32 }

@B43legacy_SHM_SHARED = common dso_local global i32 0, align 4
@B43legacy_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43legacy_MACCTL_GMODE = common dso_local global i32 0, align 4
@B43legacy_MACCTL_IHR_ENABLED = common dso_local global i32 0, align 4
@B43legacy_MMIO_GEN_IRQ_REASON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to validate the chipaccess\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43legacy_wldev*)* @b43legacy_validate_chipaccess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43legacy_validate_chipaccess(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  %6 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %7 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %8 = call i32 @b43legacy_shm_read32(%struct.b43legacy_wldev* %6, i32 %7, i32 0)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %10 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %11 = call i32 @b43legacy_shm_write32(%struct.b43legacy_wldev* %9, i32 %10, i32 0, i32 -1437248086)
  %12 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %13 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %14 = call i32 @b43legacy_shm_read32(%struct.b43legacy_wldev* %12, i32 %13, i32 0)
  %15 = icmp ne i32 %14, -1437248086
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %50

17:                                               ; preds = %1
  %18 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %19 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %20 = call i32 @b43legacy_shm_write32(%struct.b43legacy_wldev* %18, i32 %19, i32 0, i32 1437248085)
  %21 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %22 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %23 = call i32 @b43legacy_shm_read32(%struct.b43legacy_wldev* %21, i32 %22, i32 0)
  %24 = icmp ne i32 %23, 1437248085
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %50

26:                                               ; preds = %17
  %27 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %28 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @b43legacy_shm_write32(%struct.b43legacy_wldev* %27, i32 %28, i32 0, i32 %29)
  %31 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %32 = load i32, i32* @B43legacy_MMIO_MACCTL, align 4
  %33 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @B43legacy_MACCTL_GMODE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @B43legacy_MACCTL_GMODE, align 4
  %38 = load i32, i32* @B43legacy_MACCTL_IHR_ENABLED, align 4
  %39 = or i32 %37, %38
  %40 = icmp ne i32 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %26
  br label %50

42:                                               ; preds = %26
  %43 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %44 = load i32, i32* @B43legacy_MMIO_GEN_IRQ_REASON, align 4
  %45 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %43, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %50

49:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %57

50:                                               ; preds = %48, %41, %25, %16
  %51 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %52 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @b43legacyerr(i32 %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %50, %49
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @b43legacy_shm_read32(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_shm_write32(%struct.b43legacy_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43legacy_read32(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacyerr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
