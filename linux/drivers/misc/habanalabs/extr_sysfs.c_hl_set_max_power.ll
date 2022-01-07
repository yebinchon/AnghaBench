; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_sysfs.c_hl_set_max_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_sysfs.c_hl_set_max_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hl_device*, i32*, i32, i32, i32*)* }
%struct.armcp_packet = type { i32, i32 }

@ARMCP_PACKET_MAX_POWER_SET = common dso_local global i32 0, align 4
@ARMCP_PKT_CTL_OPCODE_SHIFT = common dso_local global i32 0, align 4
@SET_PWR_PKT_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to set max power, error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hl_set_max_power(%struct.hl_device* %0, i32 %1) #0 {
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.armcp_packet, align 4
  %6 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 @memset(%struct.armcp_packet* %5, i32 0, i32 8)
  %8 = load i32, i32* @ARMCP_PACKET_MAX_POWER_SET, align 4
  %9 = load i32, i32* @ARMCP_PKT_CTL_OPCODE_SHIFT, align 4
  %10 = shl i32 %8, %9
  %11 = call i32 @cpu_to_le32(i32 %10)
  %12 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %5, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @cpu_to_le64(i32 %13)
  %15 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %5, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %17 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.hl_device*, i32*, i32, i32, i32*)*, i32 (%struct.hl_device*, i32*, i32, i32, i32*)** %19, align 8
  %21 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %22 = bitcast %struct.armcp_packet* %5 to i32*
  %23 = load i32, i32* @SET_PWR_PKT_TIMEOUT, align 4
  %24 = call i32 %20(%struct.hl_device* %21, i32* %22, i32 8, i32 %23, i32* null)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %29 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %27, %2
  ret void
}

declare dso_local i32 @memset(%struct.armcp_packet*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
