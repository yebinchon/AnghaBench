; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_set_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_set_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }
%struct.bnxt = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"NVM write not supported from a virtual function\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @bnxt_set_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_set_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bnxt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.bnxt* @netdev_priv(%struct.net_device* %15)
  store %struct.bnxt* %16, %struct.bnxt** %8, align 8
  %17 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %18 = call i32 @BNXT_PF(%struct.bnxt* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = call i32 @netdev_err(%struct.net_device* %21, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %98

25:                                               ; preds = %3
  %26 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %27 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 16
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp eq i32 %30, 65535
  br i1 %31, label %32, label %68

32:                                               ; preds = %25
  %33 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %34 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 255
  store i32 %36, i32* %9, align 4
  %37 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %38 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 8
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %98

46:                                               ; preds = %32
  %47 = load i32, i32* %10, align 4
  switch i32 %47, label %65 [
    i32 14, label %48
  ]

48:                                               ; preds = %46
  %49 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %50 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %53 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = xor i32 %54, -1
  %56 = icmp ne i32 %51, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %98

60:                                               ; preds = %48
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sub nsw i32 %62, 1
  %64 = call i32 @bnxt_erase_nvram_directory(%struct.net_device* %61, i32 %63)
  store i32 %64, i32* %4, align 4
  br label %98

65:                                               ; preds = %46
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %98

68:                                               ; preds = %25
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @bnxt_dir_type_is_executable(i32 %69)
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* @EOPNOTSUPP, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %98

75:                                               ; preds = %68
  %76 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %77 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 65535
  store i32 %79, i32* %12, align 4
  %80 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %81 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = ashr i32 %82, 16
  store i32 %83, i32* %13, align 4
  %84 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %85 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 65535
  store i32 %87, i32* %14, align 4
  %88 = load %struct.net_device*, %struct.net_device** %5, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load i32*, i32** %7, align 8
  %94 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %95 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @bnxt_flash_nvram(%struct.net_device* %88, i32 %89, i32 %90, i32 %91, i32 %92, i32* %93, i32 %96)
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %75, %72, %65, %60, %57, %43, %20
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BNXT_PF(%struct.bnxt*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @bnxt_erase_nvram_directory(%struct.net_device*, i32) #1

declare dso_local i32 @bnxt_dir_type_is_executable(i32) #1

declare dso_local i32 @bnxt_flash_nvram(%struct.net_device*, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
