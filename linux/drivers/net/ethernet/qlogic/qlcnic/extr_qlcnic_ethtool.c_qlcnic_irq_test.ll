; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_irq_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_irq_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { i32, i32, i32, %struct.qlcnic_hardware_context* }
%struct.qlcnic_hardware_context = type { i64, i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@__QLCNIC_RESETTING = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@QLCNIC_INTERRUPT_TEST = common dso_local global i32 0, align 4
@QLCNIC_CMD_INTRPT_TEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @qlcnic_irq_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_irq_test(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.qlcnic_hardware_context*, align 8
  %6 = alloca %struct.qlcnic_cmd_args, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.qlcnic_adapter* %11, %struct.qlcnic_adapter** %4, align 8
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 3
  %14 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %13, align 8
  store %struct.qlcnic_hardware_context* %14, %struct.qlcnic_hardware_context** %5, align 8
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %19 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %22 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call i32 @qlcnic_83xx_interrupt_test(%struct.net_device* %25)
  store i32 %26, i32* %2, align 4
  br label %91

27:                                               ; preds = %1
  %28 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %30 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %29, i32 0, i32 2
  %31 = call i64 @test_and_set_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %91

36:                                               ; preds = %27
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = load i32, i32* @QLCNIC_INTERRUPT_TEST, align 4
  %39 = call i32 @qlcnic_diag_alloc_res(%struct.net_device* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %79

43:                                               ; preds = %36
  %44 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %45 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %47 = load i32, i32* @QLCNIC_CMD_INTRPT_TEST, align 4
  %48 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %6, %struct.qlcnic_adapter* %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %75

52:                                               ; preds = %43
  %53 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %54 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %6, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 %55, i32* %59, align 4
  %60 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %61 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %60, %struct.qlcnic_cmd_args* %6)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %73

65:                                               ; preds = %52
  %66 = call i32 @usleep_range(i32 1000, i32 12000)
  %67 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %68 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %65, %64
  %74 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %6)
  br label %75

75:                                               ; preds = %73, %51
  %76 = load %struct.net_device*, %struct.net_device** %3, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @qlcnic_diag_free_res(%struct.net_device* %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %42
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %82 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %85 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %87 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %88 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %87, i32 0, i32 2
  %89 = call i32 @clear_bit(i32 %86, i32* %88)
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %79, %33, %24
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_interrupt_test(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_diag_alloc_res(%struct.net_device*, i32) #1

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

declare dso_local i32 @qlcnic_diag_free_res(%struct.net_device*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
