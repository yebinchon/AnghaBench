; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_port_work_rate_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_port_work_rate_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i32 }

@DSAF_XGE_GE_WORK_MODE_0_REG = common dso_local global i64 0, align 8
@DSAF_PORT_RATE_10000 = common dso_local global i32 0, align 4
@DSAF_XGE_GE_WORK_MODE_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsaf_device*, i32, i32)* @hns_dsaf_port_work_rate_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_dsaf_port_work_rate_cfg(%struct.dsaf_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dsaf_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dsaf_device* %0, %struct.dsaf_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %9 = load i64, i64* @DSAF_XGE_GE_WORK_MODE_0_REG, align 8
  %10 = load i32, i32* %5, align 4
  %11 = mul nsw i32 4, %10
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %9, %12
  %14 = call i32 @dsaf_read_dev(%struct.dsaf_device* %8, i64 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @DSAF_PORT_RATE_10000, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @DSAF_XGE_GE_WORK_MODE_S, align 4
  %21 = call i32 @dsaf_set_bit(i32 %19, i32 %20, i32 1)
  br label %26

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @DSAF_XGE_GE_WORK_MODE_S, align 4
  %25 = call i32 @dsaf_set_bit(i32 %23, i32 %24, i32 0)
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %28 = load i64, i64* @DSAF_XGE_GE_WORK_MODE_0_REG, align 8
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 4, %29
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %28, %31
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @dsaf_write_dev(%struct.dsaf_device* %27, i64 %32, i32 %33)
  %35 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @hns_dsaf_pfc_unit_cnt(%struct.dsaf_device* %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @dsaf_read_dev(%struct.dsaf_device*, i64) #1

declare dso_local i32 @dsaf_set_bit(i32, i32, i32) #1

declare dso_local i32 @dsaf_write_dev(%struct.dsaf_device*, i64, i32) #1

declare dso_local i32 @hns_dsaf_pfc_unit_cnt(%struct.dsaf_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
