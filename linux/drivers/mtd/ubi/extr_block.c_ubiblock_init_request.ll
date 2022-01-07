; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_block.c_ubiblock_init_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_block.c_ubiblock_init_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { i32 }
%struct.request = type { i32 }
%struct.ubiblock_pdu = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UBI_MAX_SG_COUNT = common dso_local global i32 0, align 4
@ubiblock_do_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)* @ubiblock_init_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubiblock_init_request(%struct.blk_mq_tag_set* %0, %struct.request* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.blk_mq_tag_set*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubiblock_pdu*, align 8
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.request*, %struct.request** %6, align 8
  %11 = call %struct.ubiblock_pdu* @blk_mq_rq_to_pdu(%struct.request* %10)
  store %struct.ubiblock_pdu* %11, %struct.ubiblock_pdu** %9, align 8
  %12 = load %struct.ubiblock_pdu*, %struct.ubiblock_pdu** %9, align 8
  %13 = getelementptr inbounds %struct.ubiblock_pdu, %struct.ubiblock_pdu* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @UBI_MAX_SG_COUNT, align 4
  %17 = call i32 @sg_init_table(i32 %15, i32 %16)
  %18 = load %struct.ubiblock_pdu*, %struct.ubiblock_pdu** %9, align 8
  %19 = getelementptr inbounds %struct.ubiblock_pdu, %struct.ubiblock_pdu* %18, i32 0, i32 0
  %20 = load i32, i32* @ubiblock_do_work, align 4
  %21 = call i32 @INIT_WORK(i32* %19, i32 %20)
  ret i32 0
}

declare dso_local %struct.ubiblock_pdu* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @sg_init_table(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
