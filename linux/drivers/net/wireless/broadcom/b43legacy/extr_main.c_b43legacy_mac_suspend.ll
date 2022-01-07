; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_mac_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_mac_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@B43legacy_MMIO_GEN_IRQ_MASK = common dso_local global i32 0, align 4
@B43legacy_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43legacy_MACCTL_ENABLED = common dso_local global i32 0, align 4
@B43legacy_MMIO_GEN_IRQ_REASON = common dso_local global i32 0, align 4
@B43legacy_IRQ_MAC_SUSPENDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"MAC suspend failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_mac_suspend(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %5 = call i32 (...) @might_sleep()
  %6 = call i32 (...) @irqs_disabled()
  %7 = call i32 @B43legacy_WARN_ON(i32 %6)
  %8 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %9 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @B43legacy_WARN_ON(i32 %12)
  %14 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %15 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %70

18:                                               ; preds = %1
  %19 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %20 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @spin_lock_irq(i32* %22)
  %24 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %25 = load i32, i32* @B43legacy_MMIO_GEN_IRQ_MASK, align 4
  %26 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %24, i32 %25, i32 0)
  %27 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %28 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_irq(i32* %30)
  %32 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %33 = call i32 @b43legacy_synchronize_irq(%struct.b43legacy_wldev* %32)
  %34 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %35 = call i32 @b43legacy_power_saving_ctl_bits(%struct.b43legacy_wldev* %34, i32 -1, i32 1)
  %36 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %37 = load i32, i32* @B43legacy_MMIO_MACCTL, align 4
  %38 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %39 = load i32, i32* @B43legacy_MMIO_MACCTL, align 4
  %40 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %38, i32 %39)
  %41 = load i32, i32* @B43legacy_MACCTL_ENABLED, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %36, i32 %37, i32 %43)
  %45 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %46 = load i32, i32* @B43legacy_MMIO_GEN_IRQ_REASON, align 4
  %47 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %45, i32 %46)
  store i32 40, i32* %3, align 4
  br label %48

48:                                               ; preds = %62, %18
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %48
  %52 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %53 = load i32, i32* @B43legacy_MMIO_GEN_IRQ_REASON, align 4
  %54 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @B43legacy_IRQ_MAC_SUSPENDED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %71

60:                                               ; preds = %51
  %61 = call i32 @msleep(i32 1)
  br label %62

62:                                               ; preds = %60
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %3, align 4
  br label %48

65:                                               ; preds = %48
  %66 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %67 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = call i32 @b43legacyerr(%struct.TYPE_2__* %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %65, %1
  br label %71

71:                                               ; preds = %70, %59
  %72 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %73 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %73, align 8
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @b43legacy_write32(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @b43legacy_synchronize_irq(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_power_saving_ctl_bits(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_read32(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @b43legacyerr(%struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
