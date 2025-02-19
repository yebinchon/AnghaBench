; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_check_mac_rcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_check_mac_rcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32 }
%struct.qlcnic_cmd_args = type { i64, i32 }

@QLCNIC_CMD_CONFIG_MAC_VLAN = common dso_local global i64 0, align 8
@QLC_83XX_NO_NIC_RESOURCE = common dso_local global i64 0, align 8
@QLC_83XX_MAC_PRESENT = common dso_local global i64 0, align 8
@QLC_83XX_MAC_ABSENT = common dso_local global i64 0, align 8
@QLCNIC_RCODE_SUCCESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*)* @qlcnic_83xx_check_mac_rcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_83xx_check_mac_rcode(%struct.qlcnic_adapter* %0, %struct.qlcnic_cmd_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.qlcnic_cmd_args*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.qlcnic_cmd_args* %1, %struct.qlcnic_cmd_args** %5, align 8
  %8 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %9 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @QLCNIC_CMD_CONFIG_MAC_VLAN, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %2
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @QLCNIC_MBX_FW(i32 %16, i32 2)
  %18 = call i64 @readl(i32 %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @QLC_83XX_NO_NIC_RESOURCE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %13
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @QLC_83XX_MAC_PRESENT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @QLC_83XX_MAC_ABSENT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27, %23, %13
  %32 = load i32, i32* @QLCNIC_RCODE_SUCCESS, align 4
  %33 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %34 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @QLCNIC_RCODE_SUCCESS, align 4
  store i32 %35, i32* %3, align 4
  br label %40

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %2
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %31
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @QLCNIC_MBX_FW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
