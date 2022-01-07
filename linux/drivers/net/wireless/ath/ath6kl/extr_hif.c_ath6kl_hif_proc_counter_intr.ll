; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_hif.c_ath6kl_hif_proc_counter_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_hif.c_ath6kl_hif_proc_counter_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ATH6KL_DBG_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"counter interrupt\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"valid interrupt source(s) in COUNTER_INT_STATUS: 0x%x\0A\00", align 1
@ATH6KL_TARGET_DEBUG_INTR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl_device*)* @ath6kl_hif_proc_counter_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_hif_proc_counter_intr(%struct.ath6kl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath6kl_device*, align 8
  %4 = alloca i32, align 4
  store %struct.ath6kl_device* %0, %struct.ath6kl_device** %3, align 8
  %5 = load i32, i32* @ATH6KL_DBG_IRQ, align 4
  %6 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.ath6kl_device*, %struct.ath6kl_device** %3, align 8
  %8 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ath6kl_device*, %struct.ath6kl_device** %3, align 8
  %12 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %10, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @ATH6KL_DBG_IRQ, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %16, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @ATH6KL_TARGET_DEBUG_INTR_MASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.ath6kl_device*, %struct.ath6kl_device** %3, align 8
  %25 = call i32 @ath6kl_hif_proc_dbg_intr(%struct.ath6kl_device* %24)
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, ...) #1

declare dso_local i32 @ath6kl_hif_proc_dbg_intr(%struct.ath6kl_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
