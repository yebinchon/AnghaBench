; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"unsupported index value: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @bnxt_get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_get_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %11 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %17 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @bnxt_get_nvram_directory(%struct.net_device* %15, i32 %18, i32* %19)
  store i32 %20, i32* %4, align 4
  br label %48

21:                                               ; preds = %3
  %22 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %23 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 24
  store i32 %25, i32* %8, align 4
  %26 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %27 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 16777215
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @netdev_err(%struct.net_device* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %48

38:                                               ; preds = %21
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 %40, 1
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %44 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @bnxt_get_nvram_item(%struct.net_device* %39, i32 %41, i32 %42, i32 %45, i32* %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %38, %32, %14
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @bnxt_get_nvram_directory(%struct.net_device*, i32, i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @bnxt_get_nvram_item(%struct.net_device*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
