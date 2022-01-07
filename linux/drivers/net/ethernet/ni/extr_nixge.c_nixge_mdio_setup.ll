; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ni/extr_nixge.c_nixge_mdio_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ni/extr_nixge.c_nixge_mdio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nixge_priv = type { %struct.mii_bus*, i32 }
%struct.mii_bus = type { i8*, i32, i32, i32, %struct.nixge_priv*, i32 }
%struct.device_node = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s-mii\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"nixge_mii_bus\00", align 1
@nixge_mdio_read = common dso_local global i32 0, align 4
@nixge_mdio_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nixge_priv*, %struct.device_node*)* @nixge_mdio_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nixge_mdio_setup(%struct.nixge_priv* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nixge_priv*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.mii_bus*, align 8
  store %struct.nixge_priv* %0, %struct.nixge_priv** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %7 = load %struct.nixge_priv*, %struct.nixge_priv** %4, align 8
  %8 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.mii_bus* @devm_mdiobus_alloc(i32 %9)
  store %struct.mii_bus* %10, %struct.mii_bus** %6, align 8
  %11 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %12 = icmp ne %struct.mii_bus* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %48

16:                                               ; preds = %2
  %17 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %18 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %21 = load %struct.nixge_priv*, %struct.nixge_priv** %4, align 8
  %22 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i8* @dev_name(i32 %23)
  %25 = call i32 @snprintf(i32 %19, i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load %struct.nixge_priv*, %struct.nixge_priv** %4, align 8
  %27 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %28 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %27, i32 0, i32 4
  store %struct.nixge_priv* %26, %struct.nixge_priv** %28, align 8
  %29 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %30 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %30, align 8
  %31 = load i32, i32* @nixge_mdio_read, align 4
  %32 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %33 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @nixge_mdio_write, align 4
  %35 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %36 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.nixge_priv*, %struct.nixge_priv** %4, align 8
  %38 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %41 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %43 = load %struct.nixge_priv*, %struct.nixge_priv** %4, align 8
  %44 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %43, i32 0, i32 0
  store %struct.mii_bus* %42, %struct.mii_bus** %44, align 8
  %45 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %46 = load %struct.device_node*, %struct.device_node** %5, align 8
  %47 = call i32 @of_mdiobus_register(%struct.mii_bus* %45, %struct.device_node* %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %16, %13
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.mii_bus* @devm_mdiobus_alloc(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(i32) #1

declare dso_local i32 @of_mdiobus_register(%struct.mii_bus*, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
