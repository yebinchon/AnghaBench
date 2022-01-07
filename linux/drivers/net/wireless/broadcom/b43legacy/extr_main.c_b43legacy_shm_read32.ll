; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_shm_read32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_shm_read32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32 }

@B43legacy_SHM_SHARED = common dso_local global i64 0, align 8
@B43legacy_MMIO_SHM_DATA_UNALIGNED = common dso_local global i32 0, align 4
@B43legacy_MMIO_SHM_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43legacy_shm_read32(%struct.b43legacy_wldev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43legacy_wldev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @B43legacy_SHM_SHARED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %47

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = and i64 %13, 1
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @B43legacy_WARN_ON(i32 %16)
  %18 = load i64, i64* %7, align 8
  %19 = and i64 %18, 3
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %12
  %22 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = ashr i64 %24, 2
  %26 = call i32 @b43legacy_shm_control_word(%struct.b43legacy_wldev* %22, i64 %23, i64 %25)
  %27 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %28 = load i32, i32* @B43legacy_MMIO_SHM_DATA_UNALIGNED, align 4
  %29 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = shl i32 %30, 16
  store i32 %31, i32* %8, align 4
  %32 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = ashr i64 %34, 2
  %36 = add nsw i64 %35, 1
  %37 = call i32 @b43legacy_shm_control_word(%struct.b43legacy_wldev* %32, i64 %33, i64 %36)
  %38 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %39 = load i32, i32* @B43legacy_MMIO_SHM_DATA, align 4
  %40 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %38, i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %56

44:                                               ; preds = %12
  %45 = load i64, i64* %7, align 8
  %46 = ashr i64 %45, 2
  store i64 %46, i64* %7, align 8
  br label %47

47:                                               ; preds = %44, %3
  %48 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @b43legacy_shm_control_word(%struct.b43legacy_wldev* %48, i64 %49, i64 %50)
  %52 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %53 = load i32, i32* @B43legacy_MMIO_SHM_DATA, align 4
  %54 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %47, %21
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @b43legacy_shm_control_word(%struct.b43legacy_wldev*, i64, i64) #1

declare dso_local i32 @b43legacy_read16(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_read32(%struct.b43legacy_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
