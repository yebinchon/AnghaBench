; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hns_mdio.c_hns_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hns_mdio.c_hns_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32, i32, i64 }
%struct.hns_mdio_device = type { i32 }

@MII_ADDR_C45 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"mdio write %s,base is %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"phy id=%d, is_c45=%d, devad=%d, reg=%#x, write data=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"MDIO bus is busy\0A\00", align 1
@MDIO_C22_WRITE = common dso_local global i32 0, align 4
@MDIO_ADDR_REG = common dso_local global i32 0, align 4
@MDIO_ADDR_DATA_M = common dso_local global i32 0, align 4
@MDIO_ADDR_DATA_S = common dso_local global i32 0, align 4
@MDIO_C45_WRITE_ADDR = common dso_local global i32 0, align 4
@MDIO_C45_WRITE_DATA = common dso_local global i32 0, align 4
@MDIO_WDATA_REG = common dso_local global i32 0, align 4
@MDIO_WDATA_DATA_M = common dso_local global i32 0, align 4
@MDIO_WDATA_DATA_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @hns_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_mdio_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hns_mdio_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %18 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.hns_mdio_device*
  store %struct.hns_mdio_device* %20, %struct.hns_mdio_device** %11, align 8
  %21 = load i32, i32* %8, align 4
  %22 = ashr i32 %21, 16
  %23 = and i32 %22, 31
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @MII_ADDR_C45, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 65535
  store i32 %32, i32* %14, align 4
  %33 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %34 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %33, i32 0, i32 0
  %35 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %36 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %11, align 8
  %39 = getelementptr inbounds %struct.hns_mdio_device, %struct.hns_mdio_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %43 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %42, i32 0, i32 0
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %43, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %51 = call i32 @hns_mdio_wait_ready(%struct.mii_bus* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %4
  %55 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %56 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %55, i32 0, i32 0
  %57 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %5, align 4
  br label %103

59:                                               ; preds = %4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %14, align 4
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* @MDIO_C22_WRITE, align 4
  store i32 %64, i32* %15, align 4
  br label %90

65:                                               ; preds = %59
  %66 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %11, align 8
  %67 = load i32, i32* @MDIO_ADDR_REG, align 4
  %68 = load i32, i32* @MDIO_ADDR_DATA_M, align 4
  %69 = load i32, i32* @MDIO_ADDR_DATA_S, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @MDIO_SET_REG_FIELD(%struct.hns_mdio_device* %66, i32 %67, i32 %68, i32 %69, i32 %70)
  %72 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %11, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @MDIO_C45_WRITE_ADDR, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @hns_mdio_cmd_write(%struct.hns_mdio_device* %72, i32 %73, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %79 = call i32 @hns_mdio_wait_ready(%struct.mii_bus* %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %65
  %83 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %84 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %83, i32 0, i32 0
  %85 = call i32 @dev_err(i32* %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %5, align 4
  br label %103

87:                                               ; preds = %65
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* @MDIO_C45_WRITE_DATA, align 4
  store i32 %89, i32* %15, align 4
  br label %90

90:                                               ; preds = %87, %62
  %91 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %11, align 8
  %92 = load i32, i32* @MDIO_WDATA_REG, align 4
  %93 = load i32, i32* @MDIO_WDATA_DATA_M, align 4
  %94 = load i32, i32* @MDIO_WDATA_DATA_S, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @MDIO_SET_REG_FIELD(%struct.hns_mdio_device* %91, i32 %92, i32 %93, i32 %94, i32 %95)
  %97 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %11, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %16, align 4
  %102 = call i32 @hns_mdio_cmd_write(%struct.hns_mdio_device* %97, i32 %98, i32 %99, i32 %100, i32 %101)
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %90, %82, %54
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @hns_mdio_wait_ready(%struct.mii_bus*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @MDIO_SET_REG_FIELD(%struct.hns_mdio_device*, i32, i32, i32, i32) #1

declare dso_local i32 @hns_mdio_cmd_write(%struct.hns_mdio_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
