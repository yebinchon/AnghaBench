; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_cover_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_cover_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_omap_slot = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@jiffies = common dso_local global i64 0, align 8
@OMAP_MMC_COVER_POLL_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @mmc_omap_cover_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_omap_cover_handler(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mmc_omap_slot*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.mmc_omap_slot*
  store %struct.mmc_omap_slot* %6, %struct.mmc_omap_slot** %3, align 8
  %7 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %3, align 8
  %8 = call i32 @mmc_omap_cover_is_open(%struct.mmc_omap_slot* %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %3, align 8
  %10 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = call i32 @mmc_detect_change(%struct.TYPE_2__* %11, i32 0)
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %32

16:                                               ; preds = %1
  %17 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %3, align 8
  %18 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %32

24:                                               ; preds = %16
  %25 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %3, align 8
  %26 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %25, i32 0, i32 0
  %27 = load i64, i64* @jiffies, align 8
  %28 = load i32, i32* @OMAP_MMC_COVER_POLL_DELAY, align 4
  %29 = call i64 @msecs_to_jiffies(i32 %28)
  %30 = add nsw i64 %27, %29
  %31 = call i32 @mod_timer(i32* %26, i64 %30)
  br label %32

32:                                               ; preds = %24, %23, %15
  ret void
}

declare dso_local i32 @mmc_omap_cover_is_open(%struct.mmc_omap_slot*) #1

declare dso_local i32 @mmc_detect_change(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
