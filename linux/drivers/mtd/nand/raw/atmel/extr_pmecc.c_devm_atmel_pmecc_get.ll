; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_pmecc.c_devm_atmel_pmecc_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_pmecc.c_devm_atmel_pmecc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_pmecc_caps = type { i32 }
%struct.atmel_pmecc = type { i32 }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.platform_device = type { i32 }
%struct.of_device_id = type { %struct.atmel_pmecc_caps* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ecc-engine\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"atmel,has-pmecc\00", align 1
@at91sam9g45_caps = common dso_local global %struct.atmel_pmecc_caps zeroinitializer, align 4
@atmel_pmecc_legacy_match = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.atmel_pmecc* @devm_atmel_pmecc_get(%struct.device* %0) #0 {
  %2 = alloca %struct.atmel_pmecc*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.atmel_pmecc*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.atmel_pmecc_caps*, align 8
  %8 = alloca %struct.of_device_id*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = icmp ne %struct.device* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.atmel_pmecc* @ERR_PTR(i32 %13)
  store %struct.atmel_pmecc* %14, %struct.atmel_pmecc** %2, align 8
  br label %66

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store %struct.atmel_pmecc* null, %struct.atmel_pmecc** %2, align 8
  br label %66

21:                                               ; preds = %15
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.device_node* @of_parse_phandle(i32 %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %25, %struct.device_node** %5, align 8
  %26 = load %struct.device_node*, %struct.device_node** %5, align 8
  %27 = icmp ne %struct.device_node* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = load %struct.device_node*, %struct.device_node** %5, align 8
  %31 = call %struct.atmel_pmecc* @atmel_pmecc_get_by_node(%struct.device* %29, %struct.device_node* %30)
  store %struct.atmel_pmecc* %31, %struct.atmel_pmecc** %4, align 8
  %32 = load %struct.device_node*, %struct.device_node** %5, align 8
  %33 = call i32 @of_node_put(%struct.device_node* %32)
  br label %64

34:                                               ; preds = %21
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = call %struct.platform_device* @to_platform_device(%struct.device* %35)
  store %struct.platform_device* %36, %struct.platform_device** %6, align 8
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @of_property_read_bool(i32 %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  store %struct.atmel_pmecc* null, %struct.atmel_pmecc** %2, align 8
  br label %66

43:                                               ; preds = %34
  store %struct.atmel_pmecc_caps* @at91sam9g45_caps, %struct.atmel_pmecc_caps** %7, align 8
  %44 = load i32, i32* @atmel_pmecc_legacy_match, align 4
  %45 = load %struct.device*, %struct.device** %3, align 8
  %46 = getelementptr inbounds %struct.device, %struct.device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.of_device_id* @of_match_node(i32 %44, i32 %47)
  store %struct.of_device_id* %48, %struct.of_device_id** %8, align 8
  %49 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %50 = icmp ne %struct.of_device_id* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %43
  %52 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %53 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %52, i32 0, i32 0
  %54 = load %struct.atmel_pmecc_caps*, %struct.atmel_pmecc_caps** %53, align 8
  %55 = icmp ne %struct.atmel_pmecc_caps* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %58 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %57, i32 0, i32 0
  %59 = load %struct.atmel_pmecc_caps*, %struct.atmel_pmecc_caps** %58, align 8
  store %struct.atmel_pmecc_caps* %59, %struct.atmel_pmecc_caps** %7, align 8
  br label %60

60:                                               ; preds = %56, %51, %43
  %61 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %62 = load %struct.atmel_pmecc_caps*, %struct.atmel_pmecc_caps** %7, align 8
  %63 = call %struct.atmel_pmecc* @atmel_pmecc_create(%struct.platform_device* %61, %struct.atmel_pmecc_caps* %62, i32 1, i32 2)
  store %struct.atmel_pmecc* %63, %struct.atmel_pmecc** %4, align 8
  br label %64

64:                                               ; preds = %60, %28
  %65 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %4, align 8
  store %struct.atmel_pmecc* %65, %struct.atmel_pmecc** %2, align 8
  br label %66

66:                                               ; preds = %64, %42, %20, %11
  %67 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %2, align 8
  ret %struct.atmel_pmecc* %67
}

declare dso_local %struct.atmel_pmecc* @ERR_PTR(i32) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local %struct.atmel_pmecc* @atmel_pmecc_get_by_node(%struct.device*, %struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local %struct.atmel_pmecc* @atmel_pmecc_create(%struct.platform_device*, %struct.atmel_pmecc_caps*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
