; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_load_fw_image_from_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_load_fw_image_from_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.qlc_83xx_fw_info* }
%struct.qlc_83xx_fw_info = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"No file FW image, loading flash FW image.\0A\00", align 1
@QLCNIC_FW_IMG_VALID = common dso_local global i32 0, align 4
@QLC_83XX_BOOT_FROM_FLASH = common dso_local global i32 0, align 4
@QLC_83XX_BOOT_FROM_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_83xx_load_fw_image_from_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_83xx_load_fw_image_from_host(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlc_83xx_fw_info*, align 8
  %5 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %6 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.qlc_83xx_fw_info*, %struct.qlc_83xx_fw_info** %9, align 8
  store %struct.qlc_83xx_fw_info* %10, %struct.qlc_83xx_fw_info** %4, align 8
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.qlc_83xx_fw_info*, %struct.qlc_83xx_fw_info** %4, align 8
  %14 = getelementptr inbounds %struct.qlc_83xx_fw_info, %struct.qlc_83xx_fw_info* %13, i32 0, i32 1
  %15 = load %struct.qlc_83xx_fw_info*, %struct.qlc_83xx_fw_info** %4, align 8
  %16 = getelementptr inbounds %struct.qlc_83xx_fw_info, %struct.qlc_83xx_fw_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i64 @request_firmware(i32* %14, i32 %17, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %31 = load i32, i32* @QLCNIC_FW_IMG_VALID, align 4
  %32 = load i32, i32* @QLC_83XX_BOOT_FROM_FLASH, align 4
  %33 = call i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter* %30, i32 %31, i32 %32)
  br label %45

34:                                               ; preds = %1
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %36 = call i64 @qlcnic_83xx_copy_fw_file(%struct.qlcnic_adapter* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %46

40:                                               ; preds = %34
  %41 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %42 = load i32, i32* @QLCNIC_FW_IMG_VALID, align 4
  %43 = load i32, i32* @QLC_83XX_BOOT_FROM_FILE, align 4
  %44 = call i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %24
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %38
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @request_firmware(i32*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i64 @qlcnic_83xx_copy_fw_file(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
