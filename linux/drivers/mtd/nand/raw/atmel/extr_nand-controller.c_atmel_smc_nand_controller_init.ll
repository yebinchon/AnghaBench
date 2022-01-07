; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_smc_nand_controller_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_smc_nand_controller_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_smc_nand_controller = type { %struct.atmel_smc_nand_ebi_csa_cfg*, i32, %struct.TYPE_5__ }
%struct.atmel_smc_nand_ebi_csa_cfg = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, %struct.device* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.of_device_id = type { i64 }
%struct.device_node = type { i32 }

@atmel_ebi_csa_regmap_of_ids = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Could not get EBICSA regmap (err = %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"atmel,at91sam9263-ebi1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_smc_nand_controller*)* @atmel_smc_nand_controller_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_smc_nand_controller_init(%struct.atmel_smc_nand_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_smc_nand_controller*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.atmel_smc_nand_controller* %0, %struct.atmel_smc_nand_controller** %3, align 8
  %8 = load %struct.atmel_smc_nand_controller*, %struct.atmel_smc_nand_controller** %3, align 8
  %9 = getelementptr inbounds %struct.atmel_smc_nand_controller, %struct.atmel_smc_nand_controller* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.atmel_smc_nand_controller*, %struct.atmel_smc_nand_controller** %3, align 8
  %13 = getelementptr inbounds %struct.atmel_smc_nand_controller, %struct.atmel_smc_nand_controller* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %88

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.atmel_smc_nand_controller*, %struct.atmel_smc_nand_controller** %3, align 8
  %27 = getelementptr inbounds %struct.atmel_smc_nand_controller, %struct.atmel_smc_nand_controller* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.device_node* @of_parse_phandle(i32 %25, i32 %31, i32 0)
  store %struct.device_node* %32, %struct.device_node** %6, align 8
  %33 = load %struct.device_node*, %struct.device_node** %6, align 8
  %34 = icmp ne %struct.device_node* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %88

36:                                               ; preds = %20
  %37 = load i32, i32* @atmel_ebi_csa_regmap_of_ids, align 4
  %38 = load %struct.device_node*, %struct.device_node** %6, align 8
  %39 = call %struct.of_device_id* @of_match_node(i32 %37, %struct.device_node* %38)
  store %struct.of_device_id* %39, %struct.of_device_id** %5, align 8
  %40 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %41 = icmp ne %struct.of_device_id* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load %struct.device_node*, %struct.device_node** %6, align 8
  %44 = call i32 @of_node_put(%struct.device_node* %43)
  store i32 0, i32* %2, align 4
  br label %88

45:                                               ; preds = %36
  %46 = load %struct.device_node*, %struct.device_node** %6, align 8
  %47 = call i32 @syscon_node_to_regmap(%struct.device_node* %46)
  %48 = load %struct.atmel_smc_nand_controller*, %struct.atmel_smc_nand_controller** %3, align 8
  %49 = getelementptr inbounds %struct.atmel_smc_nand_controller, %struct.atmel_smc_nand_controller* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.device_node*, %struct.device_node** %6, align 8
  %51 = call i32 @of_node_put(%struct.device_node* %50)
  %52 = load %struct.atmel_smc_nand_controller*, %struct.atmel_smc_nand_controller** %3, align 8
  %53 = getelementptr inbounds %struct.atmel_smc_nand_controller, %struct.atmel_smc_nand_controller* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @IS_ERR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %45
  %58 = load %struct.atmel_smc_nand_controller*, %struct.atmel_smc_nand_controller** %3, align 8
  %59 = getelementptr inbounds %struct.atmel_smc_nand_controller, %struct.atmel_smc_nand_controller* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @PTR_ERR(i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %88

66:                                               ; preds = %45
  %67 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %68 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to %struct.atmel_smc_nand_ebi_csa_cfg*
  %71 = load %struct.atmel_smc_nand_controller*, %struct.atmel_smc_nand_controller** %3, align 8
  %72 = getelementptr inbounds %struct.atmel_smc_nand_controller, %struct.atmel_smc_nand_controller* %71, i32 0, i32 0
  store %struct.atmel_smc_nand_ebi_csa_cfg* %70, %struct.atmel_smc_nand_ebi_csa_cfg** %72, align 8
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = getelementptr inbounds %struct.device, %struct.device* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @of_device_is_compatible(i32 %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %66
  %81 = load %struct.atmel_smc_nand_controller*, %struct.atmel_smc_nand_controller** %3, align 8
  %82 = getelementptr inbounds %struct.atmel_smc_nand_controller, %struct.atmel_smc_nand_controller* %81, i32 0, i32 0
  %83 = load %struct.atmel_smc_nand_ebi_csa_cfg*, %struct.atmel_smc_nand_ebi_csa_cfg** %82, align 8
  %84 = getelementptr inbounds %struct.atmel_smc_nand_ebi_csa_cfg, %struct.atmel_smc_nand_ebi_csa_cfg* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 4
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %80, %66
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %57, %42, %35, %19
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.device_node* @of_parse_phandle(i32, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, %struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i64 @of_device_is_compatible(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
