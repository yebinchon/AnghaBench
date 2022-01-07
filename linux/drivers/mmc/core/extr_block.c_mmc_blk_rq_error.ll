; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_rq_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_rq_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_blk_request = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32*, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@CMD_ERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_blk_request*)* @mmc_blk_rq_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_blk_rq_error(%struct.mmc_blk_request* %0) #0 {
  %2 = alloca %struct.mmc_blk_request*, align 8
  store %struct.mmc_blk_request* %0, %struct.mmc_blk_request** %2, align 8
  %3 = load %struct.mmc_blk_request*, %struct.mmc_blk_request** %2, align 8
  %4 = call i32 @mmc_blk_eval_resp_error(%struct.mmc_blk_request* %3)
  %5 = load %struct.mmc_blk_request*, %struct.mmc_blk_request** %2, align 8
  %6 = getelementptr inbounds %struct.mmc_blk_request, %struct.mmc_blk_request* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %38, label %10

10:                                               ; preds = %1
  %11 = load %struct.mmc_blk_request*, %struct.mmc_blk_request** %2, align 8
  %12 = getelementptr inbounds %struct.mmc_blk_request, %struct.mmc_blk_request* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %10
  %17 = load %struct.mmc_blk_request*, %struct.mmc_blk_request** %2, align 8
  %18 = getelementptr inbounds %struct.mmc_blk_request, %struct.mmc_blk_request* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %16
  %23 = load %struct.mmc_blk_request*, %struct.mmc_blk_request** %2, align 8
  %24 = getelementptr inbounds %struct.mmc_blk_request, %struct.mmc_blk_request* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %22
  %29 = load %struct.mmc_blk_request*, %struct.mmc_blk_request** %2, align 8
  %30 = getelementptr inbounds %struct.mmc_blk_request, %struct.mmc_blk_request* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CMD_ERRORS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %28, %22, %16, %10, %1
  %39 = phi i1 [ true, %22 ], [ true, %16 ], [ true, %10 ], [ true, %1 ], [ %37, %28 ]
  %40 = zext i1 %39 to i32
  ret i32 %40
}

declare dso_local i32 @mmc_blk_eval_resp_error(%struct.mmc_blk_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
