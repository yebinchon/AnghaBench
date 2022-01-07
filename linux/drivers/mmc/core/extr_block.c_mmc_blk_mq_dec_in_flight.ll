; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_mq_dec_in_flight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_mq_dec_in_flight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_queue = type { i32*, i32, i32, i32 }
%struct.request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_queue*, %struct.request*)* @mmc_blk_mq_dec_in_flight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_blk_mq_dec_in_flight(%struct.mmc_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.mmc_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_queue* %0, %struct.mmc_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %7 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %8 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %7, i32 0, i32 3
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %12 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %15 = load %struct.request*, %struct.request** %4, align 8
  %16 = call i64 @mmc_issue_type(%struct.mmc_queue* %14, %struct.request* %15)
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %21 = call i64 @mmc_tot_in_flight(%struct.mmc_queue* %20)
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %6, align 4
  %24 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %25 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %24, i32 0, i32 3
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %2
  %31 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %32 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %35 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %34, i32 0, i32 1
  %36 = call i32 @mmc_put_card(i32 %33, i32* %35)
  br label %37

37:                                               ; preds = %30, %2
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @mmc_issue_type(%struct.mmc_queue*, %struct.request*) #1

declare dso_local i64 @mmc_tot_in_flight(%struct.mmc_queue*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mmc_put_card(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
