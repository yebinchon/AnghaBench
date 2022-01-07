; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c___phy_write_mcb_s6g.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c___phy_write_mcb_s6g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@PHY_MCB_TARGET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@PROC_CMD_NCOMPLETED_TIMEOUT_MS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, i32, i32, i32)* @__phy_write_mcb_s6g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__phy_write_mcb_s6g(%struct.phy_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %14 = load i32, i32* @PHY_MCB_TARGET, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = shl i32 1, %17
  %19 = or i32 %16, %18
  %20 = call i32 @vsc85xx_csr_ctrl_phy_write(%struct.phy_device* %13, i32 %14, i32 %15, i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %64

26:                                               ; preds = %4
  %27 = load i64, i64* @jiffies, align 8
  %28 = load i32, i32* @PROC_CMD_NCOMPLETED_TIMEOUT_MS, align 4
  %29 = call i64 @msecs_to_jiffies(i32 %28)
  %30 = add i64 %27, %29
  store i64 %30, i64* %10, align 8
  br label %31

31:                                               ; preds = %53, %26
  %32 = call i32 @usleep_range(i32 500, i32 1000)
  %33 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %34 = load i32, i32* @PHY_MCB_TARGET, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @vsc85xx_csr_ctrl_phy_read(%struct.phy_device* %33, i32 %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %64

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* @jiffies, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i64 @time_before(i64 %44, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %48, %43
  %54 = phi i1 [ false, %43 ], [ %52, %48 ]
  br i1 %54, label %31, label %55

55:                                               ; preds = %53
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @ETIMEDOUT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %64

63:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %60, %39, %23
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @vsc85xx_csr_ctrl_phy_write(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @vsc85xx_csr_ctrl_phy_read(%struct.phy_device*, i32, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
