; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303_mdio.c_lan9303_mdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303_mdio.c_lan9303_mdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.lan9303_mdio = type { %struct.TYPE_7__, %struct.mdio_device* }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_8__*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lan9303_mdio_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"regmap init failed: %d\0A\00", align 1
@lan9303_mdio_phy_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"LAN9303 MDIO driver loaded successfully\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdio_device*)* @lan9303_mdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan9303_mdio_probe(%struct.mdio_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mdio_device*, align 8
  %4 = alloca %struct.lan9303_mdio*, align 8
  %5 = alloca i32, align 4
  store %struct.mdio_device* %0, %struct.mdio_device** %3, align 8
  %6 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %7 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.lan9303_mdio* @devm_kzalloc(%struct.TYPE_8__* %7, i32 32, i32 %8)
  store %struct.lan9303_mdio* %9, %struct.lan9303_mdio** %4, align 8
  %10 = load %struct.lan9303_mdio*, %struct.lan9303_mdio** %4, align 8
  %11 = icmp ne %struct.lan9303_mdio* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %71

15:                                               ; preds = %1
  %16 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %17 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %16, i32 0, i32 0
  %18 = load %struct.lan9303_mdio*, %struct.lan9303_mdio** %4, align 8
  %19 = call i32 @devm_regmap_init(%struct.TYPE_8__* %17, i32* null, %struct.lan9303_mdio* %18, i32* @lan9303_mdio_regmap_config)
  %20 = load %struct.lan9303_mdio*, %struct.lan9303_mdio** %4, align 8
  %21 = getelementptr inbounds %struct.lan9303_mdio, %struct.lan9303_mdio* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 8
  %23 = load %struct.lan9303_mdio*, %struct.lan9303_mdio** %4, align 8
  %24 = getelementptr inbounds %struct.lan9303_mdio, %struct.lan9303_mdio* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @IS_ERR(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %15
  %30 = load %struct.lan9303_mdio*, %struct.lan9303_mdio** %4, align 8
  %31 = getelementptr inbounds %struct.lan9303_mdio, %struct.lan9303_mdio* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @PTR_ERR(i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %36 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %35, i32 0, i32 0
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @dev_err(%struct.TYPE_8__* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %71

40:                                               ; preds = %15
  %41 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %42 = load %struct.lan9303_mdio*, %struct.lan9303_mdio** %4, align 8
  %43 = getelementptr inbounds %struct.lan9303_mdio, %struct.lan9303_mdio* %42, i32 0, i32 1
  store %struct.mdio_device* %41, %struct.mdio_device** %43, align 8
  %44 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %45 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %44, i32 0, i32 0
  %46 = load %struct.lan9303_mdio*, %struct.lan9303_mdio** %4, align 8
  %47 = call i32 @dev_set_drvdata(%struct.TYPE_8__* %45, %struct.lan9303_mdio* %46)
  %48 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %49 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %48, i32 0, i32 0
  %50 = load %struct.lan9303_mdio*, %struct.lan9303_mdio** %4, align 8
  %51 = getelementptr inbounds %struct.lan9303_mdio, %struct.lan9303_mdio* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %52, align 8
  %53 = load %struct.lan9303_mdio*, %struct.lan9303_mdio** %4, align 8
  %54 = getelementptr inbounds %struct.lan9303_mdio, %struct.lan9303_mdio* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32* @lan9303_mdio_phy_ops, i32** %55, align 8
  %56 = load %struct.lan9303_mdio*, %struct.lan9303_mdio** %4, align 8
  %57 = getelementptr inbounds %struct.lan9303_mdio, %struct.lan9303_mdio* %56, i32 0, i32 0
  %58 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %59 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @lan9303_probe(%struct.TYPE_7__* %57, i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %40
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %71

67:                                               ; preds = %40
  %68 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %69 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %68, i32 0, i32 0
  %70 = call i32 @dev_info(%struct.TYPE_8__* %69, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %65, %29, %12
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.lan9303_mdio* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @devm_regmap_init(%struct.TYPE_8__*, i32*, %struct.lan9303_mdio*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_8__*, %struct.lan9303_mdio*) #1

declare dso_local i32 @lan9303_probe(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
