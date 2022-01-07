; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_emaclite.c_xemaclite_mdio_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_emaclite.c_xemaclite_mdio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_local = type { %struct.mii_bus*, i64, %struct.device_node*, %struct.TYPE_3__* }
%struct.mii_bus = type { i8*, %struct.device*, i32, i32, %struct.net_local*, i32 }
%struct.device_node = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.device = type { i32 }
%struct.resource = type { i64 }
%struct.phy_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Failed to register mdio bus.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"MDIO of the phy is not registered yet\0A\00", align 1
@XEL_MDIOCTRL_MDIOEN_MASK = common dso_local global i32 0, align 4
@XEL_MDIOCTRL_OFFSET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to allocate mdiobus\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"%.8llx\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Xilinx Emaclite MDIO\00", align 1
@xemaclite_mdio_read = common dso_local global i32 0, align 4
@xemaclite_mdio_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_local*, %struct.device*)* @xemaclite_mdio_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xemaclite_mdio_setup(%struct.net_local* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_local*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca %struct.phy_device*, align 8
  store %struct.net_local* %0, %struct.net_local** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %12 = load %struct.net_local*, %struct.net_local** %4, align 8
  %13 = getelementptr inbounds %struct.net_local, %struct.net_local* %12, i32 0, i32 2
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  %15 = call %struct.device_node* @of_get_parent(%struct.device_node* %14)
  store %struct.device_node* %15, %struct.device_node** %9, align 8
  %16 = load %struct.device_node*, %struct.device_node** %9, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %106

23:                                               ; preds = %2
  %24 = load %struct.device_node*, %struct.device_node** %9, align 8
  %25 = call %struct.device_node* @of_get_parent(%struct.device_node* %24)
  store %struct.device_node* %25, %struct.device_node** %10, align 8
  %26 = load %struct.device_node*, %struct.device_node** %10, align 8
  %27 = call i32 @of_address_to_resource(%struct.device_node* %26, i32 0, %struct.resource* %8)
  %28 = load %struct.net_local*, %struct.net_local** %4, align 8
  %29 = getelementptr inbounds %struct.net_local, %struct.net_local* %28, i32 0, i32 3
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %32, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %23
  %37 = load %struct.net_local*, %struct.net_local** %4, align 8
  %38 = getelementptr inbounds %struct.net_local, %struct.net_local* %37, i32 0, i32 2
  %39 = load %struct.device_node*, %struct.device_node** %38, align 8
  %40 = call %struct.phy_device* @of_phy_find_device(%struct.device_node* %39)
  store %struct.phy_device* %40, %struct.phy_device** %11, align 8
  %41 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %42 = icmp ne %struct.phy_device* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = call i32 @dev_info(%struct.device* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %51

46:                                               ; preds = %36
  %47 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %48 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @put_device(i32* %49)
  br label %51

51:                                               ; preds = %46, %43
  store i32 0, i32* %3, align 4
  br label %106

52:                                               ; preds = %23
  %53 = load i32, i32* @XEL_MDIOCTRL_MDIOEN_MASK, align 4
  %54 = load %struct.net_local*, %struct.net_local** %4, align 8
  %55 = getelementptr inbounds %struct.net_local, %struct.net_local* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @XEL_MDIOCTRL_OFFSET, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @xemaclite_writel(i32 %53, i64 %58)
  %60 = call %struct.mii_bus* (...) @mdiobus_alloc()
  store %struct.mii_bus* %60, %struct.mii_bus** %6, align 8
  %61 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %62 = icmp ne %struct.mii_bus* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %52
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %106

68:                                               ; preds = %52
  %69 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %70 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %73 = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @snprintf(i32 %71, i32 %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %74)
  %76 = load %struct.net_local*, %struct.net_local** %4, align 8
  %77 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %78 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %77, i32 0, i32 4
  store %struct.net_local* %76, %struct.net_local** %78, align 8
  %79 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %80 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %79, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8** %80, align 8
  %81 = load i32, i32* @xemaclite_mdio_read, align 4
  %82 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %83 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @xemaclite_mdio_write, align 4
  %85 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %86 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.device*, %struct.device** %5, align 8
  %88 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %89 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %88, i32 0, i32 1
  store %struct.device* %87, %struct.device** %89, align 8
  %90 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %91 = load %struct.device_node*, %struct.device_node** %9, align 8
  %92 = call i32 @of_mdiobus_register(%struct.mii_bus* %90, %struct.device_node* %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %68
  %96 = load %struct.device*, %struct.device** %5, align 8
  %97 = call i32 @dev_err(%struct.device* %96, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %102

98:                                               ; preds = %68
  %99 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %100 = load %struct.net_local*, %struct.net_local** %4, align 8
  %101 = getelementptr inbounds %struct.net_local, %struct.net_local* %100, i32 0, i32 0
  store %struct.mii_bus* %99, %struct.mii_bus** %101, align 8
  store i32 0, i32* %3, align 4
  br label %106

102:                                              ; preds = %95
  %103 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %104 = call i32 @mdiobus_free(%struct.mii_bus* %103)
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %102, %98, %63, %51, %18
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local %struct.phy_device* @of_phy_find_device(%struct.device_node*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @xemaclite_writel(i32, i64) #1

declare dso_local %struct.mii_bus* @mdiobus_alloc(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i64) #1

declare dso_local i32 @of_mdiobus_register(%struct.mii_bus*, %struct.device_node*) #1

declare dso_local i32 @mdiobus_free(%struct.mii_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
