; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_mdio.c_axienet_mdio_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_mdio.c_axienet_mdio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axienet_local = type { %struct.mii_bus*, %struct.TYPE_2__*, i64 }
%struct.mii_bus = type { i8*, %struct.TYPE_2__*, i32, i32, %struct.axienet_local*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"axienet-%.8llx\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Xilinx Axi Ethernet MDIO\00", align 1
@axienet_mdio_read = common dso_local global i32 0, align 4
@axienet_mdio_write = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @axienet_mdio_setup(%struct.axienet_local* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.axienet_local*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  store %struct.axienet_local* %0, %struct.axienet_local** %3, align 8
  %7 = load %struct.axienet_local*, %struct.axienet_local** %3, align 8
  %8 = call i32 @axienet_mdio_enable(%struct.axienet_local* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %68

13:                                               ; preds = %1
  %14 = call %struct.mii_bus* (...) @mdiobus_alloc()
  store %struct.mii_bus* %14, %struct.mii_bus** %5, align 8
  %15 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %16 = icmp ne %struct.mii_bus* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %68

20:                                               ; preds = %13
  %21 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %22 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %25 = load %struct.axienet_local*, %struct.axienet_local** %3, align 8
  %26 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @snprintf(i32 %23, i32 %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load %struct.axienet_local*, %struct.axienet_local** %3, align 8
  %30 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %31 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %30, i32 0, i32 4
  store %struct.axienet_local* %29, %struct.axienet_local** %31, align 8
  %32 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %33 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8** %33, align 8
  %34 = load i32, i32* @axienet_mdio_read, align 4
  %35 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %36 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @axienet_mdio_write, align 4
  %38 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %39 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.axienet_local*, %struct.axienet_local** %3, align 8
  %41 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %44 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %43, i32 0, i32 1
  store %struct.TYPE_2__* %42, %struct.TYPE_2__** %44, align 8
  %45 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %46 = load %struct.axienet_local*, %struct.axienet_local** %3, align 8
  %47 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %46, i32 0, i32 0
  store %struct.mii_bus* %45, %struct.mii_bus** %47, align 8
  %48 = load %struct.axienet_local*, %struct.axienet_local** %3, align 8
  %49 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.device_node* @of_get_child_by_name(i32 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.device_node* %53, %struct.device_node** %4, align 8
  %54 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %55 = load %struct.device_node*, %struct.device_node** %4, align 8
  %56 = call i32 @of_mdiobus_register(%struct.mii_bus* %54, %struct.device_node* %55)
  store i32 %56, i32* %6, align 4
  %57 = load %struct.device_node*, %struct.device_node** %4, align 8
  %58 = call i32 @of_node_put(%struct.device_node* %57)
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %20
  %62 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %63 = call i32 @mdiobus_free(%struct.mii_bus* %62)
  %64 = load %struct.axienet_local*, %struct.axienet_local** %3, align 8
  %65 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %64, i32 0, i32 0
  store %struct.mii_bus* null, %struct.mii_bus** %65, align 8
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %68

67:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %61, %17, %11
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @axienet_mdio_enable(%struct.axienet_local*) #1

declare dso_local %struct.mii_bus* @mdiobus_alloc(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i64) #1

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #1

declare dso_local i32 @of_mdiobus_register(%struct.mii_bus*, %struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @mdiobus_free(%struct.mii_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
