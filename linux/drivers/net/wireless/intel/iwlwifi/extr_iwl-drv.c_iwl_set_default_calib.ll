; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-drv.c_iwl_set_default_calib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-drv.c_iwl_set_default_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_drv = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.iwl_tlv_calib_data = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@IWL_UCODE_TYPE_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Wrong ucode_type %u for default calibration.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_drv*, i32*)* @iwl_set_default_calib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_set_default_calib(%struct.iwl_drv* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_drv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.iwl_tlv_calib_data*, align 8
  %7 = alloca i64, align 8
  store %struct.iwl_drv* %0, %struct.iwl_drv** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = bitcast i32* %8 to %struct.iwl_tlv_calib_data*
  store %struct.iwl_tlv_calib_data* %9, %struct.iwl_tlv_calib_data** %6, align 8
  %10 = load %struct.iwl_tlv_calib_data*, %struct.iwl_tlv_calib_data** %6, align 8
  %11 = getelementptr inbounds %struct.iwl_tlv_calib_data, %struct.iwl_tlv_calib_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @le32_to_cpu(i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @IWL_UCODE_TYPE_MAX, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @IWL_ERR(%struct.iwl_drv* %18, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %46

23:                                               ; preds = %2
  %24 = load %struct.iwl_tlv_calib_data*, %struct.iwl_tlv_calib_data** %6, align 8
  %25 = getelementptr inbounds %struct.iwl_tlv_calib_data, %struct.iwl_tlv_calib_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %29 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 %27, i32* %34, align 4
  %35 = load %struct.iwl_tlv_calib_data*, %struct.iwl_tlv_calib_data** %6, align 8
  %36 = getelementptr inbounds %struct.iwl_tlv_calib_data, %struct.iwl_tlv_calib_data* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %40 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %38, i32* %45, align 4
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %23, %17
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_drv*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
