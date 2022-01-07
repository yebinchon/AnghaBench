; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_rcb.c_hns_rcb_wait_tx_ring_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_rcb.c_hns_rcb_wait_tx_ring_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_queue = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@RCB_REG_TAIL = common dso_local global i32 0, align 4
@HNS_MAX_WAIT_CNT = common dso_local global i32 0, align 4
@RCB_REG_HEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"rcb wait timeout, head not equal to tail.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_rcb_wait_tx_ring_clean(%struct.hnae_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hnae_queue*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.hnae_queue* %0, %struct.hnae_queue** %3, align 8
  %7 = load %struct.hnae_queue*, %struct.hnae_queue** %3, align 8
  %8 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %7, i32 0, i32 1
  %9 = load i32, i32* @RCB_REG_TAIL, align 4
  %10 = call i64 @dsaf_read_dev(i32* %8, i32 %9)
  store i64 %10, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %25, %1
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @HNS_MAX_WAIT_CNT, align 4
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = load %struct.hnae_queue*, %struct.hnae_queue** %3, align 8
  %18 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %17, i32 0, i32 1
  %19 = load i32, i32* @RCB_REG_HEAD, align 4
  %20 = call i64 @dsaf_read_dev(i32* %18, i32 %19)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %27

25:                                               ; preds = %16
  %26 = call i32 @usleep_range(i32 100, i32 200)
  br label %11

27:                                               ; preds = %24, %11
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @HNS_MAX_WAIT_CNT, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load %struct.hnae_queue*, %struct.hnae_queue** %3, align 8
  %33 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %31
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @dsaf_read_dev(i32*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
