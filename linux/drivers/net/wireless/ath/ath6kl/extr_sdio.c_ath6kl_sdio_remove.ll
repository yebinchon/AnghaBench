; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32, i32, i32 }
%struct.ath6kl_sdio = type { %struct.ath6kl_sdio*, i32, i32 }

@ATH6KL_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"sdio removed func %d vendor 0x%x device 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_func*)* @ath6kl_sdio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_sdio_remove(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca %struct.ath6kl_sdio*, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  %4 = load i32, i32* @ATH6KL_DBG_BOOT, align 4
  %5 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %6 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %9 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %12 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ath6kl_dbg(i32 %4, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10, i32 %13)
  %15 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %16 = call %struct.ath6kl_sdio* @sdio_get_drvdata(%struct.sdio_func* %15)
  store %struct.ath6kl_sdio* %16, %struct.ath6kl_sdio** %3, align 8
  %17 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %3, align 8
  %18 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ath6kl_stop_txrx(i32 %19)
  %21 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %3, align 8
  %22 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %21, i32 0, i32 2
  %23 = call i32 @cancel_work_sync(i32* %22)
  %24 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %3, align 8
  %25 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ath6kl_core_cleanup(i32 %26)
  %28 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %3, align 8
  %29 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ath6kl_core_destroy(i32 %30)
  %32 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %3, align 8
  %33 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %32, i32 0, i32 0
  %34 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %33, align 8
  %35 = call i32 @kfree(%struct.ath6kl_sdio* %34)
  %36 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %3, align 8
  %37 = call i32 @kfree(%struct.ath6kl_sdio* %36)
  ret void
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local %struct.ath6kl_sdio* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @ath6kl_stop_txrx(i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @ath6kl_core_cleanup(i32) #1

declare dso_local i32 @ath6kl_core_destroy(i32) #1

declare dso_local i32 @kfree(%struct.ath6kl_sdio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
