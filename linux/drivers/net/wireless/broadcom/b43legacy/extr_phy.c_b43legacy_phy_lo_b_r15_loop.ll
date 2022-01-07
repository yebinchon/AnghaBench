; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_phy.c_b43legacy_phy_lo_b_r15_loop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_phy.c_b43legacy_phy_lo_b_r15_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43legacy_wldev*)* @b43legacy_phy_lo_b_r15_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43legacy_phy_lo_b_r15_loop(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @local_irq_save(i64 %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %27, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 10
  br i1 %10, label %11, label %30

11:                                               ; preds = %8
  %12 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %13 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %12, i32 21, i32 44960)
  %14 = call i32 @udelay(i32 1)
  %15 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %16 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %15, i32 21, i32 61344)
  %17 = call i32 @udelay(i32 10)
  %18 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %19 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %18, i32 21, i32 65440)
  %20 = call i32 @udelay(i32 40)
  %21 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %22 = call i64 @b43legacy_phy_read(%struct.b43legacy_wldev* %21, i32 44)
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %11
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %8

30:                                               ; preds = %8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @local_irq_restore(i64 %31)
  %33 = call i32 (...) @cond_resched()
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @b43legacy_phy_write(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @b43legacy_phy_read(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
