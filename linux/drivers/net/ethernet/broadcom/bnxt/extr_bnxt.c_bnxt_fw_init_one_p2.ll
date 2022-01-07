; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_fw_init_one_p2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_fw_init_one_p2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"hwrm query capability failure rc: %x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"hwrm query adv flow mgnt failure rc: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"hwrm query error recovery failure rc: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @bnxt_fw_init_one_p2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_fw_init_one_p2(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  %5 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %6 = call i32 @bnxt_hwrm_func_qcaps(%struct.bnxt* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %11 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @netdev_err(i32 %12, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %66

17:                                               ; preds = %1
  %18 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %19 = call i32 @bnxt_hwrm_cfa_adv_flow_mgnt_qcaps(%struct.bnxt* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %24 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @netdev_warn(i32 %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %22, %17
  %29 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %30 = call i32 @bnxt_hwrm_error_recovery_qcfg(%struct.bnxt* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %35 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @netdev_warn(i32 %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %33, %28
  %40 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %41 = call i32 @bnxt_hwrm_func_drv_rgtr(%struct.bnxt* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %66

47:                                               ; preds = %39
  %48 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %49 = call i32 @bnxt_hwrm_func_rgtr_async_events(%struct.bnxt* %48, i32* null, i32 0)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %66

55:                                               ; preds = %47
  %56 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %57 = call i32 @bnxt_hwrm_func_qcfg(%struct.bnxt* %56)
  %58 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %59 = call i32 @bnxt_hwrm_vnic_qcaps(%struct.bnxt* %58)
  %60 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %61 = call i32 @bnxt_hwrm_port_led_qcaps(%struct.bnxt* %60)
  %62 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %63 = call i32 @bnxt_ethtool_init(%struct.bnxt* %62)
  %64 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %65 = call i32 @bnxt_dcb_init(%struct.bnxt* %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %55, %52, %44, %9
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @bnxt_hwrm_func_qcaps(%struct.bnxt*) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @bnxt_hwrm_cfa_adv_flow_mgnt_qcaps(%struct.bnxt*) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32) #1

declare dso_local i32 @bnxt_hwrm_error_recovery_qcfg(%struct.bnxt*) #1

declare dso_local i32 @bnxt_hwrm_func_drv_rgtr(%struct.bnxt*) #1

declare dso_local i32 @bnxt_hwrm_func_rgtr_async_events(%struct.bnxt*, i32*, i32) #1

declare dso_local i32 @bnxt_hwrm_func_qcfg(%struct.bnxt*) #1

declare dso_local i32 @bnxt_hwrm_vnic_qcaps(%struct.bnxt*) #1

declare dso_local i32 @bnxt_hwrm_port_led_qcaps(%struct.bnxt*) #1

declare dso_local i32 @bnxt_ethtool_init(%struct.bnxt*) #1

declare dso_local i32 @bnxt_dcb_init(%struct.bnxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
