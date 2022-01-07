; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_hwmon.c_hl_set_pwm_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_hwmon.c_hl_set_pwm_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hl_device*, i32*, i32, i32, i32*)* }
%struct.armcp_packet = type { i32, i8*, i8*, i32 }

@ARMCP_PACKET_PWM_SET = common dso_local global i32 0, align 4
@ARMCP_PKT_CTL_OPCODE_SHIFT = common dso_local global i32 0, align 4
@SENSORS_PKT_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Failed to set pwm info to sensor %d, error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hl_set_pwm_info(%struct.hl_device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.hl_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.armcp_packet, align 8
  %10 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = call i32 @memset(%struct.armcp_packet* %9, i32 0, i32 32)
  %12 = load i32, i32* @ARMCP_PACKET_PWM_SET, align 4
  %13 = load i32, i32* @ARMCP_PKT_CTL_OPCODE_SHIFT, align 4
  %14 = shl i32 %12, %13
  %15 = call i32 @cpu_to_le32(i32 %14)
  %16 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %9, i32 0, i32 3
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i8* @__cpu_to_le16(i32 %17)
  %19 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %9, i32 0, i32 2
  store i8* %18, i8** %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i8* @__cpu_to_le16(i32 %20)
  %22 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %9, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @cpu_to_le64(i64 %23)
  %25 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %9, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %27 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.hl_device*, i32*, i32, i32, i32*)*, i32 (%struct.hl_device*, i32*, i32, i32, i32*)** %29, align 8
  %31 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %32 = bitcast %struct.armcp_packet* %9 to i32*
  %33 = load i32, i32* @SENSORS_PKT_TIMEOUT, align 4
  %34 = call i32 %30(%struct.hl_device* %31, i32* %32, i32 32, i32 %33, i32* null)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %4
  %38 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %39 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %37, %4
  ret void
}

declare dso_local i32 @memset(%struct.armcp_packet*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
