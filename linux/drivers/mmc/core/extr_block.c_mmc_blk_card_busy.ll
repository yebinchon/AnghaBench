; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_card_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_card_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32 }
%struct.request = type { i32 }
%struct.mmc_queue_req = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i64 }

@READ = common dso_local global i64 0, align 8
@MMC_BLK_TIMEOUT_MS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@R1_EXCEPTION_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, %struct.request*)* @mmc_blk_card_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_blk_card_busy(%struct.mmc_card* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_card*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.mmc_queue_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %9 = load %struct.request*, %struct.request** %5, align 8
  %10 = call %struct.mmc_queue_req* @req_to_mmc_queue_req(%struct.request* %9)
  store %struct.mmc_queue_req* %10, %struct.mmc_queue_req** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %12 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @mmc_host_is_spi(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.request*, %struct.request** %5, align 8
  %18 = call i64 @rq_data_dir(%struct.request* %17)
  %19 = load i64, i64* @READ, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %68

22:                                               ; preds = %16
  %23 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %24 = load i32, i32* @MMC_BLK_TIMEOUT_MS, align 4
  %25 = load %struct.request*, %struct.request** %5, align 8
  %26 = call i32 @card_busy_detect(%struct.mmc_card* %23, i32 %24, %struct.request* %25, i32* %7)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %6, align 8
  %29 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %28, i32 0, i32 0
  %30 = call i32 @mmc_blk_stop_err_bits(%struct.TYPE_6__* %29)
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %22
  %34 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %6, align 8
  %35 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %8, align 4
  br label %45

42:                                               ; preds = %33
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  br label %45

45:                                               ; preds = %42, %40
  %46 = phi i32 [ %41, %40 ], [ %44, %42 ]
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %45, %22
  %48 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %49 = call i64 @mmc_card_mmc(%struct.mmc_card* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @R1_EXCEPTION_EVENT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load i32, i32* @R1_EXCEPTION_EVENT, align 4
  %58 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %6, align 8
  %59 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %57
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %56, %51, %47
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %21
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.mmc_queue_req* @req_to_mmc_queue_req(%struct.request*) #1

declare dso_local i64 @mmc_host_is_spi(i32) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @card_busy_detect(%struct.mmc_card*, i32, %struct.request*, i32*) #1

declare dso_local i32 @mmc_blk_stop_err_bits(%struct.TYPE_6__*) #1

declare dso_local i64 @mmc_card_mmc(%struct.mmc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
