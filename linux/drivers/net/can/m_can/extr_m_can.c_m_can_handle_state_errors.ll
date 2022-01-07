; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_handle_state_errors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_handle_state_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.m_can_classdev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@PSR_EW = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_WARNING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"entered error warning state\0A\00", align 1
@PSR_EP = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_PASSIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"entered error passive state\0A\00", align 1
@PSR_BO = common dso_local global i32 0, align 4
@CAN_STATE_BUS_OFF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"entered error bus off state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @m_can_handle_state_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m_can_handle_state_errors(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.m_can_classdev*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.m_can_classdev* @netdev_priv(%struct.net_device* %7)
  store %struct.m_can_classdev* %8, %struct.m_can_classdev** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @PSR_EW, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %15 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CAN_STATE_ERROR_WARNING, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %13
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i32 @netdev_dbg(%struct.net_device* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = load i64, i64* @CAN_STATE_ERROR_WARNING, align 8
  %25 = call i64 @m_can_handle_state_change(%struct.net_device* %23, i64 %24)
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %20, %13, %2
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @PSR_EP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %37 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CAN_STATE_ERROR_PASSIVE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = call i32 @netdev_dbg(%struct.net_device* %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = load i64, i64* @CAN_STATE_ERROR_PASSIVE, align 8
  %47 = call i64 @m_can_handle_state_change(%struct.net_device* %45, i64 %46)
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %42, %35, %30
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @PSR_BO, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %52
  %58 = load %struct.m_can_classdev*, %struct.m_can_classdev** %5, align 8
  %59 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @CAN_STATE_BUS_OFF, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %57
  %65 = load %struct.net_device*, %struct.net_device** %3, align 8
  %66 = call i32 @netdev_dbg(%struct.net_device* %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.net_device*, %struct.net_device** %3, align 8
  %68 = load i64, i64* @CAN_STATE_BUS_OFF, align 8
  %69 = call i64 @m_can_handle_state_change(%struct.net_device* %67, i64 %68)
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %64, %57, %52
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local %struct.m_can_classdev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i64 @m_can_handle_state_change(%struct.net_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
