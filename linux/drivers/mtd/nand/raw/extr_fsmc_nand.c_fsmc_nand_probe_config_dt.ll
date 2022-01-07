; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsmc_nand.c_fsmc_nand_probe_config_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsmc_nand.c_fsmc_nand_probe_config_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.fsmc_nand_data = type { i32, i32* }
%struct.nand_chip = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"bank-width\00", align 1
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid bank-width %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"nand-skip-bbtscan\00", align 1
@NAND_SKIP_BBTSCAN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"timings\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"bank\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"invalid bank %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.fsmc_nand_data*, %struct.nand_chip*)* @fsmc_nand_probe_config_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsmc_nand_probe_config_dt(%struct.platform_device* %0, %struct.fsmc_nand_data* %1, %struct.nand_chip* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.fsmc_nand_data*, align 8
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.fsmc_nand_data* %1, %struct.fsmc_nand_data** %6, align 8
  store %struct.nand_chip* %2, %struct.nand_chip** %7, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %8, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %16 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load %struct.device_node*, %struct.device_node** %8, align 8
  %18 = call i32 @of_property_read_u32(%struct.device_node* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %9)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %25 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %26 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %40

29:                                               ; preds = %20
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @dev_err(%struct.TYPE_3__* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %97

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %23
  br label %41

41:                                               ; preds = %40, %3
  %42 = load %struct.device_node*, %struct.device_node** %8, align 8
  %43 = call i64 @of_get_property(%struct.device_node* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* @NAND_SKIP_BBTSCAN, align 4
  %47 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %48 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %41
  %52 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i32* @devm_kzalloc(%struct.TYPE_3__* %53, i32 4, i32 %54)
  %56 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %6, align 8
  %57 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %56, i32 0, i32 1
  store i32* %55, i32** %57, align 8
  %58 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %6, align 8
  %59 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %51
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %97

65:                                               ; preds = %51
  %66 = load %struct.device_node*, %struct.device_node** %8, align 8
  %67 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %6, align 8
  %68 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @of_property_read_u8_array(%struct.device_node* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %69, i32 4)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %6, align 8
  %75 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %74, i32 0, i32 1
  store i32* null, i32** %75, align 8
  br label %76

76:                                               ; preds = %73, %65
  %77 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %6, align 8
  %78 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  %79 = load %struct.device_node*, %struct.device_node** %8, align 8
  %80 = call i32 @of_property_read_u32(%struct.device_node* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %9)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %96, label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %9, align 4
  %84 = icmp sgt i32 %83, 3
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @dev_err(%struct.TYPE_3__* %87, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %97

92:                                               ; preds = %82
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %6, align 8
  %95 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %92, %76
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %85, %62, %32
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i64 @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32* @devm_kzalloc(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @of_property_read_u8_array(%struct.device_node*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
