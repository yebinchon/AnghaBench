; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32 }
%struct.ath6kl_sdio = type { i32, i32 }

@ATH6KL_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"sdio power off\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*)* @ath6kl_sdio_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_sdio_power_off(%struct.ath6kl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath6kl*, align 8
  %4 = alloca %struct.ath6kl_sdio*, align 8
  %5 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %3, align 8
  %6 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %7 = call %struct.ath6kl_sdio* @ath6kl_sdio_priv(%struct.ath6kl* %6)
  store %struct.ath6kl_sdio* %7, %struct.ath6kl_sdio** %4, align 8
  %8 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %4, align 8
  %9 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

13:                                               ; preds = %1
  %14 = load i32, i32* @ATH6KL_DBG_BOOT, align 4
  %15 = call i32 @ath6kl_dbg(i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %4, align 8
  %17 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sdio_claim_host(i32 %18)
  %20 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %4, align 8
  %21 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sdio_disable_func(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %4, align 8
  %25 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @sdio_release_host(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %13
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %36

32:                                               ; preds = %13
  %33 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %4, align 8
  %34 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %32, %30, %12
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.ath6kl_sdio* @ath6kl_sdio_priv(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @sdio_disable_func(i32) #1

declare dso_local i32 @sdio_release_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
