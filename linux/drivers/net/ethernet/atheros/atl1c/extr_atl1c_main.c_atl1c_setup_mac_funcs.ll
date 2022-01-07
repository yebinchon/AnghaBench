; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_setup_mac_funcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_setup_mac_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_hw = type { i32, i64, i32 }

@REG_LINK_CTRL = common dso_local global i32 0, align 4
@ATL1C_INTR_MODRT_ENABLE = common dso_local global i32 0, align 4
@ATL1C_TXQ_MODE_ENHANCE = common dso_local global i32 0, align 4
@ATL1C_ASPM_L0S_SUPPORT = common dso_local global i32 0, align 4
@ATL1C_ASPM_L1_SUPPORT = common dso_local global i32 0, align 4
@ATL1C_ASPM_CTRL_MON = common dso_local global i32 0, align 4
@athr_l1c = common dso_local global i64 0, align 8
@athr_l1d = common dso_local global i64 0, align 8
@athr_l1d_2 = common dso_local global i64 0, align 8
@ATL1C_LINK_CAP_1000M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1c_hw*)* @atl1c_setup_mac_funcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1c_setup_mac_funcs(%struct.atl1c_hw* %0) #0 {
  %2 = alloca %struct.atl1c_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.atl1c_hw* %0, %struct.atl1c_hw** %2, align 8
  %4 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %5 = call i32 @atl1c_set_mac_type(%struct.atl1c_hw* %4)
  %6 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %7 = load i32, i32* @REG_LINK_CTRL, align 4
  %8 = call i32 @AT_READ_REG(%struct.atl1c_hw* %6, i32 %7, i32* %3)
  %9 = load i32, i32* @ATL1C_INTR_MODRT_ENABLE, align 4
  %10 = load i32, i32* @ATL1C_TXQ_MODE_ENHANCE, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %13 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @ATL1C_ASPM_L0S_SUPPORT, align 4
  %15 = load i32, i32* @ATL1C_ASPM_L1_SUPPORT, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %18 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load i32, i32* @ATL1C_ASPM_CTRL_MON, align 4
  %22 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %23 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %27 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @athr_l1c, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %1
  %32 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %33 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @athr_l1d, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %39 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @athr_l1d_2, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37, %31, %1
  %44 = load i32, i32* @ATL1C_LINK_CAP_1000M, align 4
  %45 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %46 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %43, %37
  ret i32 0
}

declare dso_local i32 @atl1c_set_mac_type(%struct.atl1c_hw*) #1

declare dso_local i32 @AT_READ_REG(%struct.atl1c_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
