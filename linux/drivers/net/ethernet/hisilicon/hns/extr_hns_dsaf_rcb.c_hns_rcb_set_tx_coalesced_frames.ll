; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_rcb.c_hns_rcb_set_tx_coalesced_frames.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_rcb.c_hns_rcb_set_tx_coalesced_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcb_common_cb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"error: not support tx coalesce_frames setting!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RCB_CFG_PKTLINE_REG = common dso_local global i64 0, align 8
@HNS_RCB_TX_PKTLINE_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_rcb_set_tx_coalesced_frames(%struct.rcb_common_cb* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rcb_common_cb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.rcb_common_cb* %0, %struct.rcb_common_cb** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @hns_rcb_get_tx_coalesced_frames(%struct.rcb_common_cb* %10, i64 %11)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %40

17:                                               ; preds = %3
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 1
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %5, align 8
  %22 = getelementptr inbounds %struct.rcb_common_cb, %struct.rcb_common_cb* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %40

29:                                               ; preds = %17
  %30 = load i64, i64* @RCB_CFG_PKTLINE_REG, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @HNS_RCB_TX_PKTLINE_OFFSET, align 8
  %33 = add nsw i64 %31, %32
  %34 = mul nsw i64 %33, 4
  %35 = add nsw i64 %30, %34
  store i64 %35, i64* %9, align 8
  %36 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %5, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @dsaf_write_dev(%struct.rcb_common_cb* %36, i64 %37, i64 %38)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %29, %20, %16
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i64 @hns_rcb_get_tx_coalesced_frames(%struct.rcb_common_cb*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dsaf_write_dev(%struct.rcb_common_cb*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
