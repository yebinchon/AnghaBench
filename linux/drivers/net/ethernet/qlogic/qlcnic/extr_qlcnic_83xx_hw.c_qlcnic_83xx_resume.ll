; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.qlcnic_hardware_context* }
%struct.qlcnic_hardware_context = type { i64, i64, %struct.qlc_83xx_idc }
%struct.qlc_83xx_idc = type { i32 }

@QLCNIC_VNIC_MODE = common dso_local global i64 0, align 8
@QLCNIC_MGMT_FUNC = common dso_local global i64 0, align 8
@qlcnic_83xx_idc_poll_dev_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_83xx_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_83xx_resume(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_hardware_context*, align 8
  %5 = alloca %struct.qlc_83xx_idc*, align 8
  %6 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %7, i32 0, i32 0
  %9 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  store %struct.qlcnic_hardware_context* %9, %struct.qlcnic_hardware_context** %4, align 8
  %10 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %11 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %10, i32 0, i32 2
  store %struct.qlc_83xx_idc* %11, %struct.qlc_83xx_idc** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %13 = call i32 @qlcnic_83xx_idc_init(%struct.qlcnic_adapter* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %57

18:                                               ; preds = %1
  %19 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %20 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @QLCNIC_VNIC_MODE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %18
  %25 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %26 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @QLCNIC_MGMT_FUNC, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %32 = call i32 @qlcnic_83xx_set_vnic_opmode(%struct.qlcnic_adapter* %31)
  br label %41

33:                                               ; preds = %24
  %34 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %35 = call i32 @qlcnic_83xx_check_vnic_state(%struct.qlcnic_adapter* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %57

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %30
  br label %42

42:                                               ; preds = %41, %18
  %43 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %44 = call i32 @qlcnic_83xx_idc_reattach_driver(%struct.qlcnic_adapter* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %57

49:                                               ; preds = %42
  %50 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %51 = load i32, i32* @qlcnic_83xx_idc_poll_dev_state, align 4
  %52 = load %struct.qlc_83xx_idc*, %struct.qlc_83xx_idc** %5, align 8
  %53 = getelementptr inbounds %struct.qlc_83xx_idc, %struct.qlc_83xx_idc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @qlcnic_schedule_work(%struct.qlcnic_adapter* %50, i32 %51, i32 %54)
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %49, %47, %38, %16
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @qlcnic_83xx_idc_init(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_set_vnic_opmode(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_check_vnic_state(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_idc_reattach_driver(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_schedule_work(%struct.qlcnic_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
