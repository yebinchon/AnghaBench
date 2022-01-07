; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_ll_temac_mdio.c_temac_mdio_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_ll_temac_mdio.c_temac_mdio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.temac_local = type { i32, %struct.mii_bus* }
%struct.mii_bus = type { i8*, i32, i32, i32, %struct.temac_local*, i32 }
%struct.platform_device = type { i32 }
%struct.ll_temac_platform_data = type { i32, i64 }
%struct.device_node = type { i32 }
%struct.resource = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@XTE_MC_OFFSET = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%.8llx\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Xilinx TEMAC MDIO\00", align 1
@temac_mdio_read = common dso_local global i32 0, align 4
@temac_mdio_write = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"MDIO bus registered;  MC:%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @temac_mdio_setup(%struct.temac_local* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.temac_local*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.ll_temac_platform_data*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.mii_bus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource, align 8
  store %struct.temac_local* %0, %struct.temac_local** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call %struct.ll_temac_platform_data* @dev_get_platdata(i32* %14)
  store %struct.ll_temac_platform_data* %15, %struct.ll_temac_platform_data** %6, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call %struct.device_node* @dev_of_node(i32* %17)
  store %struct.device_node* %18, %struct.device_node** %7, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.device_node*, %struct.device_node** %7, align 8
  %20 = icmp ne %struct.device_node* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.device_node*, %struct.device_node** %7, align 8
  %23 = call i32 @of_property_read_u32(%struct.device_node* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %9)
  br label %32

24:                                               ; preds = %2
  %25 = load %struct.ll_temac_platform_data*, %struct.ll_temac_platform_data** %6, align 8
  %26 = icmp ne %struct.ll_temac_platform_data* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.ll_temac_platform_data*, %struct.ll_temac_platform_data** %6, align 8
  %29 = getelementptr inbounds %struct.ll_temac_platform_data, %struct.ll_temac_platform_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %27, %24
  br label %32

32:                                               ; preds = %31, %21
  store i32 63, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = sdiv i32 %36, 5000000
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 1, i32* %10, align 4
  br label %42

42:                                               ; preds = %41, %35
  %43 = load i32, i32* %10, align 4
  %44 = icmp sgt i32 %43, 63
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 63, i32* %10, align 4
  br label %46

46:                                               ; preds = %45, %42
  br label %47

47:                                               ; preds = %46, %32
  %48 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %49 = load i32, i32* @XTE_MC_OFFSET, align 4
  %50 = load i32, i32* %10, align 4
  %51 = or i32 64, %50
  %52 = call i32 @temac_indirect_out32(%struct.temac_local* %48, i32 %49, i32 %51)
  %53 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = call %struct.mii_bus* @devm_mdiobus_alloc(i32* %54)
  store %struct.mii_bus* %55, %struct.mii_bus** %8, align 8
  %56 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %57 = icmp ne %struct.mii_bus* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %47
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %122

61:                                               ; preds = %47
  %62 = load %struct.device_node*, %struct.device_node** %7, align 8
  %63 = icmp ne %struct.device_node* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load %struct.device_node*, %struct.device_node** %7, align 8
  %66 = call i32 @of_address_to_resource(%struct.device_node* %65, i32 0, %struct.resource* %12)
  %67 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %68 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %71 = getelementptr inbounds %struct.resource, %struct.resource* %12, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @snprintf(i32 %69, i32 %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %72)
  br label %87

74:                                               ; preds = %61
  %75 = load %struct.ll_temac_platform_data*, %struct.ll_temac_platform_data** %6, align 8
  %76 = icmp ne %struct.ll_temac_platform_data* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %79 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %82 = load %struct.ll_temac_platform_data*, %struct.ll_temac_platform_data** %6, align 8
  %83 = getelementptr inbounds %struct.ll_temac_platform_data, %struct.ll_temac_platform_data* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @snprintf(i32 %80, i32 %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %84)
  br label %86

86:                                               ; preds = %77, %74
  br label %87

87:                                               ; preds = %86, %64
  %88 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %89 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %90 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %89, i32 0, i32 4
  store %struct.temac_local* %88, %struct.temac_local** %90, align 8
  %91 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %92 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %91, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %92, align 8
  %93 = load i32, i32* @temac_mdio_read, align 4
  %94 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %95 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @temac_mdio_write, align 4
  %97 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %98 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %100 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %103 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %105 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %106 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %105, i32 0, i32 1
  store %struct.mii_bus* %104, %struct.mii_bus** %106, align 8
  %107 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %108 = load %struct.device_node*, %struct.device_node** %7, align 8
  %109 = call i32 @of_mdiobus_register(%struct.mii_bus* %107, %struct.device_node* %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %87
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %3, align 4
  br label %122

114:                                              ; preds = %87
  %115 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %116 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %119 = load i32, i32* @XTE_MC_OFFSET, align 4
  %120 = call i32 @temac_indirect_in32(%struct.temac_local* %118, i32 %119)
  %121 = call i32 @dev_dbg(i32 %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %120)
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %114, %112, %58
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local %struct.ll_temac_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.device_node* @dev_of_node(i32*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @temac_indirect_out32(%struct.temac_local*, i32, i32) #1

declare dso_local %struct.mii_bus* @devm_mdiobus_alloc(i32*) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i64) #1

declare dso_local i32 @of_mdiobus_register(%struct.mii_bus*, %struct.device_node*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @temac_indirect_in32(%struct.temac_local*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
