; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_firmware_if.c_hl_fw_get_eeprom_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_firmware_if.c_hl_fw_get_eeprom_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.hl_device*, i32*, i32, i32, i64*)*, i32 (%struct.hl_device*, i64, i8*)*, i8* (%struct.hl_device*, i64, i32*)* }
%struct.armcp_packet = type { i8*, i32, i8* }

@.str = private unnamed_addr constant [55 x i8] c"Failed to allocate DMA memory for ArmCP EEPROM packet\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ARMCP_PACKET_EEPROM_DATA_GET = common dso_local global i64 0, align 8
@ARMCP_PKT_CTL_OPCODE_SHIFT = common dso_local global i64 0, align 8
@HL_ARMCP_EEPROM_TIMEOUT_USEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to send ArmCP EEPROM packet, error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_fw_get_eeprom_data(%struct.hl_device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hl_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.armcp_packet, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = bitcast %struct.armcp_packet* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  %14 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %15 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i8* (%struct.hl_device*, i64, i32*)*, i8* (%struct.hl_device*, i64, i32*)** %17, align 8
  %19 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i8* %18(%struct.hl_device* %19, i64 %20, i32* %10)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %3
  %25 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %26 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i32, i8*, ...) @dev_err(i32 %27, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %81

31:                                               ; preds = %3
  %32 = load i8*, i8** %9, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @memset(i8* %32, i32 0, i64 %33)
  %35 = load i64, i64* @ARMCP_PACKET_EEPROM_DATA_GET, align 8
  %36 = load i64, i64* @ARMCP_PKT_CTL_OPCODE_SHIFT, align 8
  %37 = shl i64 %35, %36
  %38 = call i8* @cpu_to_le32(i64 %37)
  %39 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %8, i32 0, i32 2
  store i8* %38, i8** %39, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @cpu_to_le64(i32 %40)
  %42 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %8, i32 0, i32 1
  store i32 %41, i32* %42, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i8* @cpu_to_le32(i64 %43)
  %45 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %8, i32 0, i32 0
  store i8* %44, i8** %45, align 8
  %46 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %47 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (%struct.hl_device*, i32*, i32, i32, i64*)*, i32 (%struct.hl_device*, i32*, i32, i32, i64*)** %49, align 8
  %51 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %52 = bitcast %struct.armcp_packet* %8 to i32*
  %53 = load i32, i32* @HL_ARMCP_EEPROM_TIMEOUT_USEC, align 4
  %54 = call i32 %50(%struct.hl_device* %51, i32* %52, i32 24, i32 %53, i64* %11)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %31
  %58 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %59 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 (i32, i8*, ...) @dev_err(i32 %60, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %70

63:                                               ; preds = %31
  %64 = load i8*, i8** %6, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @min(i64 %66, i64 %67)
  %69 = call i32 @memcpy(i8* %64, i8* %65, i32 %68)
  br label %70

70:                                               ; preds = %63, %57
  %71 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %72 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32 (%struct.hl_device*, i64, i8*)*, i32 (%struct.hl_device*, i64, i8*)** %74, align 8
  %76 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 %75(%struct.hl_device* %76, i64 %77, i8* %78)
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %70, %24
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #2

declare dso_local i32 @memset(i8*, i32, i64) #2

declare dso_local i8* @cpu_to_le32(i64) #2

declare dso_local i32 @cpu_to_le64(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @min(i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
