; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_configure_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_configure_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_adapter = type { %struct.atl1c_hw }
%struct.atl1c_hw = type { i32, i32, i64, i32 }

@RXQ_RFD_BURST_NUM_MASK = common dso_local global i32 0, align 4
@RXQ_RFD_BURST_NUM_SHIFT = common dso_local global i32 0, align 4
@ATL1C_RX_IPV6_CHKSUM = common dso_local global i32 0, align 4
@IPV6_CHKSUM_CTRL_EN = common dso_local global i32 0, align 4
@athr_l1d_2 = common dso_local global i64 0, align 8
@ASPM_THRUPUT_LIMIT = common dso_local global i32 0, align 4
@ASPM_THRUPUT_LIMIT_100M = common dso_local global i32 0, align 4
@REG_RXQ_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1c_adapter*)* @atl1c_configure_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1c_configure_rx(%struct.atl1c_adapter* %0) #0 {
  %2 = alloca %struct.atl1c_adapter*, align 8
  %3 = alloca %struct.atl1c_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.atl1c_adapter* %0, %struct.atl1c_adapter** %2, align 8
  %5 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %5, i32 0, i32 0
  store %struct.atl1c_hw* %6, %struct.atl1c_hw** %3, align 8
  %7 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %8 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @RXQ_RFD_BURST_NUM_MASK, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @RXQ_RFD_BURST_NUM_SHIFT, align 4
  %13 = shl i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %15 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ATL1C_RX_IPV6_CHKSUM, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @IPV6_CHKSUM_CTRL_EN, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %20, %1
  %25 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %26 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @athr_l1d_2, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %32 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @ASPM_THRUPUT_LIMIT, align 4
  %39 = load i32, i32* @ASPM_THRUPUT_LIMIT_100M, align 4
  %40 = call i32 @FIELD_SETX(i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %36, %30, %24
  %42 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %43 = load i32, i32* @REG_RXQ_CTRL, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %42, i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @FIELD_SETX(i32, i32, i32) #1

declare dso_local i32 @AT_WRITE_REG(%struct.atl1c_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
