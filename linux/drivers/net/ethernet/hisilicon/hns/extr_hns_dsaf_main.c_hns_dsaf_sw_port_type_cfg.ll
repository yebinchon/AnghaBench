; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_sw_port_type_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_sw_port_type_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i32 }

@DSAF_SW_PORT_NUM = common dso_local global i32 0, align 4
@DSAF_SW_PORT_TYPE_0_REG = common dso_local global i64 0, align 8
@DSAF_SW_PORT_TYPE_M = common dso_local global i32 0, align 4
@DSAF_SW_PORT_TYPE_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsaf_device*, i32)* @hns_dsaf_sw_port_type_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_dsaf_sw_port_type_cfg(%struct.dsaf_device* %0, i32 %1) #0 {
  %3 = alloca %struct.dsaf_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dsaf_device* %0, %struct.dsaf_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %21, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @DSAF_SW_PORT_NUM, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %6
  %11 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %12 = load i64, i64* @DSAF_SW_PORT_TYPE_0_REG, align 8
  %13 = load i32, i32* %5, align 4
  %14 = mul nsw i32 4, %13
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %12, %15
  %17 = load i32, i32* @DSAF_SW_PORT_TYPE_M, align 4
  %18 = load i32, i32* @DSAF_SW_PORT_TYPE_S, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @dsaf_set_dev_field(%struct.dsaf_device* %11, i64 %16, i32 %17, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %10
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %6

24:                                               ; preds = %6
  ret void
}

declare dso_local i32 @dsaf_set_dev_field(%struct.dsaf_device*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
