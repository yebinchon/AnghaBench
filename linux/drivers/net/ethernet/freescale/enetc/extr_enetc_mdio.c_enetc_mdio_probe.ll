; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_mdio.c_enetc_mdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_mdio.c_enetc_mdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_pf = type { %struct.mii_bus*, %struct.TYPE_4__* }
%struct.mii_bus = type { i8*, i32, %struct.enetc_mdio_priv*, %struct.device*, i32, i32 }
%struct.enetc_mdio_priv = type { i32* }
%struct.device = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device_node = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Freescale ENETC MDIO Bus\00", align 1
@enetc_mdio_read = common dso_local global i32 0, align 4
@enetc_mdio_write = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"MDIO node missing\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"cannot register MDIO bus\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @enetc_mdio_probe(%struct.enetc_pf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.enetc_pf*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.enetc_mdio_priv*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.mii_bus*, align 8
  %8 = alloca i32, align 4
  store %struct.enetc_pf* %0, %struct.enetc_pf** %3, align 8
  %9 = load %struct.enetc_pf*, %struct.enetc_pf** %3, align 8
  %10 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.mii_bus* @devm_mdiobus_alloc_size(%struct.device* %15, i32 8)
  store %struct.mii_bus* %16, %struct.mii_bus** %7, align 8
  %17 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %18 = icmp ne %struct.mii_bus* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %79

22:                                               ; preds = %1
  %23 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %24 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %25 = load i32, i32* @enetc_mdio_read, align 4
  %26 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %27 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @enetc_mdio_write, align 4
  %29 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %30 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %33 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %32, i32 0, i32 3
  store %struct.device* %31, %struct.device** %33, align 8
  %34 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %35 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %34, i32 0, i32 2
  %36 = load %struct.enetc_mdio_priv*, %struct.enetc_mdio_priv** %35, align 8
  store %struct.enetc_mdio_priv* %36, %struct.enetc_mdio_priv** %5, align 8
  %37 = load %struct.enetc_pf*, %struct.enetc_pf** %3, align 8
  %38 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.enetc_mdio_priv*, %struct.enetc_mdio_priv** %5, align 8
  %42 = getelementptr inbounds %struct.enetc_mdio_priv, %struct.enetc_mdio_priv* %41, i32 0, i32 0
  store i32* %40, i32** %42, align 8
  %43 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %44 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call i8* @dev_name(%struct.device* %47)
  %49 = call i32 @snprintf(i32 %45, i32 %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = getelementptr inbounds %struct.device, %struct.device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.device_node* @of_get_child_by_name(i32 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.device_node* %53, %struct.device_node** %6, align 8
  %54 = load %struct.device_node*, %struct.device_node** %6, align 8
  %55 = icmp ne %struct.device_node* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %22
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = call i32 @dev_err(%struct.device* %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %79

61:                                               ; preds = %22
  %62 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %63 = load %struct.device_node*, %struct.device_node** %6, align 8
  %64 = call i32 @of_mdiobus_register(%struct.mii_bus* %62, %struct.device_node* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load %struct.device_node*, %struct.device_node** %6, align 8
  %69 = call i32 @of_node_put(%struct.device_node* %68)
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %2, align 4
  br label %79

73:                                               ; preds = %61
  %74 = load %struct.device_node*, %struct.device_node** %6, align 8
  %75 = call i32 @of_node_put(%struct.device_node* %74)
  %76 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %77 = load %struct.enetc_pf*, %struct.enetc_pf** %3, align 8
  %78 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %77, i32 0, i32 0
  store %struct.mii_bus* %76, %struct.mii_bus** %78, align 8
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %73, %67, %56, %19
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.mii_bus* @devm_mdiobus_alloc_size(%struct.device*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @of_mdiobus_register(%struct.mii_bus*, %struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
