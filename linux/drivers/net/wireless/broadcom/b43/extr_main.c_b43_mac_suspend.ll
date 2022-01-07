; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_mac_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_mac_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i64, i32 }

@B43_PS_AWAKE = common dso_local global i32 0, align 4
@B43_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43_MACCTL_ENABLED = common dso_local global i32 0, align 4
@B43_MMIO_GEN_IRQ_REASON = common dso_local global i32 0, align 4
@B43_IRQ_MAC_SUSPENDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"MAC suspend failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_mac_suspend(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %5 = call i32 (...) @might_sleep()
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp slt i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @B43_WARN_ON(i32 %10)
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %13 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %68

16:                                               ; preds = %1
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %18 = load i32, i32* @B43_PS_AWAKE, align 4
  %19 = call i32 @b43_power_saving_ctl_bits(%struct.b43_wldev* %17, i32 %18)
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %21 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %22 = load i32, i32* @B43_MACCTL_ENABLED, align 4
  %23 = xor i32 %22, -1
  %24 = call i32 @b43_maskset32(%struct.b43_wldev* %20, i32 %21, i32 %23, i32 0)
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %26 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %27 = call i32 @b43_read32(%struct.b43_wldev* %25, i32 %26)
  store i32 35, i32* %3, align 4
  br label %28

28:                                               ; preds = %42, %16
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %33 = load i32, i32* @B43_MMIO_GEN_IRQ_REASON, align 4
  %34 = call i32 @b43_read32(%struct.b43_wldev* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @B43_IRQ_MAC_SUSPENDED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %69

40:                                               ; preds = %31
  %41 = call i32 @udelay(i32 10)
  br label %42

42:                                               ; preds = %40
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %3, align 4
  br label %28

45:                                               ; preds = %28
  store i32 40, i32* %3, align 4
  br label %46

46:                                               ; preds = %60, %45
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %51 = load i32, i32* @B43_MMIO_GEN_IRQ_REASON, align 4
  %52 = call i32 @b43_read32(%struct.b43_wldev* %50, i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @B43_IRQ_MAC_SUSPENDED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %69

58:                                               ; preds = %49
  %59 = call i32 @msleep(i32 1)
  br label %60

60:                                               ; preds = %58
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %3, align 4
  br label %46

63:                                               ; preds = %46
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %65 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @b43err(i32 %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %63, %1
  br label %69

69:                                               ; preds = %68, %57, %39
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %71 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %71, align 8
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_power_saving_ctl_bits(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_maskset32(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_read32(%struct.b43_wldev*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
