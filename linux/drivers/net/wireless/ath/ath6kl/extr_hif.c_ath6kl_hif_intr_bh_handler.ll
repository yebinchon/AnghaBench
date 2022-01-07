; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_hif.c_ath6kl_hif_intr_bh_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_hif.c_ath6kl_hif_intr_bh_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ath6kl_device* }
%struct.ath6kl_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@ATH6KL_HIF_COMMUNICATION_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_hif_intr_bh_handler(%struct.ath6kl* %0) #0 {
  %2 = alloca %struct.ath6kl*, align 8
  %3 = alloca %struct.ath6kl_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %2, align 8
  %7 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %8 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.ath6kl_device*, %struct.ath6kl_device** %10, align 8
  store %struct.ath6kl_device* %11, %struct.ath6kl_device** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.ath6kl_device*, %struct.ath6kl_device** %3, align 8
  %13 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load i64, i64* @jiffies, align 8
  %17 = load i32, i32* @ATH6KL_HIF_COMMUNICATION_TIMEOUT, align 4
  %18 = call i64 @msecs_to_jiffies(i32 %17)
  %19 = add i64 %16, %18
  store i64 %19, i64* %4, align 8
  br label %20

20:                                               ; preds = %37, %1
  %21 = load i64, i64* @jiffies, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @time_before(i64 %21, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %25, %20
  %30 = phi i1 [ false, %20 ], [ %28, %25 ]
  br i1 %30, label %31, label %38

31:                                               ; preds = %29
  %32 = load %struct.ath6kl_device*, %struct.ath6kl_device** %3, align 8
  %33 = call i32 @proc_pending_irqs(%struct.ath6kl_device* %32, i32* %6)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %38

37:                                               ; preds = %31
  br label %20

38:                                               ; preds = %36, %29
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @proc_pending_irqs(%struct.ath6kl_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
