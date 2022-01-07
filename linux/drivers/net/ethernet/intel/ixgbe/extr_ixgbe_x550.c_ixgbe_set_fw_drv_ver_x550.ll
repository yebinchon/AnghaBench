; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_set_fw_drv_ver_x550.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_set_fw_drv_ver_x550.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ixgbe_hic_drv_info2 = type { %struct.TYPE_6__, i32, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64, i64, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@IXGBE_ERR_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@FW_CEM_CMD_DRIVER_INFO = common dso_local global i32 0, align 4
@FW_CEM_CMD_DRIVER_INFO_LEN = common dso_local global i64 0, align 8
@FW_CEM_CMD_RESERVED = common dso_local global i32 0, align 4
@FW_CEM_HDR_LEN = common dso_local global i64 0, align 8
@FW_CEM_MAX_RETRIES = common dso_local global i32 0, align 4
@IXGBE_HI_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@FW_CEM_RESP_STATUS_SUCCESS = common dso_local global i64 0, align 8
@IXGBE_ERR_HOST_INTERFACE_COMMAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i8*, i8*, i8*, i8*, i32, i8*)* @ixgbe_set_fw_drv_ver_x550 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_set_fw_drv_ver_x550(%struct.ixgbe_hw* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5, i8* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.ixgbe_hw*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.ixgbe_hic_drv_info2, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %19 = load i32, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %7
  %22 = load i8*, i8** %15, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ugt i64 %26, 4
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %21, %7
  %29 = load i64, i64* @IXGBE_ERR_INVALID_ARGUMENT, align 8
  store i64 %29, i64* %8, align 8
  br label %101

30:                                               ; preds = %24
  %31 = load i32, i32* @FW_CEM_CMD_DRIVER_INFO, align 4
  %32 = getelementptr inbounds %struct.ixgbe_hic_drv_info2, %struct.ixgbe_hic_drv_info2* %16, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load i64, i64* @FW_CEM_CMD_DRIVER_INFO_LEN, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = getelementptr inbounds %struct.ixgbe_hic_drv_info2, %struct.ixgbe_hic_drv_info2* %16, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* @FW_CEM_CMD_RESERVED, align 4
  %41 = getelementptr inbounds %struct.ixgbe_hic_drv_info2, %struct.ixgbe_hic_drv_info2* %16, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 8
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %45 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = getelementptr inbounds %struct.ixgbe_hic_drv_info2, %struct.ixgbe_hic_drv_info2* %16, i32 0, i32 6
  store i8* %48, i8** %49, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds %struct.ixgbe_hic_drv_info2, %struct.ixgbe_hic_drv_info2* %16, i32 0, i32 5
  store i8* %50, i8** %51, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = getelementptr inbounds %struct.ixgbe_hic_drv_info2, %struct.ixgbe_hic_drv_info2* %16, i32 0, i32 4
  store i8* %52, i8** %53, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = getelementptr inbounds %struct.ixgbe_hic_drv_info2, %struct.ixgbe_hic_drv_info2* %16, i32 0, i32 3
  store i8* %54, i8** %55, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = getelementptr inbounds %struct.ixgbe_hic_drv_info2, %struct.ixgbe_hic_drv_info2* %16, i32 0, i32 2
  store i8* %56, i8** %57, align 8
  %58 = getelementptr inbounds %struct.ixgbe_hic_drv_info2, %struct.ixgbe_hic_drv_info2* %16, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = getelementptr inbounds %struct.ixgbe_hic_drv_info2, %struct.ixgbe_hic_drv_info2* %16, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i8*, i8** %15, align 8
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @memcpy(i32 %61, i8* %62, i32 %63)
  %65 = bitcast %struct.ixgbe_hic_drv_info2* %16 to i8**
  %66 = load i64, i64* @FW_CEM_HDR_LEN, align 8
  %67 = getelementptr inbounds %struct.ixgbe_hic_drv_info2, %struct.ixgbe_hic_drv_info2* %16, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = call i64 @ixgbe_calculate_checksum(i8** %65, i64 %70)
  %72 = getelementptr inbounds %struct.ixgbe_hic_drv_info2, %struct.ixgbe_hic_drv_info2* %16, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  store i32 0, i32* %18, align 4
  br label %74

74:                                               ; preds = %96, %30
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* @FW_CEM_MAX_RETRIES, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %99

78:                                               ; preds = %74
  %79 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %80 = bitcast %struct.ixgbe_hic_drv_info2* %16 to i32*
  %81 = load i32, i32* @IXGBE_HI_COMMAND_TIMEOUT, align 4
  %82 = call i64 @ixgbe_host_interface_command(%struct.ixgbe_hw* %79, i32* %80, i32 88, i32 %81, i32 1)
  store i64 %82, i64* %17, align 8
  %83 = load i64, i64* %17, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %96

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.ixgbe_hic_drv_info2, %struct.ixgbe_hic_drv_info2* %16, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @FW_CEM_RESP_STATUS_SUCCESS, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i64, i64* @IXGBE_ERR_HOST_INTERFACE_COMMAND, align 8
  store i64 %94, i64* %8, align 8
  br label %101

95:                                               ; preds = %86
  store i64 0, i64* %8, align 8
  br label %101

96:                                               ; preds = %85
  %97 = load i32, i32* %18, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %18, align 4
  br label %74

99:                                               ; preds = %74
  %100 = load i64, i64* %17, align 8
  store i64 %100, i64* %8, align 8
  br label %101

101:                                              ; preds = %99, %95, %93, %28
  %102 = load i64, i64* %8, align 8
  ret i64 %102
}

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i64 @ixgbe_calculate_checksum(i8**, i64) #1

declare dso_local i64 @ixgbe_host_interface_command(%struct.ixgbe_hw*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
