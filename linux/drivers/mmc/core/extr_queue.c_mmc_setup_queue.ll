; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_queue.c_mmc_setup_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_queue.c_mmc_setup_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_queue = type { i32, i32, i32, i32, i32 }
%struct.mmc_card = type { %struct.TYPE_5__, %struct.mmc_host* }
%struct.TYPE_5__ = type { i32 }
%struct.mmc_host = type { i32, i32, i64, i32 }
%struct.TYPE_6__ = type { i32* }

@QUEUE_FLAG_NONROT = common dso_local global i32 0, align 4
@QUEUE_FLAG_ADD_RANDOM = common dso_local global i32 0, align 4
@BLK_BOUNCE_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"merging was advertised but not possible\00", align 1
@mmc_mq_recovery_handler = common dso_local global i32 0, align 4
@mmc_blk_mq_complete_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_queue*, %struct.mmc_card*)* @mmc_setup_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_setup_queue(%struct.mmc_queue* %0, %struct.mmc_card* %1) #0 {
  %3 = alloca %struct.mmc_queue*, align 8
  %4 = alloca %struct.mmc_card*, align 8
  %5 = alloca %struct.mmc_host*, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_queue* %0, %struct.mmc_queue** %3, align 8
  store %struct.mmc_card* %1, %struct.mmc_card** %4, align 8
  %7 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %8 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %7, i32 0, i32 1
  %9 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  store %struct.mmc_host* %9, %struct.mmc_host** %5, align 8
  store i32 512, i32* %6, align 4
  %10 = load i32, i32* @QUEUE_FLAG_NONROT, align 4
  %11 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %12 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @blk_queue_flag_set(i32 %10, i32 %13)
  %15 = load i32, i32* @QUEUE_FLAG_ADD_RANDOM, align 4
  %16 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %17 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @blk_queue_flag_clear(i32 %15, i32 %18)
  %20 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %21 = call i64 @mmc_can_erase(%struct.mmc_card* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %25 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %28 = call i32 @mmc_queue_setup_discard(i32 %26, %struct.mmc_card* %27)
  br label %29

29:                                               ; preds = %23, %2
  %30 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %31 = call %struct.TYPE_6__* @mmc_dev(%struct.mmc_host* %30)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %37 = call %struct.TYPE_6__* @mmc_dev(%struct.mmc_host* %36)
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %35, %29
  %43 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %44 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @BLK_BOUNCE_HIGH, align 4
  %47 = call i32 @blk_queue_bounce_limit(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %42, %35
  %49 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %50 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %53 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %56 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sdiv i32 %57, 512
  %59 = call i32 @min(i32 %54, i32 %58)
  %60 = call i32 @blk_queue_max_hw_sectors(i32 %51, i32 %59)
  %61 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %62 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %48
  %66 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %67 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %70 = call %struct.TYPE_6__* @mmc_dev(%struct.mmc_host* %69)
  %71 = call i32 @blk_queue_can_use_dma_map_merging(i32 %68, %struct.TYPE_6__* %70)
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 @WARN(i32 %74, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %65, %48
  %77 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %78 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %81 = call i32 @mmc_get_max_segments(%struct.mmc_host* %80)
  %82 = call i32 @blk_queue_max_segments(i32 %79, i32 %81)
  %83 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %84 = call i64 @mmc_card_mmc(%struct.mmc_card* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %76
  %87 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %88 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %86, %76
  %92 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %93 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @blk_queue_logical_block_size(i32 %94, i32 %95)
  %97 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %98 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %111, label %101

101:                                              ; preds = %91
  %102 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %103 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %106 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @round_down(i32 %107, i32 %108)
  %110 = call i32 @blk_queue_max_segment_size(i32 %104, i32 %109)
  br label %111

111:                                              ; preds = %101, %91
  %112 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %113 = call %struct.TYPE_6__* @mmc_dev(%struct.mmc_host* %112)
  %114 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %115 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @queue_max_segment_size(i32 %116)
  %118 = call i32 @dma_set_max_seg_size(%struct.TYPE_6__* %113, i32 %117)
  %119 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %120 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %119, i32 0, i32 3
  %121 = load i32, i32* @mmc_mq_recovery_handler, align 4
  %122 = call i32 @INIT_WORK(i32* %120, i32 %121)
  %123 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %124 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %123, i32 0, i32 2
  %125 = load i32, i32* @mmc_blk_mq_complete_work, align 4
  %126 = call i32 @INIT_WORK(i32* %124, i32 %125)
  %127 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %128 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %127, i32 0, i32 1
  %129 = call i32 @mutex_init(i32* %128)
  %130 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %131 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %130, i32 0, i32 0
  %132 = call i32 @init_waitqueue_head(i32* %131)
  ret void
}

declare dso_local i32 @blk_queue_flag_set(i32, i32) #1

declare dso_local i32 @blk_queue_flag_clear(i32, i32) #1

declare dso_local i64 @mmc_can_erase(%struct.mmc_card*) #1

declare dso_local i32 @mmc_queue_setup_discard(i32, %struct.mmc_card*) #1

declare dso_local %struct.TYPE_6__* @mmc_dev(%struct.mmc_host*) #1

declare dso_local i32 @blk_queue_bounce_limit(i32, i32) #1

declare dso_local i32 @blk_queue_max_hw_sectors(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @blk_queue_can_use_dma_map_merging(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @blk_queue_max_segments(i32, i32) #1

declare dso_local i32 @mmc_get_max_segments(%struct.mmc_host*) #1

declare dso_local i64 @mmc_card_mmc(%struct.mmc_card*) #1

declare dso_local i32 @blk_queue_logical_block_size(i32, i32) #1

declare dso_local i32 @blk_queue_max_segment_size(i32, i32) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @dma_set_max_seg_size(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @queue_max_segment_size(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
