; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/ifi_canfd/extr_ifi_canfd.c_ifi_canfd_handle_state_errors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/ifi_canfd/extr_ifi_canfd.c_ifi_canfd_handle_state_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifi_canfd_priv = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@IFI_CANFD_STCMD = common dso_local global i64 0, align 8
@IFI_CANFD_STCMD_ERROR_ACTIVE = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Error, entered active state\0A\00", align 1
@IFI_CANFD_STCMD_ERROR_WARNING = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_WARNING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Error, entered warning state\0A\00", align 1
@IFI_CANFD_STCMD_ERROR_PASSIVE = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_PASSIVE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Error, entered passive state\0A\00", align 1
@IFI_CANFD_STCMD_BUSOFF = common dso_local global i32 0, align 4
@CAN_STATE_BUS_OFF = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"Error, entered bus-off state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ifi_canfd_handle_state_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifi_canfd_handle_state_errors(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ifi_canfd_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.ifi_canfd_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.ifi_canfd_priv* %7, %struct.ifi_canfd_priv** %3, align 8
  %8 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %9 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @IFI_CANFD_STCMD, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @IFI_CANFD_STCMD_ERROR_ACTIVE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %1
  %19 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %20 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CAN_STATE_ERROR_ACTIVE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = call i32 @netdev_dbg(%struct.net_device* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = load i64, i64* @CAN_STATE_ERROR_ACTIVE, align 8
  %30 = call i64 @ifi_canfd_handle_state_change(%struct.net_device* %28, i64 %29)
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %25, %18, %1
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @IFI_CANFD_STCMD_ERROR_WARNING, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %35
  %41 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %42 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CAN_STATE_ERROR_WARNING, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %40
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = call i32 @netdev_dbg(%struct.net_device* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = load i64, i64* @CAN_STATE_ERROR_WARNING, align 8
  %52 = call i64 @ifi_canfd_handle_state_change(%struct.net_device* %50, i64 %51)
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %47, %40, %35
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @IFI_CANFD_STCMD_ERROR_PASSIVE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %57
  %63 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %64 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @CAN_STATE_ERROR_PASSIVE, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %62
  %70 = load %struct.net_device*, %struct.net_device** %2, align 8
  %71 = call i32 @netdev_dbg(%struct.net_device* %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.net_device*, %struct.net_device** %2, align 8
  %73 = load i64, i64* @CAN_STATE_ERROR_PASSIVE, align 8
  %74 = call i64 @ifi_canfd_handle_state_change(%struct.net_device* %72, i64 %73)
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %69, %62, %57
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @IFI_CANFD_STCMD_BUSOFF, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %79
  %85 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %86 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @CAN_STATE_BUS_OFF, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %84
  %92 = load %struct.net_device*, %struct.net_device** %2, align 8
  %93 = call i32 @netdev_dbg(%struct.net_device* %92, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %94 = load %struct.net_device*, %struct.net_device** %2, align 8
  %95 = load i64, i64* @CAN_STATE_BUS_OFF, align 8
  %96 = call i64 @ifi_canfd_handle_state_change(%struct.net_device* %94, i64 %95)
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %91, %84, %79
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local %struct.ifi_canfd_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i64 @ifi_canfd_handle_state_change(%struct.net_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
