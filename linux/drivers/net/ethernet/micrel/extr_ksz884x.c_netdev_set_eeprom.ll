; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_set_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_set_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i64, i32, i32 }
%struct.dev_priv = type { %struct.dev_info* }
%struct.dev_info = type { i32 }

@EEPROM_SIZE = common dso_local global i32 0, align 4
@EEPROM_MAGIC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@eeprom_data = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i64*)* @netdev_set_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_set_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.dev_priv*, align 8
  %9 = alloca %struct.dev_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i64* %2, i64** %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.dev_priv* @netdev_priv(%struct.net_device* %16)
  store %struct.dev_priv* %17, %struct.dev_priv** %8, align 8
  %18 = load %struct.dev_priv*, %struct.dev_priv** %8, align 8
  %19 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %18, i32 0, i32 0
  %20 = load %struct.dev_info*, %struct.dev_info** %19, align 8
  store %struct.dev_info* %20, %struct.dev_info** %9, align 8
  %21 = load i32, i32* @EEPROM_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i64, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  store i64* %24, i64** %12, align 8
  %25 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %26 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @EEPROM_MAGIC, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %117

33:                                               ; preds = %3
  %34 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %35 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %38 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %36, %39
  %41 = add nsw i32 %40, 1
  %42 = sdiv i32 %41, 2
  store i32 %42, i32* %14, align 4
  %43 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %44 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sdiv i32 %45, 2
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %60, %33
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load %struct.dev_info*, %struct.dev_info** %9, align 8
  %53 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %52, i32 0, i32 0
  %54 = load i32, i32* %13, align 4
  %55 = call i64 @eeprom_read(i32* %53, i32 %54)
  %56 = load i64*, i64** @eeprom_data, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  store i64 %55, i64* %59, align 8
  br label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %13, align 4
  br label %47

63:                                               ; preds = %47
  %64 = load i64*, i64** @eeprom_data, align 8
  %65 = load i32, i32* @EEPROM_SIZE, align 4
  %66 = mul nsw i32 %65, 2
  %67 = call i32 @memcpy(i64* %24, i64* %64, i32 %66)
  %68 = load i64*, i64** %12, align 8
  %69 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %70 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %68, i64 %72
  %74 = load i64*, i64** %7, align 8
  %75 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %76 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @memcpy(i64* %73, i64* %74, i32 %77)
  store i32 0, i32* %13, align 4
  br label %79

79:                                               ; preds = %113, %63
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @EEPROM_SIZE, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %116

83:                                               ; preds = %79
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %24, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load i64*, i64** @eeprom_data, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %87, %92
  br i1 %93, label %94, label %112

94:                                               ; preds = %83
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %24, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i64*, i64** @eeprom_data, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  store i64 %98, i64* %102, align 8
  %103 = load %struct.dev_info*, %struct.dev_info** %9, align 8
  %104 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %103, i32 0, i32 0
  %105 = load i32, i32* %13, align 4
  %106 = load i64*, i64** @eeprom_data, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @eeprom_write(i32* %104, i32 %105, i64 %110)
  br label %112

112:                                              ; preds = %94, %83
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  br label %79

116:                                              ; preds = %79
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %117

117:                                              ; preds = %116, %30
  %118 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local %struct.dev_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @eeprom_read(i32*, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @eeprom_write(i32*, i32, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
