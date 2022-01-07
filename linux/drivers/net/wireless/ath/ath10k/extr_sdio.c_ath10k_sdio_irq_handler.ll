; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }
%struct.ath10k_sdio = type { i32, %struct.ath10k* }
%struct.ath10k = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@ATH10K_SDIO_HIF_COMMUNICATION_TIMEOUT_HZ = common dso_local global i64 0, align 8
@ECANCELED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"failed to process pending SDIO interrupts: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_func*)* @ath10k_sdio_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_sdio_irq_handler(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca %struct.ath10k_sdio*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  %8 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %9 = call %struct.ath10k_sdio* @sdio_get_drvdata(%struct.sdio_func* %8)
  store %struct.ath10k_sdio* %9, %struct.ath10k_sdio** %3, align 8
  %10 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %3, align 8
  %11 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %10, i32 0, i32 1
  %12 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  store %struct.ath10k* %12, %struct.ath10k** %4, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %3, align 8
  %14 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @sdio_release_host(i32 %15)
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i64, i64* @ATH10K_SDIO_HIF_COMMUNICATION_TIMEOUT_HZ, align 8
  %19 = add i64 %17, %18
  store i64 %19, i64* %5, align 8
  br label %20

20:                                               ; preds = %36, %1
  %21 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %22 = call i32 @ath10k_sdio_mbox_proc_pending_irqs(%struct.ath10k* %21, i32* %6)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %38

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26
  %28 = load i64, i64* @jiffies, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @time_before(i64 %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %32, %27
  %37 = phi i1 [ false, %27 ], [ %35, %32 ]
  br i1 %37, label %20, label %38

38:                                               ; preds = %36, %25
  %39 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %40 = call i32 @ath10k_mac_tx_push_pending(%struct.ath10k* %39)
  %41 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %3, align 8
  %42 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @sdio_claim_host(i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %38
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @ECANCELED, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp ne i32 %48, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @ath10k_warn(%struct.ath10k* %53, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %52, %47, %38
  ret void
}

declare dso_local %struct.ath10k_sdio* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @sdio_release_host(i32) #1

declare dso_local i32 @ath10k_sdio_mbox_proc_pending_irqs(%struct.ath10k*, i32*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @ath10k_mac_tx_push_pending(%struct.ath10k*) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
