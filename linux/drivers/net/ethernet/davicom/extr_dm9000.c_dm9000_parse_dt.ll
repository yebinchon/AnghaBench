; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/davicom/extr_dm9000.c_dm9000_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/davicom/extr_dm9000.c_dm9000_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm9000_plat_data = type { i32, i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@CONFIG_OF = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"davicom,ext-phy\00", align 1
@DM9000_PLATF_EXT_PHY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"davicom,no-eeprom\00", align 1
@DM9000_PLATF_NO_EEPROM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm9000_plat_data* (%struct.device*)* @dm9000_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm9000_plat_data* @dm9000_parse_dt(%struct.device* %0) #0 {
  %2 = alloca %struct.dm9000_plat_data*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.dm9000_plat_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %9, %struct.device_node** %5, align 8
  %10 = load i32, i32* @CONFIG_OF, align 4
  %11 = call i32 @IS_ENABLED(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13, %1
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.dm9000_plat_data* @ERR_PTR(i32 %18)
  store %struct.dm9000_plat_data* %19, %struct.dm9000_plat_data** %2, align 8
  br label %64

20:                                               ; preds = %13
  %21 = load %struct.device*, %struct.device** %3, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.dm9000_plat_data* @devm_kzalloc(%struct.device* %21, i32 8, i32 %22)
  store %struct.dm9000_plat_data* %23, %struct.dm9000_plat_data** %4, align 8
  %24 = load %struct.dm9000_plat_data*, %struct.dm9000_plat_data** %4, align 8
  %25 = icmp ne %struct.dm9000_plat_data* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.dm9000_plat_data* @ERR_PTR(i32 %28)
  store %struct.dm9000_plat_data* %29, %struct.dm9000_plat_data** %2, align 8
  br label %64

30:                                               ; preds = %20
  %31 = load %struct.device_node*, %struct.device_node** %5, align 8
  %32 = call i64 @of_find_property(%struct.device_node* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* @DM9000_PLATF_EXT_PHY, align 4
  %36 = load %struct.dm9000_plat_data*, %struct.dm9000_plat_data** %4, align 8
  %37 = getelementptr inbounds %struct.dm9000_plat_data, %struct.dm9000_plat_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %30
  %41 = load %struct.device_node*, %struct.device_node** %5, align 8
  %42 = call i64 @of_find_property(%struct.device_node* %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32, i32* @DM9000_PLATF_NO_EEPROM, align 4
  %46 = load %struct.dm9000_plat_data*, %struct.dm9000_plat_data** %4, align 8
  %47 = getelementptr inbounds %struct.dm9000_plat_data, %struct.dm9000_plat_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %44, %40
  %51 = load %struct.device_node*, %struct.device_node** %5, align 8
  %52 = call i8* @of_get_mac_address(%struct.device_node* %51)
  store i8* %52, i8** %6, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @IS_ERR(i8* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %struct.dm9000_plat_data*, %struct.dm9000_plat_data** %4, align 8
  %58 = getelementptr inbounds %struct.dm9000_plat_data, %struct.dm9000_plat_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @ether_addr_copy(i32 %59, i8* %60)
  br label %62

62:                                               ; preds = %56, %50
  %63 = load %struct.dm9000_plat_data*, %struct.dm9000_plat_data** %4, align 8
  store %struct.dm9000_plat_data* %63, %struct.dm9000_plat_data** %2, align 8
  br label %64

64:                                               ; preds = %62, %26, %16
  %65 = load %struct.dm9000_plat_data*, %struct.dm9000_plat_data** %2, align 8
  ret %struct.dm9000_plat_data* %65
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local %struct.dm9000_plat_data* @ERR_PTR(i32) #1

declare dso_local %struct.dm9000_plat_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i8* @of_get_mac_address(%struct.device_node*) #1

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i32 @ether_addr_copy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
