; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_ccdc_validate_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_ccdc_validate_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpfe_ccdc = type { i32 }
%struct.vpfe_ccdc_config_params_raw = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.vpfe_device = type { i32 }

@VPFE_CCDC_GAMMA_BITS_09_0 = common dso_local global i64 0, align 8
@VPFE_CCDC_GAMMA_BITS_15_6 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Invalid data line select\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpfe_ccdc*, %struct.vpfe_ccdc_config_params_raw*)* @vpfe_ccdc_validate_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_ccdc_validate_param(%struct.vpfe_ccdc* %0, %struct.vpfe_ccdc_config_params_raw* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vpfe_ccdc*, align 8
  %5 = alloca %struct.vpfe_ccdc_config_params_raw*, align 8
  %6 = alloca %struct.vpfe_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.vpfe_ccdc* %0, %struct.vpfe_ccdc** %4, align 8
  store %struct.vpfe_ccdc_config_params_raw* %1, %struct.vpfe_ccdc_config_params_raw** %5, align 8
  %9 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %4, align 8
  %10 = call %struct.vpfe_device* @to_vpfe(%struct.vpfe_ccdc* %9)
  store %struct.vpfe_device* %10, %struct.vpfe_device** %6, align 8
  %11 = load %struct.vpfe_ccdc_config_params_raw*, %struct.vpfe_ccdc_config_params_raw** %5, align 8
  %12 = getelementptr inbounds %struct.vpfe_ccdc_config_params_raw, %struct.vpfe_ccdc_config_params_raw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

17:                                               ; preds = %2
  %18 = load %struct.vpfe_ccdc_config_params_raw*, %struct.vpfe_ccdc_config_params_raw** %5, align 8
  %19 = getelementptr inbounds %struct.vpfe_ccdc_config_params_raw, %struct.vpfe_ccdc_config_params_raw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @ccdc_gamma_width_max_bit(i64 %21)
  store i64 %22, i64* %7, align 8
  %23 = load %struct.vpfe_ccdc_config_params_raw*, %struct.vpfe_ccdc_config_params_raw** %5, align 8
  %24 = getelementptr inbounds %struct.vpfe_ccdc_config_params_raw, %struct.vpfe_ccdc_config_params_raw* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @ccdc_data_size_max_bit(i32 %25)
  store i64 %26, i64* %8, align 8
  %27 = load %struct.vpfe_ccdc_config_params_raw*, %struct.vpfe_ccdc_config_params_raw** %5, align 8
  %28 = getelementptr inbounds %struct.vpfe_ccdc_config_params_raw, %struct.vpfe_ccdc_config_params_raw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @VPFE_CCDC_GAMMA_BITS_09_0, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %44, label %33

33:                                               ; preds = %17
  %34 = load %struct.vpfe_ccdc_config_params_raw*, %struct.vpfe_ccdc_config_params_raw** %5, align 8
  %35 = getelementptr inbounds %struct.vpfe_ccdc_config_params_raw, %struct.vpfe_ccdc_config_params_raw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @VPFE_CCDC_GAMMA_BITS_15_6, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %33
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40, %33, %17
  %45 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %46 = call i32 @vpfe_dbg(i32 1, %struct.vpfe_device* %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %44, %16
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.vpfe_device* @to_vpfe(%struct.vpfe_ccdc*) #1

declare dso_local i64 @ccdc_gamma_width_max_bit(i64) #1

declare dso_local i64 @ccdc_data_size_max_bit(i32) #1

declare dso_local i32 @vpfe_dbg(i32, %struct.vpfe_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
