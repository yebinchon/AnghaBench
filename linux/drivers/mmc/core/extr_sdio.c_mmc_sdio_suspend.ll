; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_mmc_sdio_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_mmc_sdio_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i64, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @mmc_sdio_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_sdio_suspend(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %3 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %4 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %9 = call i64 @mmc_card_keep_power(%struct.mmc_host* %8)
  %10 = icmp ne i64 %9, 0
  %11 = xor i1 %10, true
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i1 [ false, %1 ], [ %11, %7 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %17 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @mmc_card_set_suspended(i32 %18)
  %20 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %21 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %20, i32 0, i32 2
  %22 = call i32 @cancel_delayed_work_sync(i32* %21)
  %23 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %24 = call i32 @mmc_claim_host(%struct.mmc_host* %23)
  %25 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %26 = call i64 @mmc_card_keep_power(%struct.mmc_host* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %12
  %29 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %30 = call i64 @mmc_card_wake_sdio_irq(%struct.mmc_host* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %34 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @sdio_disable_wide(i32 %35)
  br label %37

37:                                               ; preds = %32, %28, %12
  %38 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %39 = call i64 @mmc_card_keep_power(%struct.mmc_host* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %43 = call i32 @mmc_power_off(%struct.mmc_host* %42)
  br label %55

44:                                               ; preds = %37
  %45 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %46 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %51 = call i32 @mmc_retune_timer_stop(%struct.mmc_host* %50)
  %52 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %53 = call i32 @mmc_retune_needed(%struct.mmc_host* %52)
  br label %54

54:                                               ; preds = %49, %44
  br label %55

55:                                               ; preds = %54, %41
  %56 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %57 = call i32 @mmc_release_host(%struct.mmc_host* %56)
  ret i32 0
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @mmc_card_keep_power(%struct.mmc_host*) #1

declare dso_local i32 @mmc_card_set_suspended(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mmc_claim_host(%struct.mmc_host*) #1

declare dso_local i64 @mmc_card_wake_sdio_irq(%struct.mmc_host*) #1

declare dso_local i32 @sdio_disable_wide(i32) #1

declare dso_local i32 @mmc_power_off(%struct.mmc_host*) #1

declare dso_local i32 @mmc_retune_timer_stop(%struct.mmc_host*) #1

declare dso_local i32 @mmc_retune_needed(%struct.mmc_host*) #1

declare dso_local i32 @mmc_release_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
