; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_linkmode_adv_to_fiber_adv_t.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_linkmode_adv_to_fiber_adv_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ETHTOOL_LINK_MODE_1000baseT_Half_BIT = common dso_local global i32 0, align 4
@ADVERTISE_FIBER_1000HALF = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_1000baseT_Full_BIT = common dso_local global i32 0, align 4
@ADVERTISE_FIBER_1000FULL = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_Asym_Pause_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_Pause_BIT = common dso_local global i32 0, align 4
@LPA_PAUSE_ASYM_FIBER = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_FIBER = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM_FIBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*)* @linkmode_adv_to_fiber_adv_t to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linkmode_adv_to_fiber_adv_t(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  store i64* %0, i64** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @ETHTOOL_LINK_MODE_1000baseT_Half_BIT, align 4
  %5 = load i64*, i64** %2, align 8
  %6 = call i64 @linkmode_test_bit(i32 %4, i64* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @ADVERTISE_FIBER_1000HALF, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = load i32, i32* @ETHTOOL_LINK_MODE_1000baseT_Full_BIT, align 4
  %14 = load i64*, i64** %2, align 8
  %15 = call i64 @linkmode_test_bit(i32 %13, i64* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @ADVERTISE_FIBER_1000FULL, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %12
  %22 = load i32, i32* @ETHTOOL_LINK_MODE_Asym_Pause_BIT, align 4
  %23 = load i64*, i64** %2, align 8
  %24 = call i64 @linkmode_test_bit(i32 %22, i64* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load i32, i32* @ETHTOOL_LINK_MODE_Pause_BIT, align 4
  %28 = load i64*, i64** %2, align 8
  %29 = call i64 @linkmode_test_bit(i32 %27, i64* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @LPA_PAUSE_ASYM_FIBER, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %48

35:                                               ; preds = %26, %21
  %36 = load i32, i32* @ETHTOOL_LINK_MODE_Pause_BIT, align 4
  %37 = load i64*, i64** %2, align 8
  %38 = call i64 @linkmode_test_bit(i32 %36, i64* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i32, i32* @ADVERTISE_PAUSE_FIBER, align 4
  %42 = load i32, i32* @ADVERTISE_PAUSE_ASYM_FIBER, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %40, %35
  br label %48

48:                                               ; preds = %47, %31
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @linkmode_test_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
