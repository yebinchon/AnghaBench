; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_mmc_sdio_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_mmc_sdio_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MMC_CAP_POWER_OFF_CARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*)* @mmc_sdio_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_sdio_detect(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %4 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %5 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @MMC_CAP_POWER_OFF_CARD, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %12 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @pm_runtime_get_sync(i32* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %10
  %19 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %20 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @pm_runtime_put_noidle(i32* %22)
  br label %45

24:                                               ; preds = %10
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %27 = call i32 @mmc_claim_host(%struct.mmc_host* %26)
  %28 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %29 = call i32 @_mmc_detect_card_removed(%struct.mmc_host* %28)
  store i32 %29, i32* %3, align 4
  %30 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %31 = call i32 @mmc_release_host(%struct.mmc_host* %30)
  %32 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %33 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MMC_CAP_POWER_OFF_CARD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %25
  %39 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %40 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @pm_runtime_put_sync(i32* %42)
  br label %44

44:                                               ; preds = %38, %25
  br label %45

45:                                               ; preds = %44, %18
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %50 = call i32 @mmc_sdio_remove(%struct.mmc_host* %49)
  %51 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %52 = call i32 @mmc_claim_host(%struct.mmc_host* %51)
  %53 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %54 = call i32 @mmc_detach_bus(%struct.mmc_host* %53)
  %55 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %56 = call i32 @mmc_power_off(%struct.mmc_host* %55)
  %57 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %58 = call i32 @mmc_release_host(%struct.mmc_host* %57)
  br label %59

59:                                               ; preds = %48, %45
  ret void
}

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @mmc_claim_host(%struct.mmc_host*) #1

declare dso_local i32 @_mmc_detect_card_removed(%struct.mmc_host*) #1

declare dso_local i32 @mmc_release_host(%struct.mmc_host*) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

declare dso_local i32 @mmc_sdio_remove(%struct.mmc_host*) #1

declare dso_local i32 @mmc_detach_bus(%struct.mmc_host*) #1

declare dso_local i32 @mmc_power_off(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
