; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_rcb.c_hns_rcb_get_coalesce_usecs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_rcb.c_hns_rcb_get_coalesce_usecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcb_common_cb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RCB_CFG_OVERTIME_REG = common dso_local global i64 0, align 8
@HNS_RCB_CLK_FREQ_MHZ = common dso_local global i32 0, align 4
@RCB_PORT_CFG_OVERTIME_REG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_rcb_get_coalesce_usecs(%struct.rcb_common_cb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rcb_common_cb*, align 8
  %5 = alloca i32, align 4
  store %struct.rcb_common_cb* %0, %struct.rcb_common_cb** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %4, align 8
  %7 = getelementptr inbounds %struct.rcb_common_cb, %struct.rcb_common_cb* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @AE_IS_VER1(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %4, align 8
  %15 = load i64, i64* @RCB_CFG_OVERTIME_REG, align 8
  %16 = call i32 @dsaf_read_dev(%struct.rcb_common_cb* %14, i64 %15)
  %17 = load i32, i32* @HNS_RCB_CLK_FREQ_MHZ, align 4
  %18 = sdiv i32 %16, %17
  store i32 %18, i32* %3, align 4
  br label %27

19:                                               ; preds = %2
  %20 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %4, align 8
  %21 = load i64, i64* @RCB_PORT_CFG_OVERTIME_REG, align 8
  %22 = load i32, i32* %5, align 4
  %23 = mul nsw i32 %22, 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %21, %24
  %26 = call i32 @dsaf_read_dev(%struct.rcb_common_cb* %20, i64 %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %19, %13
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i64 @AE_IS_VER1(i32) #1

declare dso_local i32 @dsaf_read_dev(%struct.rcb_common_cb*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
