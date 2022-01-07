; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_sysfs.c_hl_get_max_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_sysfs.c_hl_get_max_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hl_device*, i32*, i32, i32, i64*)* }
%struct.armcp_packet = type { i32 }

@ARMCP_PACKET_MAX_POWER_GET = common dso_local global i32 0, align 4
@ARMCP_PKT_CTL_OPCODE_SHIFT = common dso_local global i32 0, align 4
@SET_PWR_PKT_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to get max power, error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hl_get_max_power(%struct.hl_device* %0) #0 {
  %2 = alloca %struct.hl_device*, align 8
  %3 = alloca %struct.armcp_packet, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %2, align 8
  %6 = call i32 @memset(%struct.armcp_packet* %3, i32 0, i32 4)
  %7 = load i32, i32* @ARMCP_PACKET_MAX_POWER_GET, align 4
  %8 = load i32, i32* @ARMCP_PKT_CTL_OPCODE_SHIFT, align 4
  %9 = shl i32 %7, %8
  %10 = call i32 @cpu_to_le32(i32 %9)
  %11 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %3, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %13 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.hl_device*, i32*, i32, i32, i64*)*, i32 (%struct.hl_device*, i32*, i32, i32, i64*)** %15, align 8
  %17 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %18 = bitcast %struct.armcp_packet* %3 to i32*
  %19 = load i32, i32* @SET_PWR_PKT_TIMEOUT, align 4
  %20 = call i32 %16(%struct.hl_device* %17, i32* %18, i32 4, i32 %19, i64* %4)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %25 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %4, align 8
  br label %31

31:                                               ; preds = %23, %1
  %32 = load i64, i64* %4, align 8
  ret i64 %32
}

declare dso_local i32 @memset(%struct.armcp_packet*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
