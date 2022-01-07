; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_debugfs.c_hl_debugfs_led_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_debugfs.c_hl_debugfs_led_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hl_device*, i32*, i32, i32, i32*)* }
%struct.armcp_packet = type { i32, i8*, i8* }

@ARMCP_PACKET_LED_SET = common dso_local global i32 0, align 4
@ARMCP_PKT_CTL_OPCODE_SHIFT = common dso_local global i32 0, align 4
@HL_DEVICE_TIMEOUT_USEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to set LED %d, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_device*, i32, i32)* @hl_debugfs_led_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hl_debugfs_led_set(%struct.hl_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.armcp_packet, align 8
  %8 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %10 = call i64 @hl_device_disabled_or_in_reset(%struct.hl_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %44

13:                                               ; preds = %3
  %14 = call i32 @memset(%struct.armcp_packet* %7, i32 0, i32 24)
  %15 = load i32, i32* @ARMCP_PACKET_LED_SET, align 4
  %16 = load i32, i32* @ARMCP_PKT_CTL_OPCODE_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = call i8* @cpu_to_le32(i32 %17)
  %19 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %7, i32 0, i32 2
  store i8* %18, i8** %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i8* @cpu_to_le32(i32 %20)
  %22 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %7, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @cpu_to_le64(i32 %23)
  %25 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %7, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %27 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.hl_device*, i32*, i32, i32, i32*)*, i32 (%struct.hl_device*, i32*, i32, i32, i32*)** %29, align 8
  %31 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %32 = bitcast %struct.armcp_packet* %7 to i32*
  %33 = load i32, i32* @HL_DEVICE_TIMEOUT_USEC, align 4
  %34 = call i32 %30(%struct.hl_device* %31, i32* %32, i32 24, i32 %33, i32* null)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %13
  %38 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %39 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %12, %37, %13
  ret void
}

declare dso_local i64 @hl_device_disabled_or_in_reset(%struct.hl_device*) #1

declare dso_local i32 @memset(%struct.armcp_packet*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
