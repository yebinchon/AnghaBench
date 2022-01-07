; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_of_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_of_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ath_hw*, %struct.TYPE_4__* }
%struct.ath_hw = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ath_common = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"parsing configuration from OF node\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"qca,no-eeprom\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"ath9k-eeprom-%s-%s.bin\00", align 1
@AH_USE_EEPROM = common dso_local global i32 0, align 4
@AH_NO_EEP_SWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*)* @ath9k_of_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_of_init(%struct.ath_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [100 x i8], align 16
  %10 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  %11 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %4, align 8
  %16 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %17 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %16, i32 0, i32 0
  %18 = load %struct.ath_hw*, %struct.ath_hw** %17, align 8
  store %struct.ath_hw* %18, %struct.ath_hw** %5, align 8
  %19 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %20 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %19)
  store %struct.ath_common* %20, %struct.ath_common** %6, align 8
  %21 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %22 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load %struct.device_node*, %struct.device_node** %4, align 8
  %27 = call i32 @of_device_is_available(%struct.device_node* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %78

30:                                               ; preds = %1
  %31 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %32 = load i32, i32* @CONFIG, align 4
  %33 = call i32 @ath_dbg(%struct.ath_common* %31, i32 %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.device_node*, %struct.device_node** %4, align 8
  %35 = call i64 @of_property_read_bool(%struct.device_node* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %30
  %38 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @ath_bus_type_to_string(i32 %39)
  %41 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %42 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_name(i32 %43)
  %45 = call i32 @scnprintf(i8* %38, i32 100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 %44)
  %46 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %47 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %48 = call i32 @ath9k_eeprom_request(%struct.ath_softc* %46, i8* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %37
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %2, align 4
  br label %78

53:                                               ; preds = %37
  %54 = load i32, i32* @AH_USE_EEPROM, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %57 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* @AH_NO_EEP_SWAP, align 4
  %61 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %62 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %53, %30
  %66 = load %struct.device_node*, %struct.device_node** %4, align 8
  %67 = call i8* @of_get_mac_address(%struct.device_node* %66)
  store i8* %67, i8** %8, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @IS_ERR(i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %73 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @ether_addr_copy(i32 %74, i8* %75)
  br label %77

77:                                               ; preds = %71, %65
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %51, %29
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @of_device_is_available(%struct.device_node*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @ath_bus_type_to_string(i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @ath9k_eeprom_request(%struct.ath_softc*, i8*) #1

declare dso_local i8* @of_get_mac_address(%struct.device_node*) #1

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i32 @ether_addr_copy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
