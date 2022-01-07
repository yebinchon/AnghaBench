; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, %struct.ixgbe_q_vector**, %struct.ixgbe_hw }
%struct.ixgbe_q_vector = type { i32 }
%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_EIMC = common dso_local global i32 0, align 4
@IXGBE_IRQ_CLEAR_MASK = common dso_local global i32 0, align 4
@IXGBE_EICR = common dso_local global i32 0, align 4
@__IXGBE_DOWN = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IXGBE_EICR_LSC = common dso_local global i32 0, align 4
@IXGBE_EICR_ECC = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Received ECC Err, initiating reset\0A\00", align 1
@__IXGBE_RESET_REQUESTED = common dso_local global i32 0, align 4
@IXGBE_EICR_TIMESYNC = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ixgbe_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ixgbe_adapter*, align 8
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca %struct.ixgbe_q_vector*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.ixgbe_adapter*
  store %struct.ixgbe_adapter* %11, %struct.ixgbe_adapter** %6, align 8
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 2
  store %struct.ixgbe_hw* %13, %struct.ixgbe_hw** %7, align 8
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 1
  %16 = load %struct.ixgbe_q_vector**, %struct.ixgbe_q_vector*** %15, align 8
  %17 = getelementptr inbounds %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %16, i64 0
  %18 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %17, align 8
  store %struct.ixgbe_q_vector* %18, %struct.ixgbe_q_vector** %8, align 8
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %20 = load i32, i32* @IXGBE_EIMC, align 4
  %21 = load i32, i32* @IXGBE_IRQ_CLEAR_MASK, align 4
  %22 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %19, i32 %20, i32 %21)
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %24 = load i32, i32* @IXGBE_EICR, align 4
  %25 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @__IXGBE_DOWN, align 4
  %30 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %31 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %30, i32 0, i32 0
  %32 = call i32 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %36 = call i32 @ixgbe_irq_enable(%struct.ixgbe_adapter* %35, i32 1, i32 1)
  br label %37

37:                                               ; preds = %34, %28
  %38 = load i32, i32* @IRQ_NONE, align 4
  store i32 %38, i32* %3, align 4
  br label %105

39:                                               ; preds = %2
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @IXGBE_EICR_LSC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %46 = call i32 @ixgbe_check_lsc(%struct.ixgbe_adapter* %45)
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %49 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %78 [
    i32 132, label %52
    i32 131, label %56
    i32 130, label %56
    i32 129, label %56
    i32 128, label %56
  ]

52:                                               ; preds = %47
  %53 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @ixgbe_check_sfp_event(%struct.ixgbe_adapter* %53, i32 %54)
  br label %56

56:                                               ; preds = %47, %47, %47, %47, %52
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @IXGBE_EICR_ECC, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load i32, i32* @link, align 4
  %63 = call i32 @e_info(i32 %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @__IXGBE_RESET_REQUESTED, align 4
  %65 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %66 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %65, i32 0, i32 0
  %67 = call i32 @set_bit(i32 %64, i32* %66)
  %68 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %69 = call i32 @ixgbe_service_event_schedule(%struct.ixgbe_adapter* %68)
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %71 = load i32, i32* @IXGBE_EICR, align 4
  %72 = load i32, i32* @IXGBE_EICR_ECC, align 4
  %73 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %61, %56
  %75 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @ixgbe_check_overtemp_event(%struct.ixgbe_adapter* %75, i32 %76)
  br label %79

78:                                               ; preds = %47
  br label %79

79:                                               ; preds = %78, %74
  %80 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @ixgbe_check_fan_failure(%struct.ixgbe_adapter* %80, i32 %81)
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @IXGBE_EICR_TIMESYNC, align 4
  %85 = and i32 %83, %84
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %79
  %89 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %90 = call i32 @ixgbe_ptp_check_pps_event(%struct.ixgbe_adapter* %89)
  br label %91

91:                                               ; preds = %88, %79
  %92 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %8, align 8
  %93 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %92, i32 0, i32 0
  %94 = call i32 @napi_schedule_irqoff(i32* %93)
  %95 = load i32, i32* @__IXGBE_DOWN, align 4
  %96 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %97 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %96, i32 0, i32 0
  %98 = call i32 @test_bit(i32 %95, i32* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %91
  %101 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %102 = call i32 @ixgbe_irq_enable(%struct.ixgbe_adapter* %101, i32 0, i32 0)
  br label %103

103:                                              ; preds = %100, %91
  %104 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %37
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ixgbe_irq_enable(%struct.ixgbe_adapter*, i32, i32) #1

declare dso_local i32 @ixgbe_check_lsc(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_check_sfp_event(%struct.ixgbe_adapter*, i32) #1

declare dso_local i32 @e_info(i32, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ixgbe_service_event_schedule(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_check_overtemp_event(%struct.ixgbe_adapter*, i32) #1

declare dso_local i32 @ixgbe_check_fan_failure(%struct.ixgbe_adapter*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ixgbe_ptp_check_pps_event(%struct.ixgbe_adapter*) #1

declare dso_local i32 @napi_schedule_irqoff(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
