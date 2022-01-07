; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_register_mdio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_register_mdio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netsec_priv = type { i32, i32*, %struct.mii_bus* }
%struct.mii_bus = type { i8*, i32, i32, i32, i32, %struct.netsec_priv*, i32 }
%struct.device_node = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"SNI NETSEC MDIO\00", align 1
@netsec_phy_read = common dso_local global i32 0, align 4
@netsec_phy_write = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Upgrade f/w for mdio subnode!\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"mdiobus register err(%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"get_phy_device err(%d)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"phy_device_register err(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netsec_priv*, i32)* @netsec_register_mdio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netsec_register_mdio(%struct.netsec_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netsec_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.device_node*, align 8
  store %struct.netsec_priv* %0, %struct.netsec_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %11 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.mii_bus* @devm_mdiobus_alloc(i32 %12)
  store %struct.mii_bus* %13, %struct.mii_bus** %6, align 8
  %14 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %15 = icmp ne %struct.mii_bus* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %142

19:                                               ; preds = %2
  %20 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %21 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %24 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %25 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @dev_name(i32 %26)
  %28 = call i32 @snprintf(i32 %22, i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %30 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %31 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %30, i32 0, i32 5
  store %struct.netsec_priv* %29, %struct.netsec_priv** %31, align 8
  %32 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %33 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %33, align 8
  %34 = load i32, i32* @netsec_phy_read, align 4
  %35 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %36 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @netsec_phy_write, align 4
  %38 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %39 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %41 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %44 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %46 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %47 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %46, i32 0, i32 2
  store %struct.mii_bus* %45, %struct.mii_bus** %47, align 8
  %48 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %49 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.device_node* @dev_of_node(i32 %50)
  %52 = icmp ne %struct.device_node* %51, null
  br i1 %52, label %53, label %85

53:                                               ; preds = %19
  %54 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %55 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.device_node* @dev_of_node(i32 %56)
  store %struct.device_node* %57, %struct.device_node** %9, align 8
  %58 = load %struct.device_node*, %struct.device_node** %9, align 8
  %59 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.device_node* %59, %struct.device_node** %8, align 8
  %60 = load %struct.device_node*, %struct.device_node** %8, align 8
  %61 = icmp ne %struct.device_node* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %63, %struct.device_node** %9, align 8
  br label %69

64:                                               ; preds = %53
  %65 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %66 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dev_info(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %64, %62
  %70 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %71 = load %struct.device_node*, %struct.device_node** %9, align 8
  %72 = call i32 @of_mdiobus_register(%struct.mii_bus* %70, %struct.device_node* %71)
  store i32 %72, i32* %7, align 4
  %73 = load %struct.device_node*, %struct.device_node** %8, align 8
  %74 = call i32 @of_node_put(%struct.device_node* %73)
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %69
  %78 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %79 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @dev_err(i32 %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %3, align 4
  br label %142

84:                                               ; preds = %69
  br label %140

85:                                               ; preds = %19
  %86 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %87 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %86, i32 0, i32 1
  store i32 -1, i32* %87, align 8
  %88 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %89 = call i32 @mdiobus_register(%struct.mii_bus* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %85
  %93 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %94 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @dev_err(i32 %95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %3, align 4
  br label %142

99:                                               ; preds = %85
  %100 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %101 = load i32, i32* %5, align 4
  %102 = call i32* @get_phy_device(%struct.mii_bus* %100, i32 %101, i32 0)
  %103 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %104 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %103, i32 0, i32 1
  store i32* %102, i32** %104, align 8
  %105 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %106 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = call i64 @IS_ERR(i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %99
  %111 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %112 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @PTR_ERR(i32* %113)
  store i32 %114, i32* %7, align 4
  %115 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %116 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @dev_err(i32 %117, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %118)
  %120 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %121 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %120, i32 0, i32 1
  store i32* null, i32** %121, align 8
  %122 = load i32, i32* @ENODEV, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %142

124:                                              ; preds = %99
  %125 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %126 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @phy_device_register(i32* %127)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %124
  %132 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %133 = call i32 @mdiobus_unregister(%struct.mii_bus* %132)
  %134 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %135 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @dev_err(i32 %136, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %131, %124
  br label %140

140:                                              ; preds = %139, %84
  %141 = load i32, i32* %7, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %140, %110, %92, %77, %16
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local %struct.mii_bus* @devm_mdiobus_alloc(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(i32) #1

declare dso_local %struct.device_node* @dev_of_node(i32) #1

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @of_mdiobus_register(%struct.mii_bus*, %struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mdiobus_register(%struct.mii_bus*) #1

declare dso_local i32* @get_phy_device(%struct.mii_bus*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @phy_device_register(i32*) #1

declare dso_local i32 @mdiobus_unregister(%struct.mii_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
