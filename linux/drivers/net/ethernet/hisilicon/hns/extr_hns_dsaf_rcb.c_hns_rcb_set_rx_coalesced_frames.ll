; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_rcb.c_hns_rcb_set_rx_coalesced_frames.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_rcb.c_hns_rcb_set_rx_coalesced_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcb_common_cb = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HNS_RCB_MAX_COALESCED_FRAMES = common dso_local global i64 0, align 8
@HNS_RCB_MIN_COALESCED_FRAMES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"error: not support coalesce_frames setting!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RCB_CFG_PKTLINE_REG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_rcb_set_rx_coalesced_frames(%struct.rcb_common_cb* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rcb_common_cb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.rcb_common_cb* %0, %struct.rcb_common_cb** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i64 @hns_rcb_get_rx_coalesced_frames(%struct.rcb_common_cb* %9, i64 %10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %47

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %5, align 8
  %19 = getelementptr inbounds %struct.rcb_common_cb, %struct.rcb_common_cb* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %17, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %16
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @HNS_RCB_MAX_COALESCED_FRAMES, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @HNS_RCB_MIN_COALESCED_FRAMES, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26, %22, %16
  %31 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %5, align 8
  %32 = getelementptr inbounds %struct.rcb_common_cb, %struct.rcb_common_cb* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %47

39:                                               ; preds = %26
  %40 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %5, align 8
  %41 = load i64, i64* @RCB_CFG_PKTLINE_REG, align 8
  %42 = load i64, i64* %6, align 8
  %43 = mul nsw i64 %42, 4
  %44 = add nsw i64 %41, %43
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @dsaf_write_dev(%struct.rcb_common_cb* %40, i64 %44, i64 %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %39, %30, %15
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @hns_rcb_get_rx_coalesced_frames(%struct.rcb_common_cb*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dsaf_write_dev(%struct.rcb_common_cb*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
