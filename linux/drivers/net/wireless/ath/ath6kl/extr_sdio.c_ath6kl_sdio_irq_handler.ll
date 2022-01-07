; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }
%struct.ath6kl_sdio = type { i32, i32, i32, i32 }

@ATH6KL_DBG_SDIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"irq\0A\00", align 1
@ECANCELED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_func*)* @ath6kl_sdio_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_sdio_irq_handler(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath6kl_sdio*, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  %5 = load i32, i32* @ATH6KL_DBG_SDIO, align 4
  %6 = call i32 @ath6kl_dbg(i32 %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %8 = call %struct.ath6kl_sdio* @sdio_get_drvdata(%struct.sdio_func* %7)
  store %struct.ath6kl_sdio* %8, %struct.ath6kl_sdio** %4, align 8
  %9 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %4, align 8
  %10 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %9, i32 0, i32 1
  %11 = call i32 @atomic_set(i32* %10, i32 1)
  %12 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %4, align 8
  %13 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @sdio_release_host(i32 %14)
  %16 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %4, align 8
  %17 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ath6kl_hif_intr_bh_handler(i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %4, align 8
  %21 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sdio_claim_host(i32 %22)
  %24 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %4, align 8
  %25 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %24, i32 0, i32 1
  %26 = call i32 @atomic_set(i32* %25, i32 0)
  %27 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %4, align 8
  %28 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %27, i32 0, i32 0
  %29 = call i32 @wake_up(i32* %28)
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %1
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @ECANCELED, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp ne i32 %33, %35
  br label %37

37:                                               ; preds = %32, %1
  %38 = phi i1 [ false, %1 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @WARN_ON(i32 %39)
  ret void
}

declare dso_local i32 @ath6kl_dbg(i32, i8*) #1

declare dso_local %struct.ath6kl_sdio* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @sdio_release_host(i32) #1

declare dso_local i32 @ath6kl_hif_intr_bh_handler(i32) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
