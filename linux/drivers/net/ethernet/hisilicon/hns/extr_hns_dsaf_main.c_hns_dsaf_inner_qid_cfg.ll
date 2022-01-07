; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_inner_qid_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_inner_qid_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i32, i32 }

@DSAF_SERVICE_NW_NUM = common dso_local global i32 0, align 4
@DSAFV2_SERDES_LBK_0_REG = common dso_local global i64 0, align 8
@DSAFV2_SERDES_LBK_QID_M = common dso_local global i32 0, align 4
@DSAFV2_SERDES_LBK_QID_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsaf_device*)* @hns_dsaf_inner_qid_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_dsaf_inner_qid_cfg(%struct.dsaf_device* %0) #0 {
  %2 = alloca %struct.dsaf_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dsaf_device* %0, %struct.dsaf_device** %2, align 8
  %8 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %9 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @AE_IS_VER1(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %43

14:                                               ; preds = %1
  %15 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %16 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @hns_rcb_get_queue_mode(i32 %17, i32* %4, i32* %3)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %3, align 4
  %21 = mul nsw i32 %19, %20
  store i32 %21, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %40, %14
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @DSAF_SERVICE_NW_NUM, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %28 = load i64, i64* @DSAFV2_SERDES_LBK_0_REG, align 8
  %29 = load i32, i32* %7, align 4
  %30 = mul nsw i32 4, %29
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %28, %31
  %33 = load i32, i32* @DSAFV2_SERDES_LBK_QID_M, align 4
  %34 = load i32, i32* @DSAFV2_SERDES_LBK_QID_S, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @dsaf_set_dev_field(%struct.dsaf_device* %27, i64 %32, i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %26
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %22

43:                                               ; preds = %13, %22
  ret void
}

declare dso_local i64 @AE_IS_VER1(i32) #1

declare dso_local i32 @hns_rcb_get_queue_mode(i32, i32*, i32*) #1

declare dso_local i32 @dsaf_set_dev_field(%struct.dsaf_device*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
