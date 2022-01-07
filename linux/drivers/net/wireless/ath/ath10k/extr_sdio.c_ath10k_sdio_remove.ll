; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32, i32, i32 }
%struct.ath10k_sdio = type { i32, %struct.ath10k* }
%struct.ath10k = type { i32 }

@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"sdio removed func %d vendor 0x%x device 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_func*)* @ath10k_sdio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_sdio_remove(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca %struct.ath10k_sdio*, align 8
  %4 = alloca %struct.ath10k*, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  %5 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %6 = call %struct.ath10k_sdio* @sdio_get_drvdata(%struct.sdio_func* %5)
  store %struct.ath10k_sdio* %6, %struct.ath10k_sdio** %3, align 8
  %7 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %3, align 8
  %8 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %7, i32 0, i32 1
  %9 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  store %struct.ath10k* %9, %struct.ath10k** %4, align 8
  %10 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %11 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %12 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %13 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %16 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %19 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ath10k_dbg(%struct.ath10k* %10, i32 %11, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i32 %20)
  %22 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %23 = call i32 @ath10k_core_unregister(%struct.ath10k* %22)
  %24 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %25 = call i32 @ath10k_core_destroy(%struct.ath10k* %24)
  %26 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %3, align 8
  %27 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @flush_workqueue(i32 %28)
  %30 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %3, align 8
  %31 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @destroy_workqueue(i32 %32)
  ret void
}

declare dso_local %struct.ath10k_sdio* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ath10k_core_unregister(%struct.ath10k*) #1

declare dso_local i32 @ath10k_core_destroy(%struct.ath10k*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
