; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_firmware_if.c_hl_fw_send_heartbeat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_firmware_if.c_hl_fw_send_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hl_device*, i32*, i32, i32, i64*)* }
%struct.armcp_packet = type { i32, i32 }

@ARMCP_PACKET_TEST = common dso_local global i32 0, align 4
@ARMCP_PKT_CTL_OPCODE_SHIFT = common dso_local global i32 0, align 4
@ARMCP_PACKET_FENCE_VAL = common dso_local global i64 0, align 8
@HL_DEVICE_TIMEOUT_USEC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_fw_send_heartbeat(%struct.hl_device* %0) #0 {
  %2 = alloca %struct.hl_device*, align 8
  %3 = alloca %struct.armcp_packet, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %2, align 8
  %6 = bitcast %struct.armcp_packet* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 8, i1 false)
  %7 = load i32, i32* @ARMCP_PACKET_TEST, align 4
  %8 = load i32, i32* @ARMCP_PKT_CTL_OPCODE_SHIFT, align 4
  %9 = shl i32 %7, %8
  %10 = call i32 @cpu_to_le32(i32 %9)
  %11 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %3, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i64, i64* @ARMCP_PACKET_FENCE_VAL, align 8
  %13 = call i32 @cpu_to_le64(i64 %12)
  %14 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %3, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %16 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.hl_device*, i32*, i32, i32, i64*)*, i32 (%struct.hl_device*, i32*, i32, i32, i64*)** %18, align 8
  %20 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %21 = bitcast %struct.armcp_packet* %3 to i32*
  %22 = load i32, i32* @HL_DEVICE_TIMEOUT_USEC, align 4
  %23 = call i32 %19(%struct.hl_device* %20, i32* %21, i32 8, i32 %22, i64* %4)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %1
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @ARMCP_PACKET_FENCE_VAL, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %1
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %30, %26
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @cpu_to_le64(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
