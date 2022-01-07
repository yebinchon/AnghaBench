; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_sysfs.c_hl_get_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_sysfs.c_hl_get_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hl_device*, i32*, i32, i32, i64*)* }
%struct.armcp_packet = type { i8*, i8* }

@ARMCP_PACKET_FREQUENCY_CURR_GET = common dso_local global i32 0, align 4
@ARMCP_PKT_CTL_OPCODE_SHIFT = common dso_local global i32 0, align 4
@ARMCP_PACKET_FREQUENCY_GET = common dso_local global i32 0, align 4
@SET_CLK_PKT_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to get frequency of PLL %d, error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hl_get_frequency(%struct.hl_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.armcp_packet, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = call i32 @memset(%struct.armcp_packet* %7, i32 0, i32 16)
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32, i32* @ARMCP_PACKET_FREQUENCY_CURR_GET, align 4
  %15 = load i32, i32* @ARMCP_PKT_CTL_OPCODE_SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = call i8* @cpu_to_le32(i32 %16)
  %18 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %7, i32 0, i32 1
  store i8* %17, i8** %18, align 8
  br label %25

19:                                               ; preds = %3
  %20 = load i32, i32* @ARMCP_PACKET_FREQUENCY_GET, align 4
  %21 = load i32, i32* @ARMCP_PKT_CTL_OPCODE_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = call i8* @cpu_to_le32(i32 %22)
  %24 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %7, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  br label %25

25:                                               ; preds = %19, %13
  %26 = load i32, i32* %5, align 4
  %27 = call i8* @cpu_to_le32(i32 %26)
  %28 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %7, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  %29 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %30 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.hl_device*, i32*, i32, i32, i64*)*, i32 (%struct.hl_device*, i32*, i32, i32, i64*)** %32, align 8
  %34 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %35 = bitcast %struct.armcp_packet* %7 to i32*
  %36 = load i32, i32* @SET_CLK_PKT_TIMEOUT, align 4
  %37 = call i32 %33(%struct.hl_device* %34, i32* %35, i32 16, i32 %36, i64* %8)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %25
  %41 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %42 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %8, align 8
  br label %49

49:                                               ; preds = %40, %25
  %50 = load i64, i64* %8, align 8
  ret i64 %50
}

declare dso_local i32 @memset(%struct.armcp_packet*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
