; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_init.c_qlcnic_get_fw_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_init.c_qlcnic_get_fw_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__*, %struct.firmware* }
%struct.TYPE_2__ = type { i64 }
%struct.firmware = type { i32* }
%struct.uni_data_desc = type { i32, i32 }

@QLCNIC_UNIFIED_ROMIMAGE = common dso_local global i64 0, align 8
@QLCNIC_FW_VERSION_OFFSET = common dso_local global i64 0, align 8
@QLCNIC_UNI_DIR_SECT_FW = common dso_local global i32 0, align 4
@QLCNIC_UNI_FIRMWARE_IDX_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"REV=\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%u.%u.%u \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_get_fw_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_get_fw_version(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.uni_data_desc*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 1
  %15 = load %struct.firmware*, %struct.firmware** %14, align 8
  store %struct.firmware* %15, %struct.firmware** %5, align 8
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @QLCNIC_UNIFIED_ROMIMAGE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load %struct.firmware*, %struct.firmware** %5, align 8
  %25 = getelementptr inbounds %struct.firmware, %struct.firmware* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @QLCNIC_FW_VERSION_OFFSET, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  store i32 %31, i32* %2, align 4
  br label %86

32:                                               ; preds = %1
  %33 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %34 = load i32, i32* @QLCNIC_UNI_DIR_SECT_FW, align 4
  %35 = load i32, i32* @QLCNIC_UNI_FIRMWARE_IDX_OFF, align 4
  %36 = call %struct.uni_data_desc* @qlcnic_get_data_desc(%struct.qlcnic_adapter* %33, i32 %34, i32 %35)
  store %struct.uni_data_desc* %36, %struct.uni_data_desc** %4, align 8
  %37 = load %struct.firmware*, %struct.firmware** %5, align 8
  %38 = getelementptr inbounds %struct.firmware, %struct.firmware* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.uni_data_desc*, %struct.uni_data_desc** %4, align 8
  %41 = getelementptr inbounds %struct.uni_data_desc, %struct.uni_data_desc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %39, i64 %44
  %46 = load %struct.uni_data_desc*, %struct.uni_data_desc** %4, align 8
  %47 = getelementptr inbounds %struct.uni_data_desc, %struct.uni_data_desc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le32_to_cpu(i32 %48)
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %45, i64 %50
  %52 = getelementptr inbounds i32, i32* %51, i64 -17
  store i32* %52, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %82, %32
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 12
  br i1 %55, label %56, label %85

56:                                               ; preds = %53
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = call i32 @strncmp(i32* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %81, label %63

63:                                               ; preds = %56
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = call i32 @sscanf(i32* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %6, i32* %7, i32* %8)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 3
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %86

73:                                               ; preds = %63
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = shl i32 %75, 8
  %77 = add nsw i32 %74, %76
  %78 = load i32, i32* %8, align 4
  %79 = shl i32 %78, 16
  %80 = add nsw i32 %77, %79
  store i32 %80, i32* %2, align 4
  br label %86

81:                                               ; preds = %56
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %53

85:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %73, %72, %23
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.uni_data_desc* @qlcnic_get_data_desc(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @strncmp(i32*, i8*, i32) #1

declare dso_local i32 @sscanf(i32*, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
