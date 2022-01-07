; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_status_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_status_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.mmc_queue* }
%struct.mmc_queue = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.mmc_queue_req = type { %struct.mmc_blk_request }
%struct.mmc_blk_request = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32* }

@CMD_ERRORS = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*, i32)* @mmc_blk_status_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_blk_status_error(%struct.request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_queue_req*, align 8
  %7 = alloca %struct.mmc_blk_request*, align 8
  %8 = alloca %struct.mmc_queue*, align 8
  %9 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.request*, %struct.request** %4, align 8
  %11 = call %struct.mmc_queue_req* @req_to_mmc_queue_req(%struct.request* %10)
  store %struct.mmc_queue_req* %11, %struct.mmc_queue_req** %6, align 8
  %12 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %6, align 8
  %13 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %12, i32 0, i32 0
  store %struct.mmc_blk_request* %13, %struct.mmc_blk_request** %7, align 8
  %14 = load %struct.request*, %struct.request** %4, align 8
  %15 = getelementptr inbounds %struct.request, %struct.request* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.mmc_queue*, %struct.mmc_queue** %17, align 8
  store %struct.mmc_queue* %18, %struct.mmc_queue** %8, align 8
  %19 = load %struct.mmc_queue*, %struct.mmc_queue** %8, align 8
  %20 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @mmc_host_is_spi(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %69

27:                                               ; preds = %2
  %28 = load %struct.mmc_blk_request*, %struct.mmc_blk_request** %7, align 8
  %29 = call i32 @mmc_blk_stop_err_bits(%struct.mmc_blk_request* %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.mmc_blk_request*, %struct.mmc_blk_request** %7, align 8
  %31 = getelementptr inbounds %struct.mmc_blk_request, %struct.mmc_blk_request* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CMD_ERRORS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %66, label %39

39:                                               ; preds = %27
  %40 = load %struct.mmc_blk_request*, %struct.mmc_blk_request** %7, align 8
  %41 = getelementptr inbounds %struct.mmc_blk_request, %struct.mmc_blk_request* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %39
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %49
  %55 = load %struct.request*, %struct.request** %4, align 8
  %56 = call i64 @rq_data_dir(%struct.request* %55)
  %57 = load i64, i64* @WRITE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @mmc_blk_in_tran_state(i32 %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  br label %64

64:                                               ; preds = %59, %54
  %65 = phi i1 [ false, %54 ], [ %63, %59 ]
  br label %66

66:                                               ; preds = %64, %49, %39, %27
  %67 = phi i1 [ true, %49 ], [ true, %39 ], [ true, %27 ], [ %65, %64 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %26
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.mmc_queue_req* @req_to_mmc_queue_req(%struct.request*) #1

declare dso_local i64 @mmc_host_is_spi(i32) #1

declare dso_local i32 @mmc_blk_stop_err_bits(%struct.mmc_blk_request*) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @mmc_blk_in_tran_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
