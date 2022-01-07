; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mdio.c_hclge_mac_mdio_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mdio.c_hclge_mac_mdio_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.hclge_mac }
%struct.hclge_mac = type { i64, %struct.mii_bus*, %struct.phy_device* }
%struct.mii_bus = type { i8*, i32, i32*, %struct.hclge_dev*, i32, i32, i32 }
%struct.phy_device = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"no phy device is connected to mdio bus\0A\00", align 1
@PHY_MAX_ADDR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"phy_addr(%d) is too large.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"hisilicon MII bus\00", align 1
@hclge_mdio_read = common dso_local global i32 0, align 4
@hclge_mdio_write = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"mii\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Failed to register MDIO bus ret = %#x\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Failed to get phy device\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@PHY_INEXISTENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hclge_mac_mdio_config(%struct.hclge_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca %struct.hclge_mac*, align 8
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  %8 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %9 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.hclge_mac* %10, %struct.hclge_mac** %4, align 8
  %11 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %12 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 255
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %19 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @dev_info(i32* %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %128

23:                                               ; preds = %1
  %24 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %25 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PHY_MAX_ADDR, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %23
  %32 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %33 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %37 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 (i32*, i8*, ...) @dev_err(i32* %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %128

44:                                               ; preds = %23
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %47 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call %struct.mii_bus* @devm_mdiobus_alloc(i32* %49)
  store %struct.mii_bus* %50, %struct.mii_bus** %6, align 8
  %51 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %52 = icmp ne %struct.mii_bus* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %45
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %128

56:                                               ; preds = %45
  %57 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %58 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %57, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %58, align 8
  %59 = load i32, i32* @hclge_mdio_read, align 4
  %60 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %61 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %60, i32 0, i32 6
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @hclge_mdio_write, align 4
  %63 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %64 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %66 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %69 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %70 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = call i8* @dev_name(i32* %72)
  %74 = call i32 @snprintf(i32 %67, i32 %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %73)
  %75 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %76 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %80 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %79, i32 0, i32 2
  store i32* %78, i32** %80, align 8
  %81 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %82 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %83 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %82, i32 0, i32 3
  store %struct.hclge_dev* %81, %struct.hclge_dev** %83, align 8
  %84 = load %struct.hclge_mac*, %struct.hclge_mac** %4, align 8
  %85 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = shl i32 1, %87
  %89 = xor i32 %88, -1
  %90 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %91 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 8
  %92 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %93 = call i32 @mdiobus_register(%struct.mii_bus* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %56
  %97 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %98 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 (i32*, i8*, ...) @dev_err(i32* %99, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %2, align 4
  br label %128

103:                                              ; preds = %56
  %104 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %105 = load %struct.hclge_mac*, %struct.hclge_mac** %4, align 8
  %106 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = call %struct.phy_device* @mdiobus_get_phy(%struct.mii_bus* %104, i32 %108)
  store %struct.phy_device* %109, %struct.phy_device** %5, align 8
  %110 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %111 = icmp ne %struct.phy_device* %110, null
  br i1 %111, label %121, label %112

112:                                              ; preds = %103
  %113 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %114 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 (i32*, i8*, ...) @dev_err(i32* %115, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %117 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %118 = call i32 @mdiobus_unregister(%struct.mii_bus* %117)
  %119 = load i32, i32* @EIO, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %2, align 4
  br label %128

121:                                              ; preds = %103
  %122 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %123 = load %struct.hclge_mac*, %struct.hclge_mac** %4, align 8
  %124 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %123, i32 0, i32 2
  store %struct.phy_device* %122, %struct.phy_device** %124, align 8
  %125 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %126 = load %struct.hclge_mac*, %struct.hclge_mac** %4, align 8
  %127 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %126, i32 0, i32 1
  store %struct.mii_bus* %125, %struct.mii_bus** %127, align 8
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %121, %112, %96, %53, %31, %17
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.mii_bus* @devm_mdiobus_alloc(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @mdiobus_register(%struct.mii_bus*) #1

declare dso_local %struct.phy_device* @mdiobus_get_phy(%struct.mii_bus*, i32) #1

declare dso_local i32 @mdiobus_unregister(%struct.mii_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
