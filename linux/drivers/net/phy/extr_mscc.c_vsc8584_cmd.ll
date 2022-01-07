; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc8584_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc8584_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MSCC_EXT_PAGE_ACCESS = common dso_local global i32 0, align 4
@MSCC_PHY_PAGE_EXTENDED_GPIO = common dso_local global i32 0, align 4
@MSCC_PHY_PROC_CMD = common dso_local global i32 0, align 4
@PROC_CMD_NCOMPLETED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@PROC_CMD_NCOMPLETED_TIMEOUT_MS = common dso_local global i32 0, align 4
@PROC_CMD_FAILED = common dso_local global i32 0, align 4
@MSCC_PHY_PAGE_STANDARD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, i32)* @vsc8584_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc8584_cmd(%struct.phy_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %9 = load i32, i32* @MSCC_EXT_PAGE_ACCESS, align 4
  %10 = load i32, i32* @MSCC_PHY_PAGE_EXTENDED_GPIO, align 4
  %11 = call i32 @phy_base_write(%struct.phy_device* %8, i32 %9, i32 %10)
  %12 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %13 = load i32, i32* @MSCC_PHY_PROC_CMD, align 4
  %14 = load i32, i32* @PROC_CMD_NCOMPLETED, align 4
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @phy_base_write(%struct.phy_device* %12, i32 %13, i32 %16)
  %18 = load i64, i64* @jiffies, align 8
  %19 = load i32, i32* @PROC_CMD_NCOMPLETED_TIMEOUT_MS, align 4
  %20 = call i64 @msecs_to_jiffies(i32 %19)
  %21 = add i64 %18, %20
  store i64 %21, i64* %6, align 8
  br label %22

22:                                               ; preds = %42, %2
  %23 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %24 = load i32, i32* @MSCC_PHY_PROC_CMD, align 4
  %25 = call i32 @phy_base_read(%struct.phy_device* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %22
  %27 = load i64, i64* @jiffies, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @time_before(i64 %27, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @PROC_CMD_NCOMPLETED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @PROC_CMD_FAILED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %36, %31, %26
  %43 = phi i1 [ false, %31 ], [ false, %26 ], [ %41, %36 ]
  br i1 %43, label %22, label %44

44:                                               ; preds = %42
  %45 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %46 = load i32, i32* @MSCC_EXT_PAGE_ACCESS, align 4
  %47 = load i32, i32* @MSCC_PHY_PAGE_STANDARD, align 4
  %48 = call i32 @phy_base_write(%struct.phy_device* %45, i32 %46, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @PROC_CMD_FAILED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %65

56:                                               ; preds = %44
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @PROC_CMD_NCOMPLETED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @ETIMEDOUT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %65

64:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %61, %53
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @phy_base_write(%struct.phy_device*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @phy_base_read(%struct.phy_device*, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
