; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_unmask_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_unmask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }
%struct.armcp_packet = type { i32, i32 }

@ARMCP_PACKET_UNMASK_RAZWI_IRQ = common dso_local global i32 0, align 4
@ARMCP_PKT_CTL_OPCODE_SHIFT = common dso_local global i32 0, align 4
@HL_DEVICE_TIMEOUT_USEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to unmask RAZWI IRQ %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, i32)* @goya_unmask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_unmask_irq(%struct.hl_device* %0, i32 %1) #0 {
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.armcp_packet, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 @memset(%struct.armcp_packet* %5, i32 0, i32 8)
  %9 = load i32, i32* @ARMCP_PACKET_UNMASK_RAZWI_IRQ, align 4
  %10 = load i32, i32* @ARMCP_PKT_CTL_OPCODE_SHIFT, align 4
  %11 = shl i32 %9, %10
  %12 = call i32 @cpu_to_le32(i32 %11)
  %13 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %5, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @cpu_to_le64(i32 %14)
  %16 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %5, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %18 = bitcast %struct.armcp_packet* %5 to i32*
  %19 = load i32, i32* @HL_DEVICE_TIMEOUT_USEC, align 4
  %20 = call i32 @goya_send_cpu_message(%struct.hl_device* %17, i32* %18, i32 8, i32 %19, i64* %6)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %25 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %23, %2
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

declare dso_local i32 @memset(%struct.armcp_packet*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @goya_send_cpu_message(%struct.hl_device*, i32*, i32, i32, i64*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
