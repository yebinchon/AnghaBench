; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_phy.c_b43legacy_power_saving_ctl_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_phy.c_b43legacy_power_saving_ctl_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@B43legacy_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43legacy_MACCTL_HWPS = common dso_local global i32 0, align 4
@B43legacy_MACCTL_AWAKE = common dso_local global i32 0, align 4
@B43legacy_SHM_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_power_saving_ctl_bits(%struct.b43legacy_wldev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.b43legacy_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %11, %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %15, %12
  %17 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %18 = load i32, i32* @B43legacy_MMIO_MACCTL, align 4
  %19 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* @B43legacy_MACCTL_HWPS, align 4
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %8, align 4
  br label %31

26:                                               ; preds = %16
  %27 = load i32, i32* @B43legacy_MACCTL_HWPS, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %26, %22
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* @B43legacy_MACCTL_AWAKE, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %43

38:                                               ; preds = %31
  %39 = load i32, i32* @B43legacy_MACCTL_AWAKE, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %38, %34
  %44 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %45 = load i32, i32* @B43legacy_MMIO_MACCTL, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %44, i32 %45, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %43
  %51 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %52 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp sge i32 %56, 5
  br i1 %57, label %58, label %74

58:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %70, %58
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 100
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %64 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %65 = call i32 @b43legacy_shm_read32(%struct.b43legacy_wldev* %63, i32 %64, i32 64)
  %66 = icmp ne i32 %65, 4
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %73

68:                                               ; preds = %62
  %69 = call i32 @udelay(i32 10)
  br label %70

70:                                               ; preds = %68
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %59

73:                                               ; preds = %67, %59
  br label %74

74:                                               ; preds = %73, %50, %43
  ret void
}

declare dso_local i32 @b43legacy_read32(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_write32(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_shm_read32(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
