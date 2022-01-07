; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_queue.c_mmc_queue_setup_discard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_queue.c_mmc_queue_setup_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_card = type { i32 }

@QUEUE_FLAG_DISCARD = common dso_local global i32 0, align 4
@QUEUE_FLAG_SECERASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*, %struct.mmc_card*)* @mmc_queue_setup_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_queue_setup_discard(%struct.request_queue* %0, %struct.mmc_card* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.mmc_card*, align 8
  %5 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.mmc_card* %1, %struct.mmc_card** %4, align 8
  %6 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %7 = call i32 @mmc_calc_max_discard(%struct.mmc_card* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %42

11:                                               ; preds = %2
  %12 = load i32, i32* @QUEUE_FLAG_DISCARD, align 4
  %13 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %14 = call i32 @blk_queue_flag_set(i32 %12, %struct.request_queue* %13)
  %15 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @blk_queue_max_discard_sectors(%struct.request_queue* %15, i32 %16)
  %18 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %19 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 9
  %22 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %23 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %26 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %11
  %31 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %32 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  br label %34

34:                                               ; preds = %30, %11
  %35 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %36 = call i64 @mmc_can_secure_erase_trim(%struct.mmc_card* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @QUEUE_FLAG_SECERASE, align 4
  %40 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %41 = call i32 @blk_queue_flag_set(i32 %39, %struct.request_queue* %40)
  br label %42

42:                                               ; preds = %10, %38, %34
  ret void
}

declare dso_local i32 @mmc_calc_max_discard(%struct.mmc_card*) #1

declare dso_local i32 @blk_queue_flag_set(i32, %struct.request_queue*) #1

declare dso_local i32 @blk_queue_max_discard_sectors(%struct.request_queue*, i32) #1

declare dso_local i64 @mmc_can_secure_erase_trim(%struct.mmc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
