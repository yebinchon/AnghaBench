; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_mac_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_mac_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@B43legacy_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43legacy_MACCTL_ENABLED = common dso_local global i32 0, align 4
@B43legacy_MMIO_GEN_IRQ_REASON = common dso_local global i32 0, align 4
@B43legacy_IRQ_MAC_SUSPENDED = common dso_local global i32 0, align 4
@B43legacy_MMIO_GEN_IRQ_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_mac_enable(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %3 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %4 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add nsw i64 %5, -1
  store i64 %6, i64* %4, align 8
  %7 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %8 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp slt i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @B43legacy_WARN_ON(i32 %11)
  %13 = call i32 (...) @irqs_disabled()
  %14 = call i32 @B43legacy_WARN_ON(i32 %13)
  %15 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %16 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %56

19:                                               ; preds = %1
  %20 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %21 = load i32, i32* @B43legacy_MMIO_MACCTL, align 4
  %22 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %23 = load i32, i32* @B43legacy_MMIO_MACCTL, align 4
  %24 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %22, i32 %23)
  %25 = load i32, i32* @B43legacy_MACCTL_ENABLED, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %20, i32 %21, i32 %26)
  %28 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %29 = load i32, i32* @B43legacy_MMIO_GEN_IRQ_REASON, align 4
  %30 = load i32, i32* @B43legacy_IRQ_MAC_SUSPENDED, align 4
  %31 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %28, i32 %29, i32 %30)
  %32 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %33 = load i32, i32* @B43legacy_MMIO_MACCTL, align 4
  %34 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %32, i32 %33)
  %35 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %36 = load i32, i32* @B43legacy_MMIO_GEN_IRQ_REASON, align 4
  %37 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %35, i32 %36)
  %38 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %39 = call i32 @b43legacy_power_saving_ctl_bits(%struct.b43legacy_wldev* %38, i32 -1, i32 -1)
  %40 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %41 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @spin_lock_irq(i32* %43)
  %45 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %46 = load i32, i32* @B43legacy_MMIO_GEN_IRQ_MASK, align 4
  %47 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %48 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %45, i32 %46, i32 %49)
  %51 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %52 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock_irq(i32* %54)
  br label %56

56:                                               ; preds = %19, %1
  ret void
}

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @b43legacy_write32(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_read32(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_power_saving_ctl_bits(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
