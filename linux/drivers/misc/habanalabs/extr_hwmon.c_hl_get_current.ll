; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_hwmon.c_hl_get_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_hwmon.c_hl_get_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hl_device*, i32*, i32, i32, i64*)* }
%struct.armcp_packet = type { i8*, i8*, i32 }

@ARMCP_PACKET_CURRENT_GET = common dso_local global i32 0, align 4
@ARMCP_PKT_CTL_OPCODE_SHIFT = common dso_local global i32 0, align 4
@SENSORS_PKT_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to get current from sensor %d, error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hl_get_current(%struct.hl_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.armcp_packet, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = call i32 @memset(%struct.armcp_packet* %7, i32 0, i32 24)
  %11 = load i32, i32* @ARMCP_PACKET_CURRENT_GET, align 4
  %12 = load i32, i32* @ARMCP_PKT_CTL_OPCODE_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = call i32 @cpu_to_le32(i32 %13)
  %15 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %7, i32 0, i32 2
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i8* @__cpu_to_le16(i32 %16)
  %18 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %7, i32 0, i32 1
  store i8* %17, i8** %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i8* @__cpu_to_le16(i32 %19)
  %21 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %7, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %23 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.hl_device*, i32*, i32, i32, i64*)*, i32 (%struct.hl_device*, i32*, i32, i32, i64*)** %25, align 8
  %27 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %28 = bitcast %struct.armcp_packet* %7 to i32*
  %29 = load i32, i32* @SENSORS_PKT_TIMEOUT, align 4
  %30 = call i32 %26(%struct.hl_device* %27, i32* %28, i32 24, i32 %29, i64* %8)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %3
  %34 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %35 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  store i64 0, i64* %8, align 8
  br label %40

40:                                               ; preds = %33, %3
  %41 = load i64, i64* %8, align 8
  ret i64 %41
}

declare dso_local i32 @memset(%struct.armcp_packet*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
