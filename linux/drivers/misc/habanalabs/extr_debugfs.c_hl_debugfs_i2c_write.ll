; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_debugfs.c_hl_debugfs_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_debugfs.c_hl_debugfs_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hl_device*, i32*, i32, i32, i32*)* }
%struct.armcp_packet = type { i32, i8*, i8*, i8*, i32 }

@EBUSY = common dso_local global i32 0, align 4
@ARMCP_PACKET_I2C_WR = common dso_local global i32 0, align 4
@ARMCP_PKT_CTL_OPCODE_SHIFT = common dso_local global i32 0, align 4
@HL_DEVICE_TIMEOUT_USEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to write to I2C, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, i8*, i8*, i8*, i32)* @hl_debugfs_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hl_debugfs_i2c_write(%struct.hl_device* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hl_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.armcp_packet, align 8
  %13 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %15 = call i64 @hl_device_disabled_or_in_reset(%struct.hl_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %55

20:                                               ; preds = %5
  %21 = call i32 @memset(%struct.armcp_packet* %12, i32 0, i32 40)
  %22 = load i32, i32* @ARMCP_PACKET_I2C_WR, align 4
  %23 = load i32, i32* @ARMCP_PKT_CTL_OPCODE_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = call i32 @cpu_to_le32(i32 %24)
  %26 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %12, i32 0, i32 4
  store i32 %25, i32* %26, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %12, i32 0, i32 3
  store i8* %27, i8** %28, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %12, i32 0, i32 2
  store i8* %29, i8** %30, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %12, i32 0, i32 1
  store i8* %31, i8** %32, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @cpu_to_le64(i32 %33)
  %35 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %12, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %37 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.hl_device*, i32*, i32, i32, i32*)*, i32 (%struct.hl_device*, i32*, i32, i32, i32*)** %39, align 8
  %41 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %42 = bitcast %struct.armcp_packet* %12 to i32*
  %43 = load i32, i32* @HL_DEVICE_TIMEOUT_USEC, align 4
  %44 = call i32 %40(%struct.hl_device* %41, i32* %42, i32 40, i32 %43, i32* null)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %20
  %48 = load %struct.hl_device*, %struct.hl_device** %7, align 8
  %49 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %47, %20
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %53, %17
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i64 @hl_device_disabled_or_in_reset(%struct.hl_device*) #1

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
