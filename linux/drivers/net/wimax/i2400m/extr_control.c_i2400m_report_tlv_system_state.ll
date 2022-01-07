; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_control.c_i2400m_report_tlv_system_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_control.c_i2400m_report_tlv_system_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32, i32, %struct.wimax_dev }
%struct.wimax_dev = type { i32 }
%struct.i2400m_tlv_system_state = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"(i2400m %p ss %p [%u])\0A\00", align 1
@WIMAX_ST_UNINITIALIZED = common dso_local global i32 0, align 4
@WIMAX_ST_RADIO_OFF = common dso_local global i32 0, align 4
@WIMAX_ST_READY = common dso_local global i32 0, align 4
@WIMAX_ST_SCANNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"entering BS-negotiated idle mode\0A\00", align 1
@WIMAX_ST_CONNECTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"HW BUG? unknown state %u: shutting down\0A\00", align 1
@I2400M_RT_WARM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"(i2400m %p ss %p [%u]) = void\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2400m*, %struct.i2400m_tlv_system_state*)* @i2400m_report_tlv_system_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2400m_report_tlv_system_state(%struct.i2400m* %0, %struct.i2400m_tlv_system_state* %1) #0 {
  %3 = alloca %struct.i2400m*, align 8
  %4 = alloca %struct.i2400m_tlv_system_state*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.wimax_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.i2400m* %0, %struct.i2400m** %3, align 8
  store %struct.i2400m_tlv_system_state* %1, %struct.i2400m_tlv_system_state** %4, align 8
  %8 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %9 = call %struct.device* @i2400m_dev(%struct.i2400m* %8)
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %11 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %10, i32 0, i32 2
  store %struct.wimax_dev* %11, %struct.wimax_dev** %6, align 8
  %12 = load %struct.i2400m_tlv_system_state*, %struct.i2400m_tlv_system_state** %4, align 8
  %13 = getelementptr inbounds %struct.i2400m_tlv_system_state, %struct.i2400m_tlv_system_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le32_to_cpu(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %18 = load %struct.i2400m_tlv_system_state*, %struct.i2400m_tlv_system_state** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @d_fnstart(i32 3, %struct.device* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %17, %struct.i2400m_tlv_system_state* %18, i32 %19)
  %21 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %22 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %29 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %31 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %30, i32 0, i32 1
  %32 = call i32 @wake_up_all(i32* %31)
  br label %33

33:                                               ; preds = %26, %2
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %62 [
    i32 129, label %35
    i32 138, label %35
    i32 143, label %35
    i32 136, label %35
    i32 134, label %39
    i32 133, label %39
    i32 135, label %43
    i32 130, label %43
    i32 131, label %43
    i32 142, label %47
    i32 128, label %47
    i32 132, label %51
    i32 137, label %51
    i32 139, label %55
    i32 140, label %58
    i32 141, label %58
  ]

35:                                               ; preds = %33, %33, %33, %33
  %36 = load %struct.wimax_dev*, %struct.wimax_dev** %6, align 8
  %37 = load i32, i32* @WIMAX_ST_UNINITIALIZED, align 4
  %38 = call i32 @wimax_state_change(%struct.wimax_dev* %36, i32 %37)
  br label %69

39:                                               ; preds = %33, %33
  %40 = load %struct.wimax_dev*, %struct.wimax_dev** %6, align 8
  %41 = load i32, i32* @WIMAX_ST_RADIO_OFF, align 4
  %42 = call i32 @wimax_state_change(%struct.wimax_dev* %40, i32 %41)
  br label %69

43:                                               ; preds = %33, %33, %33
  %44 = load %struct.wimax_dev*, %struct.wimax_dev** %6, align 8
  %45 = load i32, i32* @WIMAX_ST_READY, align 4
  %46 = call i32 @wimax_state_change(%struct.wimax_dev* %44, i32 %45)
  br label %69

47:                                               ; preds = %33, %33
  %48 = load %struct.wimax_dev*, %struct.wimax_dev** %6, align 8
  %49 = load i32, i32* @WIMAX_ST_READY, align 4
  %50 = call i32 @wimax_state_change(%struct.wimax_dev* %48, i32 %49)
  br label %69

51:                                               ; preds = %33, %33
  %52 = load %struct.wimax_dev*, %struct.wimax_dev** %6, align 8
  %53 = load i32, i32* @WIMAX_ST_SCANNING, align 4
  %54 = call i32 @wimax_state_change(%struct.wimax_dev* %52, i32 %53)
  br label %69

55:                                               ; preds = %33
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = call i32 @d_printf(i32 1, %struct.device* %56, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %33, %33, %55
  %59 = load %struct.wimax_dev*, %struct.wimax_dev** %6, align 8
  %60 = load i32, i32* @WIMAX_ST_CONNECTED, align 4
  %61 = call i32 @wimax_state_change(%struct.wimax_dev* %59, i32 %60)
  br label %69

62:                                               ; preds = %33
  %63 = load %struct.device*, %struct.device** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %67 = load i32, i32* @I2400M_RT_WARM, align 4
  %68 = call i32 @i2400m_reset(%struct.i2400m* %66, i32 %67)
  br label %69

69:                                               ; preds = %62, %58, %51, %47, %43, %39, %35
  %70 = load %struct.device*, %struct.device** %5, align 8
  %71 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %72 = load %struct.i2400m_tlv_system_state*, %struct.i2400m_tlv_system_state** %4, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @d_fnend(i32 3, %struct.device* %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), %struct.i2400m* %71, %struct.i2400m_tlv_system_state* %72, i32 %73)
  ret void
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*, %struct.i2400m_tlv_system_state*, i32) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @wimax_state_change(%struct.wimax_dev*, i32) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @i2400m_reset(%struct.i2400m*, i32) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, %struct.i2400m_tlv_system_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
