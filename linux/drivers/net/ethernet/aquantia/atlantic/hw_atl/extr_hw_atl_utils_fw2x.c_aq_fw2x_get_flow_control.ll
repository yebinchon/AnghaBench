; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils_fw2x.c_aq_fw2x_get_flow_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils_fw2x.c_aq_fw2x_get_flow_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }

@HW_ATL_FW2X_CAP_PAUSE = common dso_local global i32 0, align 4
@HW_ATL_FW2X_CAP_ASYM_PAUSE = common dso_local global i32 0, align 4
@AQ_NIC_FC_RX = common dso_local global i32 0, align 4
@AQ_NIC_FC_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*, i32*)* @aq_fw2x_get_flow_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq_fw2x_get_flow_control(%struct.aq_hw_s* %0, i32* %1) #0 {
  %3 = alloca %struct.aq_hw_s*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %7 = call i32 @aq_fw2x_state2_get(%struct.aq_hw_s* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @HW_ATL_FW2X_CAP_PAUSE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @HW_ATL_FW2X_CAP_ASYM_PAUSE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @AQ_NIC_FC_RX, align 4
  %19 = load i32*, i32** %4, align 8
  store i32 %18, i32* %19, align 4
  br label %25

20:                                               ; preds = %12
  %21 = load i32, i32* @AQ_NIC_FC_RX, align 4
  %22 = load i32, i32* @AQ_NIC_FC_TX, align 4
  %23 = or i32 %21, %22
  %24 = load i32*, i32** %4, align 8
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %20, %17
  br label %37

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @HW_ATL_FW2X_CAP_ASYM_PAUSE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @AQ_NIC_FC_TX, align 4
  %33 = load i32*, i32** %4, align 8
  store i32 %32, i32* %33, align 4
  br label %36

34:                                               ; preds = %26
  %35 = load i32*, i32** %4, align 8
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %34, %31
  br label %37

37:                                               ; preds = %36, %25
  ret i32 0
}

declare dso_local i32 @aq_fw2x_state2_get(%struct.aq_hw_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
