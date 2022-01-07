; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac-bcma-mdio.c_bcma_mdio_mii_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac-bcma-mdio.c_bcma_mdio_mii_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i8*, i32, i32*, i32, i32, i32, %struct.bgmac*, i32 }
%struct.bgmac = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.bcma_device* }
%struct.bcma_device = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"bcma_mdio mii bus\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s-%d-%d\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"bcma_mdio\00", align 1
@bcma_mdio_mii_read = common dso_local global i32 0, align 4
@bcma_mdio_mii_write = common dso_local global i32 0, align 4
@bcma_mdio_phy_reset = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Registration of mii bus failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mii_bus* @bcma_mdio_mii_register(%struct.bgmac* %0) #0 {
  %2 = alloca %struct.mii_bus*, align 8
  %3 = alloca %struct.bgmac*, align 8
  %4 = alloca %struct.bcma_device*, align 8
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  store %struct.bgmac* %0, %struct.bgmac** %3, align 8
  %7 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %8 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.bcma_device*, %struct.bcma_device** %9, align 8
  store %struct.bcma_device* %10, %struct.bcma_device** %4, align 8
  %11 = call %struct.mii_bus* (...) @mdiobus_alloc()
  store %struct.mii_bus* %11, %struct.mii_bus** %5, align 8
  %12 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %13 = icmp ne %struct.mii_bus* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  br label %68

17:                                               ; preds = %1
  %18 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %19 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %20 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %21 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %24 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %29 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @sprintf(i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %33 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %34 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %33, i32 0, i32 6
  store %struct.bgmac* %32, %struct.bgmac** %34, align 8
  %35 = load i32, i32* @bcma_mdio_mii_read, align 4
  %36 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %37 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @bcma_mdio_mii_write, align 4
  %39 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %40 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @bcma_mdio_phy_reset, align 4
  %42 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %43 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %45 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %44, i32 0, i32 1
  %46 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %47 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %46, i32 0, i32 2
  store i32* %45, i32** %47, align 8
  %48 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %49 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = shl i32 1, %50
  %52 = xor i32 %51, -1
  %53 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %54 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %56 = call i32 @mdiobus_register(%struct.mii_bus* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %17
  %60 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %61 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %60, i32 0, i32 1
  %62 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %65

63:                                               ; preds = %17
  %64 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  store %struct.mii_bus* %64, %struct.mii_bus** %2, align 8
  br label %71

65:                                               ; preds = %59
  %66 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %67 = call i32 @mdiobus_free(%struct.mii_bus* %66)
  br label %68

68:                                               ; preds = %65, %14
  %69 = load i32, i32* %6, align 4
  %70 = call %struct.mii_bus* @ERR_PTR(i32 %69)
  store %struct.mii_bus* %70, %struct.mii_bus** %2, align 8
  br label %71

71:                                               ; preds = %68, %63
  %72 = load %struct.mii_bus*, %struct.mii_bus** %2, align 8
  ret %struct.mii_bus* %72
}

declare dso_local %struct.mii_bus* @mdiobus_alloc(...) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @mdiobus_register(%struct.mii_bus*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mdiobus_free(%struct.mii_bus*) #1

declare dso_local %struct.mii_bus* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
