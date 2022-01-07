; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_reset_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_reset_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_mmc_host = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@REG_GCTRL = common dso_local global i32 0, align 4
@SDXC_HARDWARE_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"fatal err reset timeout\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sunxi_mmc_host*)* @sunxi_mmc_reset_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_mmc_reset_host(%struct.sunxi_mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sunxi_mmc_host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.sunxi_mmc_host* %0, %struct.sunxi_mmc_host** %3, align 8
  %6 = load i64, i64* @jiffies, align 8
  %7 = call i64 @msecs_to_jiffies(i32 250)
  %8 = add i64 %6, %7
  store i64 %8, i64* %4, align 8
  %9 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %10 = load i32, i32* @REG_GCTRL, align 4
  %11 = load i32, i32* @SDXC_HARDWARE_RESET, align 4
  %12 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %9, i32 %10, i32 %11)
  br label %13

13:                                               ; preds = %27, %1
  %14 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %15 = load i32, i32* @REG_GCTRL, align 4
  %16 = call i32 @mmc_readl(%struct.sunxi_mmc_host* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %13
  %18 = load i64, i64* @jiffies, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @time_before(i64 %18, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @SDXC_HARDWARE_RESET, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i1 [ false, %17 ], [ %26, %22 ]
  br i1 %28, label %13, label %29

29:                                               ; preds = %27
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SDXC_HARDWARE_RESET, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %36 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mmc_dev(i32 %37)
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %43

42:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %34
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mmc_writel(%struct.sunxi_mmc_host*, i32, i32) #1

declare dso_local i32 @mmc_readl(%struct.sunxi_mmc_host*, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
