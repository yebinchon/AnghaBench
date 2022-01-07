; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_firmware_if.c_hl_fw_armcp_info_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_firmware_if.c_hl_fw_armcp_info_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { %struct.TYPE_3__*, i32, %struct.asic_fixed_properties }
%struct.TYPE_3__ = type { i32 (%struct.hl_device*, i32*, i32, i32, i64*)*, i32 (%struct.hl_device*, i32, i8*)*, i8* (%struct.hl_device*, i32, i32*)* }
%struct.asic_fixed_properties = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.armcp_packet = type { i8*, i32, i8* }

@.str = private unnamed_addr constant [53 x i8] c"Failed to allocate DMA memory for ArmCP info packet\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ARMCP_PACKET_INFO_GET = common dso_local global i32 0, align 4
@ARMCP_PKT_CTL_OPCODE_SHIFT = common dso_local global i32 0, align 4
@HL_ARMCP_INFO_TIMEOUT_USEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to send ArmCP info pkt, error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Failed to build hwmon channel info, error %d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_fw_armcp_info_get(%struct.hl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca %struct.asic_fixed_properties*, align 8
  %5 = alloca %struct.armcp_packet, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  %10 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %11 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %10, i32 0, i32 2
  store %struct.asic_fixed_properties* %11, %struct.asic_fixed_properties** %4, align 8
  %12 = bitcast %struct.armcp_packet* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %14 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i8* (%struct.hl_device*, i32, i32*)*, i8* (%struct.hl_device*, i32, i32*)** %16, align 8
  %18 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %19 = call i8* %17(%struct.hl_device* %18, i32 4, i32* %7)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %1
  %23 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %24 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i32, i8*, ...) @dev_err(i32 %25, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %91

29:                                               ; preds = %1
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @memset(i8* %30, i32 0, i32 4)
  %32 = load i32, i32* @ARMCP_PACKET_INFO_GET, align 4
  %33 = load i32, i32* @ARMCP_PKT_CTL_OPCODE_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %5, i32 0, i32 2
  store i8* %35, i8** %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @cpu_to_le64(i32 %37)
  %39 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %5, i32 0, i32 1
  store i32 %38, i32* %39, align 8
  %40 = call i8* @cpu_to_le32(i32 4)
  %41 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %5, i32 0, i32 0
  store i8* %40, i8** %41, align 8
  %42 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %43 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32 (%struct.hl_device*, i32*, i32, i32, i64*)*, i32 (%struct.hl_device*, i32*, i32, i32, i64*)** %45, align 8
  %47 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %48 = bitcast %struct.armcp_packet* %5 to i32*
  %49 = load i32, i32* @HL_ARMCP_INFO_TIMEOUT_USEC, align 4
  %50 = call i32 %46(%struct.hl_device* %47, i32* %48, i32 24, i32 %49, i64* %8)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %29
  %54 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %55 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 (i32, i8*, ...) @dev_err(i32 %56, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %81

59:                                               ; preds = %29
  %60 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %4, align 8
  %61 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %60, i32 0, i32 0
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @memcpy(%struct.TYPE_4__* %61, i8* %62, i32 4)
  %64 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %65 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %4, align 8
  %66 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @hl_build_hwmon_channel_info(%struct.hl_device* %64, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %59
  %73 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %74 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 (i32, i8*, ...) @dev_err(i32 %75, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @EFAULT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %9, align 4
  br label %81

80:                                               ; preds = %59
  br label %81

81:                                               ; preds = %80, %72, %53
  %82 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %83 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32 (%struct.hl_device*, i32, i8*)*, i32 (%struct.hl_device*, i32, i8*)** %85, align 8
  %87 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 %86(%struct.hl_device* %87, i32 4, i8* %88)
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %81, %22
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i8* @cpu_to_le32(i32) #2

declare dso_local i32 @cpu_to_le64(i32) #2

declare dso_local i32 @memcpy(%struct.TYPE_4__*, i8*, i32) #2

declare dso_local i32 @hl_build_hwmon_channel_info(%struct.hl_device*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
