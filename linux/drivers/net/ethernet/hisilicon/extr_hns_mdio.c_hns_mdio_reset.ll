; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hns_mdio.c_hns_mdio_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hns_mdio.c_hns_mdio_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.hns_mdio_device = type { %struct.hns_mdio_sc_reg, i32 }
%struct.hns_mdio_sc_reg = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"mdio sys ctl reg has not maped\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@MDIO_CHECK_SET_ST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"MDIO reset fail\0A\00", align 1
@MDIO_CHECK_CLR_ST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"MDIO dis clk fail\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"MDIO en clk fail\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"_RST\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Reset failed, return:%#x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"Can not get cfg data from DT or ACPI\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*)* @hns_mdio_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_mdio_reset(%struct.mii_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mii_bus*, align 8
  %4 = alloca %struct.hns_mdio_device*, align 8
  %5 = alloca %struct.hns_mdio_sc_reg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %3, align 8
  %8 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %9 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.hns_mdio_device*
  store %struct.hns_mdio_device* %11, %struct.hns_mdio_device** %4, align 8
  %12 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %13 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = call i64 @dev_of_node(%struct.TYPE_3__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %98

17:                                               ; preds = %1
  %18 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %4, align 8
  %19 = getelementptr inbounds %struct.hns_mdio_device, %struct.hns_mdio_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %24 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %23, i32 0, i32 0
  %25 = call i32 (i32*, i8*, ...) @dev_err(i32* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %133

28:                                               ; preds = %17
  %29 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %4, align 8
  %30 = getelementptr inbounds %struct.hns_mdio_device, %struct.hns_mdio_device* %29, i32 0, i32 0
  store %struct.hns_mdio_sc_reg* %30, %struct.hns_mdio_sc_reg** %5, align 8
  %31 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %4, align 8
  %32 = load %struct.hns_mdio_sc_reg*, %struct.hns_mdio_sc_reg** %5, align 8
  %33 = getelementptr inbounds %struct.hns_mdio_sc_reg, %struct.hns_mdio_sc_reg* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.hns_mdio_sc_reg*, %struct.hns_mdio_sc_reg** %5, align 8
  %36 = getelementptr inbounds %struct.hns_mdio_sc_reg, %struct.hns_mdio_sc_reg* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MDIO_CHECK_SET_ST, align 4
  %39 = call i32 @mdio_sc_cfg_reg_write(%struct.hns_mdio_device* %31, i32 %34, i32 1, i32 %37, i32 1, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %28
  %43 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %44 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %43, i32 0, i32 0
  %45 = call i32 (i32*, i8*, ...) @dev_err(i32* %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %133

47:                                               ; preds = %28
  %48 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %4, align 8
  %49 = load %struct.hns_mdio_sc_reg*, %struct.hns_mdio_sc_reg** %5, align 8
  %50 = getelementptr inbounds %struct.hns_mdio_sc_reg, %struct.hns_mdio_sc_reg* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.hns_mdio_sc_reg*, %struct.hns_mdio_sc_reg** %5, align 8
  %53 = getelementptr inbounds %struct.hns_mdio_sc_reg, %struct.hns_mdio_sc_reg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MDIO_CHECK_CLR_ST, align 4
  %56 = call i32 @mdio_sc_cfg_reg_write(%struct.hns_mdio_device* %48, i32 %51, i32 1, i32 %54, i32 1, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %47
  %60 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %61 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %60, i32 0, i32 0
  %62 = call i32 (i32*, i8*, ...) @dev_err(i32* %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %133

64:                                               ; preds = %47
  %65 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %4, align 8
  %66 = load %struct.hns_mdio_sc_reg*, %struct.hns_mdio_sc_reg** %5, align 8
  %67 = getelementptr inbounds %struct.hns_mdio_sc_reg, %struct.hns_mdio_sc_reg* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.hns_mdio_sc_reg*, %struct.hns_mdio_sc_reg** %5, align 8
  %70 = getelementptr inbounds %struct.hns_mdio_sc_reg, %struct.hns_mdio_sc_reg* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MDIO_CHECK_CLR_ST, align 4
  %73 = call i32 @mdio_sc_cfg_reg_write(%struct.hns_mdio_device* %65, i32 %68, i32 1, i32 %71, i32 1, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %64
  %77 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %78 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %77, i32 0, i32 0
  %79 = call i32 (i32*, i8*, ...) @dev_err(i32* %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %2, align 4
  br label %133

81:                                               ; preds = %64
  %82 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %4, align 8
  %83 = load %struct.hns_mdio_sc_reg*, %struct.hns_mdio_sc_reg** %5, align 8
  %84 = getelementptr inbounds %struct.hns_mdio_sc_reg, %struct.hns_mdio_sc_reg* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.hns_mdio_sc_reg*, %struct.hns_mdio_sc_reg** %5, align 8
  %87 = getelementptr inbounds %struct.hns_mdio_sc_reg, %struct.hns_mdio_sc_reg* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @MDIO_CHECK_SET_ST, align 4
  %90 = call i32 @mdio_sc_cfg_reg_write(%struct.hns_mdio_device* %82, i32 %85, i32 1, i32 %88, i32 1, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %81
  %94 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %95 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %94, i32 0, i32 0
  %96 = call i32 (i32*, i8*, ...) @dev_err(i32* %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %97

97:                                               ; preds = %93, %81
  br label %131

98:                                               ; preds = %1
  %99 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %100 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %99, i32 0, i32 1
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @is_acpi_node(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %124

106:                                              ; preds = %98
  %107 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %108 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %107, i32 0, i32 1
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = call i32 @ACPI_HANDLE(%struct.TYPE_3__* %109)
  %111 = call i32 @acpi_evaluate_object(i32 %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* null, i32* null)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = call i64 @ACPI_FAILURE(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %106
  %116 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %117 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %116, i32 0, i32 0
  %118 = load i32, i32* %7, align 4
  %119 = call i32 (i32*, i8*, ...) @dev_err(i32* %117, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @EBUSY, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %6, align 4
  br label %123

122:                                              ; preds = %106
  store i32 0, i32* %6, align 4
  br label %123

123:                                              ; preds = %122, %115
  br label %130

124:                                              ; preds = %98
  %125 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %126 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %125, i32 0, i32 0
  %127 = call i32 (i32*, i8*, ...) @dev_err(i32* %126, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %128 = load i32, i32* @ENXIO, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %124, %123
  br label %131

131:                                              ; preds = %130, %97
  %132 = load i32, i32* %6, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %131, %76, %59, %42, %22
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i64 @dev_of_node(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @mdio_sc_cfg_reg_write(%struct.hns_mdio_device*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @is_acpi_node(i32) #1

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, i32*) #1

declare dso_local i32 @ACPI_HANDLE(%struct.TYPE_3__*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
