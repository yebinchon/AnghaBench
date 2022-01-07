; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32 }
%struct.ath6kl_sdio = type { i32, %struct.sdio_func* }
%struct.sdio_func = type { i32 }

@ATH6KL_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"sdio power on\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Unable to enable sdio func: %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to config sdio: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*)* @ath6kl_sdio_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_sdio_power_on(%struct.ath6kl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath6kl*, align 8
  %4 = alloca %struct.ath6kl_sdio*, align 8
  %5 = alloca %struct.sdio_func*, align 8
  %6 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %3, align 8
  %7 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %8 = call %struct.ath6kl_sdio* @ath6kl_sdio_priv(%struct.ath6kl* %7)
  store %struct.ath6kl_sdio* %8, %struct.ath6kl_sdio** %4, align 8
  %9 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %4, align 8
  %10 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %9, i32 0, i32 1
  %11 = load %struct.sdio_func*, %struct.sdio_func** %10, align 8
  store %struct.sdio_func* %11, %struct.sdio_func** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %4, align 8
  %13 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

17:                                               ; preds = %1
  %18 = load i32, i32* @ATH6KL_DBG_BOOT, align 4
  %19 = call i32 @ath6kl_dbg(i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %21 = call i32 @sdio_claim_host(%struct.sdio_func* %20)
  %22 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %23 = call i32 @sdio_enable_func(%struct.sdio_func* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @ath6kl_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %30 = call i32 @sdio_release_host(%struct.sdio_func* %29)
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %48

32:                                               ; preds = %17
  %33 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %34 = call i32 @sdio_release_host(%struct.sdio_func* %33)
  %35 = call i32 @msleep(i32 10)
  %36 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %37 = call i32 @ath6kl_sdio_config(%struct.ath6kl* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @ath6kl_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %46

43:                                               ; preds = %32
  %44 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %4, align 8
  %45 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %26, %16
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.ath6kl_sdio* @ath6kl_sdio_priv(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_enable_func(%struct.sdio_func*) #1

declare dso_local i32 @ath6kl_err(i8*, i32) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ath6kl_sdio_config(%struct.ath6kl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
