; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_flash_firmware_from_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_flash_firmware_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.firmware = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Error %d requesting firmware file: %s\0A\00", align 1
@BNX_DIR_ORDINAL_FIRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i8*)* @bnxt_flash_firmware_from_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_flash_firmware_from_file(%struct.net_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = call i32 @request_firmware(%struct.firmware** %8, i8* %10, i32* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @netdev_err(%struct.net_device* %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %18, i8* %19)
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %66

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @bnxt_dir_type_is_ape_bin_format(i32 %23)
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.firmware*, %struct.firmware** %8, align 8
  %30 = getelementptr inbounds %struct.firmware, %struct.firmware* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.firmware*, %struct.firmware** %8, align 8
  %33 = getelementptr inbounds %struct.firmware, %struct.firmware* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bnxt_flash_firmware(%struct.net_device* %27, i32 %28, i32 %31, i32 %34)
  store i32 %35, i32* %9, align 4
  br label %62

36:                                               ; preds = %22
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @bnxt_dir_type_is_other_exec_format(i32 %37)
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.firmware*, %struct.firmware** %8, align 8
  %44 = getelementptr inbounds %struct.firmware, %struct.firmware* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.firmware*, %struct.firmware** %8, align 8
  %47 = getelementptr inbounds %struct.firmware, %struct.firmware* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @bnxt_flash_microcode(%struct.net_device* %41, i32 %42, i32 %45, i32 %48)
  store i32 %49, i32* %9, align 4
  br label %61

50:                                               ; preds = %36
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @BNX_DIR_ORDINAL_FIRST, align 4
  %54 = load %struct.firmware*, %struct.firmware** %8, align 8
  %55 = getelementptr inbounds %struct.firmware, %struct.firmware* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.firmware*, %struct.firmware** %8, align 8
  %58 = getelementptr inbounds %struct.firmware, %struct.firmware* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @bnxt_flash_nvram(%struct.net_device* %51, i32 %52, i32 %53, i32 0, i32 0, i32 %56, i32 %59)
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %50, %40
  br label %62

62:                                               ; preds = %61, %26
  %63 = load %struct.firmware*, %struct.firmware** %8, align 8
  %64 = call i32 @release_firmware(%struct.firmware* %63)
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %62, %16
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i8*) #1

declare dso_local i32 @bnxt_dir_type_is_ape_bin_format(i32) #1

declare dso_local i32 @bnxt_flash_firmware(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @bnxt_dir_type_is_other_exec_format(i32) #1

declare dso_local i32 @bnxt_flash_microcode(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @bnxt_flash_nvram(%struct.net_device*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
