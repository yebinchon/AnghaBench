; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_set_sdio_pm_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_set_sdio_pm_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32 }
%struct.ath6kl_sdio = type { %struct.sdio_func* }
%struct.sdio_func = type { i32 }

@ATH6KL_DBG_SUSPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"sdio suspend pm_caps 0x%x\0A\00", align 1
@MMC_PM_WAKE_SDIO_IRQ = common dso_local global i32 0, align 4
@MMC_PM_KEEP_POWER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"set sdio keep pwr flag failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"set sdio wake irq flag failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*)* @ath6kl_set_sdio_pm_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_set_sdio_pm_caps(%struct.ath6kl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath6kl*, align 8
  %4 = alloca %struct.ath6kl_sdio*, align 8
  %5 = alloca %struct.sdio_func*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %3, align 8
  %8 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %9 = call %struct.ath6kl_sdio* @ath6kl_sdio_priv(%struct.ath6kl* %8)
  store %struct.ath6kl_sdio* %9, %struct.ath6kl_sdio** %4, align 8
  %10 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %4, align 8
  %11 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %10, i32 0, i32 0
  %12 = load %struct.sdio_func*, %struct.sdio_func** %11, align 8
  store %struct.sdio_func* %12, %struct.sdio_func** %5, align 8
  %13 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %14 = call i32 @sdio_get_host_pm_caps(%struct.sdio_func* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @ATH6KL_DBG_SUSPEND, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @ath6kl_dbg(i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @MMC_PM_WAKE_SDIO_IRQ, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @MMC_PM_KEEP_POWER, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22, %1
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %51

30:                                               ; preds = %22
  %31 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %32 = load i32, i32* @MMC_PM_KEEP_POWER, align 4
  %33 = call i32 @sdio_set_host_pm_flags(%struct.sdio_func* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @ath6kl_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %51

40:                                               ; preds = %30
  %41 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %42 = load i32, i32* @MMC_PM_WAKE_SDIO_IRQ, align 4
  %43 = call i32 @sdio_set_host_pm_flags(%struct.sdio_func* %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @ath6kl_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %46, %40
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %36, %27
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.ath6kl_sdio* @ath6kl_sdio_priv(%struct.ath6kl*) #1

declare dso_local i32 @sdio_get_host_pm_caps(%struct.sdio_func*) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32) #1

declare dso_local i32 @sdio_set_host_pm_flags(%struct.sdio_func*, i32) #1

declare dso_local i32 @ath6kl_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
