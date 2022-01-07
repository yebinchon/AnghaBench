; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_ethtool_seeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_ethtool_seeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i64 }
%struct.s2io_nic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@ERR_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"ETHTOOL_WRITE_EEPROM Err: Magic value is wrong, it is 0x%x should be 0x%x\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"ETHTOOL_WRITE_EEPROM Err: Cannot write into the specified offset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i64*)* @s2io_ethtool_seeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2io_ethtool_seeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.s2io_nic*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %14 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.s2io_nic* @netdev_priv(%struct.net_device* %16)
  store %struct.s2io_nic* %17, %struct.s2io_nic** %12, align 8
  %18 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %19 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.s2io_nic*, %struct.s2io_nic** %12, align 8
  %22 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.s2io_nic*, %struct.s2io_nic** %12, align 8
  %27 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 16
  %32 = or i32 %25, %31
  %33 = icmp ne i32 %20, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %3
  %35 = load i32, i32* @ERR_DBG, align 4
  %36 = load %struct.s2io_nic*, %struct.s2io_nic** %12, align 8
  %37 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.s2io_nic*, %struct.s2io_nic** %12, align 8
  %42 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 16
  %47 = or i32 %40, %46
  %48 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %49 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %35, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50)
  %52 = load i32, i32* @EFAULT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %95

54:                                               ; preds = %3
  br label %55

55:                                               ; preds = %89, %54
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %94

58:                                               ; preds = %55
  %59 = load i64*, i64** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = and i32 %64, 255
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load i32, i32* %11, align 4
  %70 = shl i32 %69, 24
  store i32 %70, i32* %10, align 4
  br label %73

71:                                               ; preds = %58
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %71, %68
  %74 = load %struct.s2io_nic*, %struct.s2io_nic** %12, align 8
  %75 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %76 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %77, %79
  %81 = load i32, i32* %10, align 4
  %82 = call i64 @write_eeprom(%struct.s2io_nic* %74, i64 %80, i32 %81, i32 0)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %73
  %85 = load i32, i32* @ERR_DBG, align 4
  %86 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %85, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* @EFAULT, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %95

89:                                               ; preds = %73
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %8, align 4
  br label %55

94:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %94, %84, %34
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.s2io_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DBG_PRINT(i32, i8*, ...) #1

declare dso_local i64 @write_eeprom(%struct.s2io_nic*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
