; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hns_mdio.c_hns_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hns_mdio.c_hns_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32, i32, i64 }
%struct.hns_mdio_device = type { i32 }

@MII_ADDR_C45 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"mdio read %s,base is %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"phy id=%d, is_c45=%d, devad=%d, reg=%#x!\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"MDIO bus is busy\0A\00", align 1
@MDIO_C22_READ = common dso_local global i32 0, align 4
@MDIO_ADDR_REG = common dso_local global i32 0, align 4
@MDIO_ADDR_DATA_M = common dso_local global i32 0, align 4
@MDIO_ADDR_DATA_S = common dso_local global i32 0, align 4
@MDIO_C45_WRITE_ADDR = common dso_local global i32 0, align 4
@MDIO_C45_READ = common dso_local global i32 0, align 4
@MDIO_STA_REG = common dso_local global i32 0, align 4
@MDIO_STATE_STA_B = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c" ERROR! MDIO Read failed!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@MDIO_RDATA_REG = common dso_local global i32 0, align 4
@MDIO_RDATA_DATA_M = common dso_local global i32 0, align 4
@MDIO_RDATA_DATA_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @hns_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_mdio_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hns_mdio_device*, align 8
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = ashr i32 %14, 16
  %16 = and i32 %15, 31
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @MII_ADDR_C45, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, 65535
  store i32 %25, i32* %12, align 4
  %26 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %27 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.hns_mdio_device*
  store %struct.hns_mdio_device* %29, %struct.hns_mdio_device** %13, align 8
  %30 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %31 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %30, i32 0, i32 0
  %32 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %33 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %13, align 8
  %36 = getelementptr inbounds %struct.hns_mdio_device, %struct.hns_mdio_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37)
  %39 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %40 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %39, i32 0, i32 0
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %40, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %47 = call i32 @hns_mdio_wait_ready(%struct.mii_bus* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %3
  %51 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %52 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %51, i32 0, i32 0
  %53 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %125

55:                                               ; preds = %3
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %55
  %59 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %13, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @MDIO_C22_READ, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @hns_mdio_cmd_write(%struct.hns_mdio_device* %59, i32 %60, i32 %61, i32 %62, i32 %63)
  br label %94

65:                                               ; preds = %55
  %66 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %13, align 8
  %67 = load i32, i32* @MDIO_ADDR_REG, align 4
  %68 = load i32, i32* @MDIO_ADDR_DATA_M, align 4
  %69 = load i32, i32* @MDIO_ADDR_DATA_S, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @MDIO_SET_REG_FIELD(%struct.hns_mdio_device* %66, i32 %67, i32 %68, i32 %69, i32 %70)
  %72 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %13, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @MDIO_C45_WRITE_ADDR, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @hns_mdio_cmd_write(%struct.hns_mdio_device* %72, i32 %73, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %79 = call i32 @hns_mdio_wait_ready(%struct.mii_bus* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %65
  %83 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %84 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %83, i32 0, i32 0
  %85 = call i32 @dev_err(i32* %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %4, align 4
  br label %125

87:                                               ; preds = %65
  %88 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %13, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @MDIO_C45_READ, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @hns_mdio_cmd_write(%struct.hns_mdio_device* %88, i32 %89, i32 %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %87, %58
  %95 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %96 = call i32 @hns_mdio_wait_ready(%struct.mii_bus* %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %101 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %100, i32 0, i32 0
  %102 = call i32 @dev_err(i32* %101, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %4, align 4
  br label %125

104:                                              ; preds = %94
  %105 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %13, align 8
  %106 = load i32, i32* @MDIO_STA_REG, align 4
  %107 = load i32, i32* @MDIO_STATE_STA_B, align 4
  %108 = call i32 @MDIO_GET_REG_BIT(%struct.hns_mdio_device* %105, i32 %106, i32 %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %104
  %112 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %113 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %112, i32 0, i32 0
  %114 = call i32 @dev_err(i32* %113, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %115 = load i32, i32* @EBUSY, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %125

117:                                              ; preds = %104
  %118 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %13, align 8
  %119 = load i32, i32* @MDIO_RDATA_REG, align 4
  %120 = load i32, i32* @MDIO_RDATA_DATA_M, align 4
  %121 = load i32, i32* @MDIO_RDATA_DATA_S, align 4
  %122 = call i64 @MDIO_GET_REG_FIELD(%struct.hns_mdio_device* %118, i32 %119, i32 %120, i32 %121)
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %117, %111, %99, %82, %50
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @hns_mdio_wait_ready(%struct.mii_bus*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @hns_mdio_cmd_write(%struct.hns_mdio_device*, i32, i32, i32, i32) #1

declare dso_local i32 @MDIO_SET_REG_FIELD(%struct.hns_mdio_device*, i32, i32, i32, i32) #1

declare dso_local i32 @MDIO_GET_REG_BIT(%struct.hns_mdio_device*, i32, i32) #1

declare dso_local i64 @MDIO_GET_REG_FIELD(%struct.hns_mdio_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
