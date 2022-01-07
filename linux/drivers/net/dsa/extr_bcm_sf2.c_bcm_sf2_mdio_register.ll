; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_mdio_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_mdio_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i8*, i32, i32, %struct.TYPE_6__, i32, i32, i32, %struct.bcm_sf2_priv* }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.bcm_sf2_priv = type { i32, %struct.TYPE_7__*, %struct.device_node*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@bcm_sf2_mdio_register.index = internal global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"brcm,unimac-mdio\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"sf2 slave mii\00", align 1
@bcm_sf2_sw_mdio_read = common dso_local global i32 0, align 4
@bcm_sf2_sw_mdio_write = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"sf2-%d\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"brcm,bcm7445d0\00", align 1
@BRCM_PSEUDO_PHY_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*)* @bcm_sf2_mdio_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sf2_mdio_register(%struct.dsa_switch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca %struct.bcm_sf2_priv*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %3, align 8
  %7 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %8 = call %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch* %7)
  store %struct.bcm_sf2_priv* %8, %struct.bcm_sf2_priv** %4, align 8
  %9 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %9, %struct.device_node** %5, align 8
  %10 = load %struct.device_node*, %struct.device_node** %5, align 8
  %11 = call %struct.TYPE_8__* @of_mdio_find_bus(%struct.device_node* %10)
  %12 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %4, align 8
  %13 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %12, i32 0, i32 3
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %13, align 8
  %14 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %4, align 8
  %15 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %14, i32 0, i32 3
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = icmp ne %struct.TYPE_8__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @EPROBE_DEFER, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %133

21:                                               ; preds = %1
  %22 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %4, align 8
  %23 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %22, i32 0, i32 3
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = call i32 @get_device(i32* %25)
  %27 = load %struct.device_node*, %struct.device_node** %5, align 8
  %28 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %4, align 8
  %29 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %28, i32 0, i32 2
  store %struct.device_node* %27, %struct.device_node** %29, align 8
  %30 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %31 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %30, i32 0, i32 1
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = call %struct.TYPE_7__* @devm_mdiobus_alloc(%struct.TYPE_9__* %32)
  %34 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %4, align 8
  %35 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %34, i32 0, i32 1
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %35, align 8
  %36 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %4, align 8
  %37 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %36, i32 0, i32 1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = icmp ne %struct.TYPE_7__* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %21
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %133

43:                                               ; preds = %21
  %44 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %4, align 8
  %45 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %4, align 8
  %46 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 7
  store %struct.bcm_sf2_priv* %44, %struct.bcm_sf2_priv** %48, align 8
  %49 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %4, align 8
  %50 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %52, align 8
  %53 = load i32, i32* @bcm_sf2_sw_mdio_read, align 4
  %54 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %4, align 8
  %55 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 6
  store i32 %53, i32* %57, align 8
  %58 = load i32, i32* @bcm_sf2_sw_mdio_write, align 4
  %59 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %4, align 8
  %60 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %59, i32 0, i32 1
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 5
  store i32 %58, i32* %62, align 4
  %63 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %4, align 8
  %64 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %69 = load i32, i32* @bcm_sf2_mdio_register.index, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* @bcm_sf2_mdio_register.index, align 4
  %71 = call i32 @snprintf(i32 %67, i32 %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %72 = load %struct.device_node*, %struct.device_node** %5, align 8
  %73 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %4, align 8
  %74 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %73, i32 0, i32 1
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store %struct.device_node* %72, %struct.device_node** %77, align 8
  %78 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %43
  %81 = load i32, i32* @BRCM_PSEUDO_PHY_ADDR, align 4
  %82 = shl i32 1, %81
  %83 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %4, align 8
  %84 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %90

87:                                               ; preds = %43
  %88 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %4, align 8
  %89 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  br label %90

90:                                               ; preds = %87, %80
  %91 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %4, align 8
  %92 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %95 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %4, align 8
  %97 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %96, i32 0, i32 1
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %100 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %99, i32 0, i32 2
  store %struct.TYPE_7__* %98, %struct.TYPE_7__** %100, align 8
  %101 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %102 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %101, i32 0, i32 1
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %4, align 8
  %107 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %106, i32 0, i32 1
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  store i32 %105, i32* %109, align 4
  %110 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %4, align 8
  %111 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = xor i32 %112, -1
  %114 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %4, align 8
  %115 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %114, i32 0, i32 1
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  store i32 %113, i32* %117, align 8
  %118 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %4, align 8
  %119 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %118, i32 0, i32 1
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = load %struct.device_node*, %struct.device_node** %5, align 8
  %122 = call i32 @of_mdiobus_register(%struct.TYPE_7__* %120, %struct.device_node* %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %90
  %126 = load %struct.device_node*, %struct.device_node** %5, align 8
  %127 = icmp ne %struct.device_node* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load %struct.device_node*, %struct.device_node** %5, align 8
  %130 = call i32 @of_node_put(%struct.device_node* %129)
  br label %131

131:                                              ; preds = %128, %125, %90
  %132 = load i32, i32* %6, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %131, %40, %18
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch*) #1

declare dso_local %struct.device_node* @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local %struct.TYPE_8__* @of_mdio_find_bus(%struct.device_node*) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local %struct.TYPE_7__* @devm_mdiobus_alloc(%struct.TYPE_9__*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i64 @of_machine_is_compatible(i8*) #1

declare dso_local i32 @of_mdiobus_register(%struct.TYPE_7__*, %struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
