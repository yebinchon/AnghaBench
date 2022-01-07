; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_cqe_issue_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_cqe_issue_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_queue = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.request = type { i32 }
%struct.mmc_queue_req = type { i32 }
%struct.mmc_request = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@MMC_SWITCH = common dso_local global i32 0, align 4
@MMC_SWITCH_MODE_WRITE_BYTE = common dso_local global i32 0, align 4
@EXT_CSD_FLUSH_CACHE = common dso_local global i32 0, align 4
@EXT_CSD_CMD_SET_NORMAL = common dso_local global i32 0, align 4
@MMC_CMD_AC = common dso_local global i32 0, align 4
@MMC_RSP_R1B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_queue*, %struct.request*)* @mmc_blk_cqe_issue_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_blk_cqe_issue_flush(%struct.mmc_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.mmc_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.mmc_queue_req*, align 8
  %6 = alloca %struct.mmc_request*, align 8
  store %struct.mmc_queue* %0, %struct.mmc_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %7 = load %struct.request*, %struct.request** %4, align 8
  %8 = call %struct.mmc_queue_req* @req_to_mmc_queue_req(%struct.request* %7)
  store %struct.mmc_queue_req* %8, %struct.mmc_queue_req** %5, align 8
  %9 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %5, align 8
  %10 = load %struct.request*, %struct.request** %4, align 8
  %11 = call %struct.mmc_request* @mmc_blk_cqe_prep_dcmd(%struct.mmc_queue_req* %9, %struct.request* %10)
  store %struct.mmc_request* %11, %struct.mmc_request** %6, align 8
  %12 = load i32, i32* @MMC_SWITCH, align 4
  %13 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %14 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store i32 %12, i32* %16, align 4
  %17 = load i32, i32* @MMC_SWITCH_MODE_WRITE_BYTE, align 4
  %18 = shl i32 %17, 24
  %19 = load i32, i32* @EXT_CSD_FLUSH_CACHE, align 4
  %20 = shl i32 %19, 16
  %21 = or i32 %18, %20
  %22 = or i32 %21, 256
  %23 = load i32, i32* @EXT_CSD_CMD_SET_NORMAL, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %26 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* @MMC_CMD_AC, align 4
  %30 = load i32, i32* @MMC_RSP_R1B, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %33 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32 %31, i32* %35, align 4
  %36 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %37 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %42 = call i32 @mmc_blk_cqe_start_req(i32 %40, %struct.mmc_request* %41)
  ret i32 %42
}

declare dso_local %struct.mmc_queue_req* @req_to_mmc_queue_req(%struct.request*) #1

declare dso_local %struct.mmc_request* @mmc_blk_cqe_prep_dcmd(%struct.mmc_queue_req*, %struct.request*) #1

declare dso_local i32 @mmc_blk_cqe_start_req(i32, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
