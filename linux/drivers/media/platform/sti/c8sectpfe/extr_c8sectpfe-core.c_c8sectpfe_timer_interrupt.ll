; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/c8sectpfe/extr_c8sectpfe-core.c_c8sectpfe_timer_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/c8sectpfe/extr_c8sectpfe-core.c_c8sectpfe_timer_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c8sectpfei = type { i32, %struct.TYPE_2__, %struct.channel_info** }
%struct.TYPE_2__ = type { i64 }
%struct.channel_info = type { i32, i64 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@DMA_PRDS_TPENABLE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@POLL_MSECS = common dso_local global i32 0, align 4
@fei = common dso_local global %struct.c8sectpfei* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @c8sectpfe_timer_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c8sectpfe_timer_interrupt(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.c8sectpfei*, align 8
  %4 = alloca %struct.channel_info*, align 8
  %5 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %7 = ptrtoint %struct.c8sectpfei* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @timer, align 4
  %10 = call %struct.c8sectpfei* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.c8sectpfei* %10, %struct.c8sectpfei** %3, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %42, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %14 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %11
  %18 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %19 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %18, i32 0, i32 2
  %20 = load %struct.channel_info**, %struct.channel_info*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.channel_info*, %struct.channel_info** %20, i64 %22
  %24 = load %struct.channel_info*, %struct.channel_info** %23, align 8
  store %struct.channel_info* %24, %struct.channel_info** %4, align 8
  %25 = load %struct.channel_info*, %struct.channel_info** %4, align 8
  %26 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %17
  %30 = load %struct.channel_info*, %struct.channel_info** %4, align 8
  %31 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DMA_PRDS_TPENABLE, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i64 @readl(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.channel_info*, %struct.channel_info** %4, align 8
  %39 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %38, i32 0, i32 0
  %40 = call i32 @tasklet_schedule(i32* %39)
  br label %41

41:                                               ; preds = %37, %29, %17
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %11

45:                                               ; preds = %11
  %46 = load i64, i64* @jiffies, align 8
  %47 = load i32, i32* @POLL_MSECS, align 4
  %48 = call i64 @msecs_to_jiffies(i32 %47)
  %49 = add nsw i64 %46, %48
  %50 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %51 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i64 %49, i64* %52, align 8
  %53 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %54 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %53, i32 0, i32 1
  %55 = call i32 @add_timer(%struct.TYPE_2__* %54)
  ret void
}

declare dso_local %struct.c8sectpfei* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
