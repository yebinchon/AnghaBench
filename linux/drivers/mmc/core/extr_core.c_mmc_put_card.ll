; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_put_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_put_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, %struct.mmc_host* }
%struct.mmc_host = type { %struct.mmc_ctx* }
%struct.mmc_ctx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_put_card(%struct.mmc_card* %0, %struct.mmc_ctx* %1) #0 {
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca %struct.mmc_ctx*, align 8
  %5 = alloca %struct.mmc_host*, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  store %struct.mmc_ctx* %1, %struct.mmc_ctx** %4, align 8
  %6 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %7 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %6, i32 0, i32 1
  %8 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  store %struct.mmc_host* %8, %struct.mmc_host** %5, align 8
  %9 = load %struct.mmc_ctx*, %struct.mmc_ctx** %4, align 8
  %10 = icmp ne %struct.mmc_ctx* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %13 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %12, i32 0, i32 0
  %14 = load %struct.mmc_ctx*, %struct.mmc_ctx** %13, align 8
  %15 = load %struct.mmc_ctx*, %struct.mmc_ctx** %4, align 8
  %16 = icmp ne %struct.mmc_ctx* %14, %15
  br label %17

17:                                               ; preds = %11, %2
  %18 = phi i1 [ false, %2 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %22 = call i32 @mmc_release_host(%struct.mmc_host* %21)
  %23 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %24 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %23, i32 0, i32 0
  %25 = call i32 @pm_runtime_mark_last_busy(i32* %24)
  %26 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %27 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %26, i32 0, i32 0
  %28 = call i32 @pm_runtime_put_autosuspend(i32* %27)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mmc_release_host(%struct.mmc_host*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
