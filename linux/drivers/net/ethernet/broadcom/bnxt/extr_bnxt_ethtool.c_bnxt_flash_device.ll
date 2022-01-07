; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_flash_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_flash_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_flash = type { i32, i32 }
%struct.bnxt = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"flashdev not supported from a virtual function\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ETHTOOL_FLASH_ALL_REGIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_flash*)* @bnxt_flash_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_flash_device(%struct.net_device* %0, %struct.ethtool_flash* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_flash*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_flash* %1, %struct.ethtool_flash** %5, align 8
  %6 = load %struct.net_device*, %struct.net_device** %4, align 8
  %7 = call i64 @netdev_priv(%struct.net_device* %6)
  %8 = inttoptr i64 %7 to %struct.bnxt*
  %9 = call i32 @BNXT_PF(%struct.bnxt* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call i32 @netdev_err(%struct.net_device* %12, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %45

16:                                               ; preds = %2
  %17 = load %struct.ethtool_flash*, %struct.ethtool_flash** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_flash, %struct.ethtool_flash* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ETHTOOL_FLASH_ALL_REGIONS, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = load %struct.ethtool_flash*, %struct.ethtool_flash** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_flash, %struct.ethtool_flash* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 65535
  br i1 %26, label %27, label %36

27:                                               ; preds = %22, %16
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = load %struct.ethtool_flash*, %struct.ethtool_flash** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_flash, %struct.ethtool_flash* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ethtool_flash*, %struct.ethtool_flash** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_flash, %struct.ethtool_flash* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bnxt_flash_package_from_file(%struct.net_device* %28, i32 %31, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %45

36:                                               ; preds = %22
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = load %struct.ethtool_flash*, %struct.ethtool_flash** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_flash, %struct.ethtool_flash* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ethtool_flash*, %struct.ethtool_flash** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_flash, %struct.ethtool_flash* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @bnxt_flash_firmware_from_file(%struct.net_device* %37, i32 %40, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %36, %27, %11
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @BNXT_PF(%struct.bnxt*) #1

declare dso_local i64 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @bnxt_flash_package_from_file(%struct.net_device*, i32, i32) #1

declare dso_local i32 @bnxt_flash_firmware_from_file(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
