; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_get_nic_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_get_nic_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.qlcnic_hardware_context* }
%struct.qlcnic_hardware_context = type { i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.qlcnic_info = type { i32, i32, i32, i32, i32, i32, i64 }

@EIO = common dso_local global i32 0, align 4
@__QLCNIC_SRIOV_CAPABLE = common dso_local global i32 0, align 4
@QLC_83XX_DEFAULT_OPMODE = common dso_local global i32 0, align 4
@QLC_83XX_ESWITCH_CAPABILITY = common dso_local global i32 0, align 4
@QLCNIC_VNIC_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_83xx_get_nic_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_83xx_get_nic_configuration(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_info, align 8
  %6 = alloca %struct.qlcnic_hardware_context*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %7, i32 0, i32 1
  %9 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  store %struct.qlcnic_hardware_context* %9, %struct.qlcnic_hardware_context** %6, align 8
  %10 = call i32 @memset(%struct.qlcnic_info* %5, i32 0, i32 32)
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %12 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %13 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @qlcnic_get_nic_info(%struct.qlcnic_adapter* %11, %struct.qlcnic_info* %5, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %68

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %5, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %25 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %24, i32 0, i32 6
  store i64 %23, i64* %25, align 8
  %26 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %5, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %29 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %5, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %33 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %5, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %37 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %41 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %5, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %45 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %5, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %49 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @__QLCNIC_SRIOV_CAPABLE, align 4
  %51 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %51, i32 0, i32 0
  %53 = call i64 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %21
  %56 = load i32, i32* @QLC_83XX_DEFAULT_OPMODE, align 4
  store i32 %56, i32* %2, align 4
  br label %68

57:                                               ; preds = %21
  %58 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %59 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @QLC_83XX_ESWITCH_CAPABILITY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @QLCNIC_VNIC_MODE, align 4
  store i32 %65, i32* %2, align 4
  br label %68

66:                                               ; preds = %57
  %67 = load i32, i32* @QLC_83XX_DEFAULT_OPMODE, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %64, %55, %18
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @memset(%struct.qlcnic_info*, i32, i32) #1

declare dso_local i32 @qlcnic_get_nic_info(%struct.qlcnic_adapter*, %struct.qlcnic_info*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
