; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }
%struct.port_info = type { %struct.adapter* }
%struct.adapter = type { i32 }

@EEPROMSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EEPROM_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.port_info*, align 8
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.port_info* @netdev_priv(%struct.net_device* %13)
  store %struct.port_info* %14, %struct.port_info** %8, align 8
  %15 = load %struct.port_info*, %struct.port_info** %8, align 8
  %16 = getelementptr inbounds %struct.port_info, %struct.port_info* %15, i32 0, i32 0
  %17 = load %struct.adapter*, %struct.adapter** %16, align 8
  store %struct.adapter* %17, %struct.adapter** %9, align 8
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* @EEPROMSIZE, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32* @kmalloc(i32 %18, i32 %19)
  store i32* %20, i32** %12, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %79

26:                                               ; preds = %3
  %27 = load i32, i32* @EEPROM_MAGIC, align 4
  %28 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %29 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %31 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, -4
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %57, %26
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %40 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %43 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %41, %44
  %46 = icmp slt i32 %38, %45
  br label %47

47:                                               ; preds = %37, %34
  %48 = phi i1 [ false, %34 ], [ %46, %37 ]
  br i1 %48, label %49, label %60

49:                                               ; preds = %47
  %50 = load %struct.adapter*, %struct.adapter** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32*, i32** %12, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = call i32 @t3_seeprom_read(%struct.adapter* %50, i32 %51, i32* %55)
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 4
  store i32 %59, i32* %10, align 4
  br label %34

60:                                               ; preds = %47
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %60
  %64 = load i32*, i32** %7, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %67 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %72 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @memcpy(i32* %64, i32* %70, i32 %73)
  br label %75

75:                                               ; preds = %63, %60
  %76 = load i32*, i32** %12, align 8
  %77 = call i32 @kfree(i32* %76)
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %75, %23
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @t3_seeprom_read(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
