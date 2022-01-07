; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_rx_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_rx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.m_can_classdev = type { i32, i32 }
%struct.can_berr_counter = type { i32 }

@M_CAN_IR = common dso_local global i32 0, align 4
@IR_MRAF = common dso_local global i32 0, align 4
@M_CAN_ECR = common dso_local global i32 0, align 4
@ECR_RP = common dso_local global i32 0, align 4
@M_CAN_PSR = common dso_local global i32 0, align 4
@IR_ERR_STATE = common dso_local global i32 0, align 4
@IR_ERR_BUS_30X = common dso_local global i32 0, align 4
@IR_RF0N = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @m_can_rx_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m_can_rx_handler(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.m_can_classdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.can_berr_counter, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.m_can_classdev* @netdev_priv(%struct.net_device* %10)
  store %struct.m_can_classdev* %11, %struct.m_can_classdev** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %13 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %16 = load i32, i32* @M_CAN_IR, align 4
  %17 = call i32 @m_can_read(%struct.m_can_classdev* %15, i32 %16)
  %18 = or i32 %14, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %101

22:                                               ; preds = %2
  %23 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %24 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp sle i32 %25, 31
  br i1 %26, label %27, label %55

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @IR_MRAF, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %27
  %33 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %34 = load i32, i32* @M_CAN_ECR, align 4
  %35 = call i32 @m_can_read(%struct.m_can_classdev* %33, i32 %34)
  %36 = load i32, i32* @ECR_RP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %32
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = call i32 @__m_can_get_berr_counter(%struct.net_device* %40, %struct.can_berr_counter* %9)
  %42 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %9, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 127
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %47 = load i32, i32* @M_CAN_IR, align 4
  %48 = load i32, i32* @IR_MRAF, align 4
  %49 = call i32 @m_can_write(%struct.m_can_classdev* %46, i32 %47, i32 %48)
  %50 = load i32, i32* @IR_MRAF, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %45, %39
  br label %55

55:                                               ; preds = %54, %32, %27, %22
  %56 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %57 = load i32, i32* @M_CAN_PSR, align 4
  %58 = call i32 @m_can_read(%struct.m_can_classdev* %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @IR_ERR_STATE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %55
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @m_can_handle_state_errors(%struct.net_device* %64, i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %63, %55
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @IR_ERR_BUS_30X, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load %struct.net_device*, %struct.net_device** %3, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i64 @m_can_handle_bus_errors(%struct.net_device* %77, i32 %78, i32 %79)
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %76, %71
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @IR_RF0N, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = load %struct.net_device*, %struct.net_device** %3, align 8
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* %6, align 4
  %94 = sub nsw i32 %92, %93
  %95 = call i64 @m_can_do_rx_poll(%struct.net_device* %91, i32 %94)
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %90, %85
  br label %101

101:                                              ; preds = %100, %21
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local %struct.m_can_classdev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @m_can_read(%struct.m_can_classdev*, i32) #1

declare dso_local i32 @__m_can_get_berr_counter(%struct.net_device*, %struct.can_berr_counter*) #1

declare dso_local i32 @m_can_write(%struct.m_can_classdev*, i32, i32) #1

declare dso_local i64 @m_can_handle_state_errors(%struct.net_device*, i32) #1

declare dso_local i64 @m_can_handle_bus_errors(%struct.net_device*, i32, i32) #1

declare dso_local i64 @m_can_do_rx_poll(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
