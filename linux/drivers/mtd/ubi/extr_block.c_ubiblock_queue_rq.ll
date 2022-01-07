; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_block.c_ubiblock_queue_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_block.c_ubiblock_queue_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubiblock* }
%struct.ubiblock = type { i32 }
%struct.blk_mq_queue_data = type { %struct.request* }
%struct.request = type { i32 }
%struct.ubiblock_pdu = type { i32, i32 }

@BLK_STS_OK = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)* @ubiblock_queue_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubiblock_queue_rq(%struct.blk_mq_hw_ctx* %0, %struct.blk_mq_queue_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca %struct.blk_mq_queue_data*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.ubiblock*, align 8
  %8 = alloca %struct.ubiblock_pdu*, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store %struct.blk_mq_queue_data* %1, %struct.blk_mq_queue_data** %5, align 8
  %9 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %5, align 8
  %10 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %9, i32 0, i32 0
  %11 = load %struct.request*, %struct.request** %10, align 8
  store %struct.request* %11, %struct.request** %6, align 8
  %12 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.ubiblock*, %struct.ubiblock** %15, align 8
  store %struct.ubiblock* %16, %struct.ubiblock** %7, align 8
  %17 = load %struct.request*, %struct.request** %6, align 8
  %18 = call %struct.ubiblock_pdu* @blk_mq_rq_to_pdu(%struct.request* %17)
  store %struct.ubiblock_pdu* %18, %struct.ubiblock_pdu** %8, align 8
  %19 = load %struct.request*, %struct.request** %6, align 8
  %20 = call i32 @req_op(%struct.request* %19)
  switch i32 %20, label %32 [
    i32 128, label %21
  ]

21:                                               ; preds = %2
  %22 = load %struct.ubiblock_pdu*, %struct.ubiblock_pdu** %8, align 8
  %23 = getelementptr inbounds %struct.ubiblock_pdu, %struct.ubiblock_pdu* %22, i32 0, i32 1
  %24 = call i32 @ubi_sgl_init(i32* %23)
  %25 = load %struct.ubiblock*, %struct.ubiblock** %7, align 8
  %26 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ubiblock_pdu*, %struct.ubiblock_pdu** %8, align 8
  %29 = getelementptr inbounds %struct.ubiblock_pdu, %struct.ubiblock_pdu* %28, i32 0, i32 0
  %30 = call i32 @queue_work(i32 %27, i32* %29)
  %31 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %31, i32* %3, align 4
  br label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %21
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.ubiblock_pdu* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @req_op(%struct.request*) #1

declare dso_local i32 @ubi_sgl_init(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
