; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_vnic.c_qlcnic_83xx_config_vnic_buff_descriptors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_vnic.c_qlcnic_83xx_config_vnic_buff_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, i32, i8*, i8*, i32, %struct.qlcnic_hardware_context* }
%struct.qlcnic_hardware_context = type { i64 }

@QLCNIC_XGBE = common dso_local global i64 0, align 8
@DEFAULT_RCV_DESCRIPTORS_VF = common dso_local global i32 0, align 4
@MAX_RCV_DESCRIPTORS_VF = common dso_local global i32 0, align 4
@MAX_JUMBO_RCV_DESCRIPTORS_10G = common dso_local global i8* null, align 8
@QLCNIC_GBE = common dso_local global i64 0, align 8
@DEFAULT_RCV_DESCRIPTORS_1G = common dso_local global i32 0, align 4
@MAX_JUMBO_RCV_DESCRIPTORS_1G = common dso_local global i8* null, align 8
@MAX_RCV_DESCRIPTORS_1G = common dso_local global i32 0, align 4
@MAX_CMD_DESCRIPTORS = common dso_local global i32 0, align 4
@MAX_RDS_RINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*)* @qlcnic_83xx_config_vnic_buff_descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_83xx_config_vnic_buff_descriptors(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca %struct.qlcnic_hardware_context*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %4 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %4, i32 0, i32 6
  %6 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  store %struct.qlcnic_hardware_context* %6, %struct.qlcnic_hardware_context** %3, align 8
  %7 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %8 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @QLCNIC_XGBE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load i32, i32* @DEFAULT_RCV_DESCRIPTORS_VF, align 4
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @MAX_RCV_DESCRIPTORS_VF, align 4
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load i8*, i8** @MAX_JUMBO_RCV_DESCRIPTORS_10G, align 8
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %20, i32 0, i32 4
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** @MAX_JUMBO_RCV_DESCRIPTORS_10G, align 8
  %23 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  br label %45

25:                                               ; preds = %1
  %26 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %27 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @QLCNIC_GBE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = load i32, i32* @DEFAULT_RCV_DESCRIPTORS_1G, align 4
  %33 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** @MAX_JUMBO_RCV_DESCRIPTORS_1G, align 8
  %36 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @MAX_JUMBO_RCV_DESCRIPTORS_1G, align 8
  %39 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* @MAX_RCV_DESCRIPTORS_1G, align 4
  %42 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %31, %25
  br label %45

45:                                               ; preds = %44, %12
  %46 = load i32, i32* @MAX_CMD_DESCRIPTORS, align 4
  %47 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %48 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @MAX_RDS_RINGS, align 4
  %50 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
