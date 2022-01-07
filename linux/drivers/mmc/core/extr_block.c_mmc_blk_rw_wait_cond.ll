; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_rw_wait_cond.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_rw_wait_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_queue = type { i32, i32, i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_queue*, i32*)* @mmc_blk_rw_wait_cond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_blk_rw_wait_cond(%struct.mmc_queue* %0, i32* %1) #0 {
  %3 = alloca %struct.mmc_queue*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_queue* %0, %struct.mmc_queue** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %8 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %7, i32 0, i32 1
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %12 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  %18 = load i32*, i32** %4, align 8
  store i32 %17, i32* %18, align 4
  store i32 1, i32* %6, align 4
  br label %26

19:                                               ; preds = %2
  %20 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %21 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %19, %15
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %32 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %34 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %33, i32 0, i32 1
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
