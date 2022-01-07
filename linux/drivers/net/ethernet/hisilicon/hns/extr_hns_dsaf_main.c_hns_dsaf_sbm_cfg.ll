; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_sbm_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_sbm_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i32 }

@DSAF_SBM_CFG_REG_0_REG = common dso_local global i64 0, align 8
@DSAF_SBM_CFG_EN_S = common dso_local global i32 0, align 4
@DSAF_SBM_CFG_SHCUT_EN_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsaf_device*)* @hns_dsaf_sbm_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_dsaf_sbm_cfg(%struct.dsaf_device* %0) #0 {
  %2 = alloca %struct.dsaf_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dsaf_device* %0, %struct.dsaf_device** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %32, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %8 = call i32 @HNS_DSAF_SBM_NUM(%struct.dsaf_device* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %5
  %11 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %12 = load i64, i64* @DSAF_SBM_CFG_REG_0_REG, align 8
  %13 = load i32, i32* %4, align 4
  %14 = mul nsw i32 128, %13
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %12, %15
  %17 = call i32 @dsaf_read_dev(%struct.dsaf_device* %11, i64 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @DSAF_SBM_CFG_EN_S, align 4
  %20 = call i32 @dsaf_set_bit(i32 %18, i32 %19, i32 1)
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @DSAF_SBM_CFG_SHCUT_EN_S, align 4
  %23 = call i32 @dsaf_set_bit(i32 %21, i32 %22, i32 0)
  %24 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %25 = load i64, i64* @DSAF_SBM_CFG_REG_0_REG, align 8
  %26 = load i32, i32* %4, align 4
  %27 = mul nsw i32 128, %26
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %25, %28
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @dsaf_write_dev(%struct.dsaf_device* %24, i64 %29, i32 %30)
  br label %32

32:                                               ; preds = %10
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %5

35:                                               ; preds = %5
  ret void
}

declare dso_local i32 @HNS_DSAF_SBM_NUM(%struct.dsaf_device*) #1

declare dso_local i32 @dsaf_read_dev(%struct.dsaf_device*, i64) #1

declare dso_local i32 @dsaf_set_bit(i32, i32, i32) #1

declare dso_local i32 @dsaf_write_dev(%struct.dsaf_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
