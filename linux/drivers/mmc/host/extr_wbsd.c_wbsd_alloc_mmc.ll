; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_alloc_mmc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_alloc_mmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mmc_host = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.wbsd_host = type { i32, i32, i32, %struct.mmc_host* }

@ENOMEM = common dso_local global i32 0, align 4
@wbsd_ops = common dso_local global i32 0, align 4
@MMC_VDD_32_33 = common dso_local global i32 0, align 4
@MMC_VDD_33_34 = common dso_local global i32 0, align 4
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@wbsd_reset_ignore = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @wbsd_alloc_mmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wbsd_alloc_mmc(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.wbsd_host*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.mmc_host* @mmc_alloc_host(i32 24, %struct.device* %6)
  store %struct.mmc_host* %7, %struct.mmc_host** %4, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %9 = icmp ne %struct.mmc_host* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %61

13:                                               ; preds = %1
  %14 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %15 = call %struct.wbsd_host* @mmc_priv(%struct.mmc_host* %14)
  store %struct.wbsd_host* %15, %struct.wbsd_host** %5, align 8
  %16 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %17 = load %struct.wbsd_host*, %struct.wbsd_host** %5, align 8
  %18 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %17, i32 0, i32 3
  store %struct.mmc_host* %16, %struct.mmc_host** %18, align 8
  %19 = load %struct.wbsd_host*, %struct.wbsd_host** %5, align 8
  %20 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %19, i32 0, i32 0
  store i32 -1, i32* %20, align 8
  %21 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %22 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %21, i32 0, i32 9
  store i32* @wbsd_ops, i32** %22, align 8
  %23 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %24 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %23, i32 0, i32 0
  store i32 375000, i32* %24, align 8
  %25 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %26 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %25, i32 0, i32 1
  store i32 24000000, i32* %26, align 4
  %27 = load i32, i32* @MMC_VDD_32_33, align 4
  %28 = load i32, i32* @MMC_VDD_33_34, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %31 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %33 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %34 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 8
  %35 = load %struct.wbsd_host*, %struct.wbsd_host** %5, align 8
  %36 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %35, i32 0, i32 2
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load %struct.wbsd_host*, %struct.wbsd_host** %5, align 8
  %39 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %38, i32 0, i32 1
  %40 = load i32, i32* @wbsd_reset_ignore, align 4
  %41 = call i32 @timer_setup(i32* %39, i32 %40, i32 0)
  %42 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %43 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %42, i32 0, i32 3
  store i32 128, i32* %43, align 4
  %44 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %45 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %44, i32 0, i32 4
  store i32 65536, i32* %45, align 8
  %46 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %47 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %50 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %52 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %51, i32 0, i32 6
  store i32 4087, i32* %52, align 8
  %53 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %54 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %57 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 4
  %58 = load %struct.device*, %struct.device** %3, align 8
  %59 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %60 = call i32 @dev_set_drvdata(%struct.device* %58, %struct.mmc_host* %59)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %13, %10
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.mmc_host* @mmc_alloc_host(i32, %struct.device*) #1

declare dso_local %struct.wbsd_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
