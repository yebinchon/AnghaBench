; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_sysfs.c_hl_set_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_sysfs.c_hl_set_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hl_device*, i32*, i32, i32, i32*)* }
%struct.armcp_packet = type { i32, i8*, i8* }

@ARMCP_PACKET_FREQUENCY_SET = common dso_local global i32 0, align 4
@ARMCP_PKT_CTL_OPCODE_SHIFT = common dso_local global i32 0, align 4
@SET_CLK_PKT_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to set frequency to PLL %d, error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hl_set_frequency(%struct.hl_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.armcp_packet, align 8
  %8 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i32 @memset(%struct.armcp_packet* %7, i32 0, i32 24)
  %10 = load i32, i32* @ARMCP_PACKET_FREQUENCY_SET, align 4
  %11 = load i32, i32* @ARMCP_PKT_CTL_OPCODE_SHIFT, align 4
  %12 = shl i32 %10, %11
  %13 = call i8* @cpu_to_le32(i32 %12)
  %14 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %7, i32 0, i32 2
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i8* @cpu_to_le32(i32 %15)
  %17 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %7, i32 0, i32 1
  store i8* %16, i8** %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @cpu_to_le64(i32 %18)
  %20 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %7, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %22 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.hl_device*, i32*, i32, i32, i32*)*, i32 (%struct.hl_device*, i32*, i32, i32, i32*)** %24, align 8
  %26 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %27 = bitcast %struct.armcp_packet* %7 to i32*
  %28 = load i32, i32* @SET_CLK_PKT_TIMEOUT, align 4
  %29 = call i32 %25(%struct.hl_device* %26, i32* %27, i32 24, i32 %28, i32* null)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %3
  %33 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %34 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %32, %3
  ret void
}

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
