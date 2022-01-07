; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_hif_power_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_hif_power_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_sdio = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"sdio power off\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"unable to disable sdio function: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"unable to reset sdio: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*)* @ath10k_sdio_hif_power_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_sdio_hif_power_down(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  %3 = alloca %struct.ath10k_sdio*, align 8
  %4 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %5 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %6 = call %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k* %5)
  store %struct.ath10k_sdio* %6, %struct.ath10k_sdio** %3, align 8
  %7 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %3, align 8
  %8 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %56

12:                                               ; preds = %1
  %13 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %14 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %15 = call i32 @ath10k_dbg(%struct.ath10k* %13, i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %3, align 8
  %17 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = call i32 @sdio_claim_host(%struct.TYPE_6__* %18)
  %20 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %3, align 8
  %21 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = call i32 @sdio_disable_func(%struct.TYPE_6__* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %12
  %27 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @ath10k_warn(%struct.ath10k* %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %3, align 8
  %31 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = call i32 @sdio_release_host(%struct.TYPE_6__* %32)
  br label %56

34:                                               ; preds = %12
  %35 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %3, align 8
  %36 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @mmc_hw_reset(i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @ath10k_warn(%struct.ath10k* %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %45, %34
  %50 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %3, align 8
  %51 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = call i32 @sdio_release_host(%struct.TYPE_6__* %52)
  %54 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %3, align 8
  %55 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  br label %56

56:                                               ; preds = %49, %26, %11
  ret void
}

declare dso_local %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

declare dso_local i32 @sdio_claim_host(%struct.TYPE_6__*) #1

declare dso_local i32 @sdio_disable_func(%struct.TYPE_6__*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @sdio_release_host(%struct.TYPE_6__*) #1

declare dso_local i32 @mmc_hw_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
