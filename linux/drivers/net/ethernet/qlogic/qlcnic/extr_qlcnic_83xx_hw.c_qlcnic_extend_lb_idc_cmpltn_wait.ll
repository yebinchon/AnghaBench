; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_extend_lb_idc_cmpltn_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_extend_lb_idc_cmpltn_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.qlcnic_hardware_context* }
%struct.qlcnic_hardware_context = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"Received loopback IDC time extend event for 0x%x seconds\0A\00", align 1
@QLC_83XX_LB_MSLEEP_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*, i32*)* @qlcnic_extend_lb_idc_cmpltn_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_extend_lb_idc_cmpltn_wait(%struct.qlcnic_adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.qlcnic_hardware_context*, align 8
  %6 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %7, i32 0, i32 1
  %9 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  store %struct.qlcnic_hardware_context* %9, %struct.qlcnic_hardware_context** %5, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %14 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @netdev_info(i32 %12, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %18 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %19, 1000
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @QLC_83XX_LB_MSLEEP_COUNT, align 4
  %23 = sdiv i32 %21, %22
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, %23
  store i32 %26, i32* %24, align 4
  %27 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %28 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  ret void
}

declare dso_local i32 @netdev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
