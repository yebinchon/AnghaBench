; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_controller_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_controller_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_nand_controller_caps = type { %struct.TYPE_6__*, i32, i64 }
%struct.TYPE_6__ = type { i32 (%struct.platform_device*, %struct.atmel_nand_controller_caps*)* }
%struct.platform_device = type { %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Could not retrieve NFC caps\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"atmel,sama5d3-nfc\00", align 1
@atmel_sama5_nand_caps = common dso_local global %struct.atmel_nand_controller_caps zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"atmel,nand-has-dma\00", align 1
@atmel_sam9g45_nand_caps = common dso_local global %struct.atmel_nand_controller_caps zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"atmel,nand-addr-offset\00", align 1
@atmel_sam9261_nand_caps = common dso_local global %struct.atmel_nand_controller_caps zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @atmel_nand_controller_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_nand_controller_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.atmel_nand_controller_caps*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.atmel_nand_controller_caps*
  store %struct.atmel_nand_controller_caps* %18, %struct.atmel_nand_controller_caps** %4, align 8
  br label %23

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call %struct.atmel_nand_controller_caps* @of_device_get_match_data(%struct.TYPE_7__* %21)
  store %struct.atmel_nand_controller_caps* %22, %struct.atmel_nand_controller_caps** %4, align 8
  br label %23

23:                                               ; preds = %19, %11
  %24 = load %struct.atmel_nand_controller_caps*, %struct.atmel_nand_controller_caps** %4, align 8
  %25 = icmp ne %struct.atmel_nand_controller_caps* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @dev_err(%struct.TYPE_7__* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %80

32:                                               ; preds = %23
  %33 = load %struct.atmel_nand_controller_caps*, %struct.atmel_nand_controller_caps** %4, align 8
  %34 = getelementptr inbounds %struct.atmel_nand_controller_caps, %struct.atmel_nand_controller_caps* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %71

37:                                               ; preds = %32
  store i32 21, i32* %6, align 4
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.device_node* @of_get_compatible_child(i32 %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store %struct.device_node* %42, %struct.device_node** %5, align 8
  %43 = load %struct.device_node*, %struct.device_node** %5, align 8
  %44 = icmp ne %struct.device_node* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  store %struct.atmel_nand_controller_caps* @atmel_sama5_nand_caps, %struct.atmel_nand_controller_caps** %4, align 8
  %46 = load %struct.device_node*, %struct.device_node** %5, align 8
  %47 = call i32 @of_node_put(%struct.device_node* %46)
  br label %48

48:                                               ; preds = %45, %37
  %49 = load %struct.atmel_nand_controller_caps*, %struct.atmel_nand_controller_caps** %4, align 8
  %50 = getelementptr inbounds %struct.atmel_nand_controller_caps, %struct.atmel_nand_controller_caps* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %48
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @of_property_read_bool(i32 %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store %struct.atmel_nand_controller_caps* @atmel_sam9g45_nand_caps, %struct.atmel_nand_controller_caps** %4, align 8
  br label %61

61:                                               ; preds = %60, %53, %48
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @of_property_read_u32(i32 %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32* %6)
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 21
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  store %struct.atmel_nand_controller_caps* @atmel_sam9261_nand_caps, %struct.atmel_nand_controller_caps** %4, align 8
  br label %70

70:                                               ; preds = %69, %61
  br label %71

71:                                               ; preds = %70, %32
  %72 = load %struct.atmel_nand_controller_caps*, %struct.atmel_nand_controller_caps** %4, align 8
  %73 = getelementptr inbounds %struct.atmel_nand_controller_caps, %struct.atmel_nand_controller_caps* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32 (%struct.platform_device*, %struct.atmel_nand_controller_caps*)*, i32 (%struct.platform_device*, %struct.atmel_nand_controller_caps*)** %75, align 8
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = load %struct.atmel_nand_controller_caps*, %struct.atmel_nand_controller_caps** %4, align 8
  %79 = call i32 %76(%struct.platform_device* %77, %struct.atmel_nand_controller_caps* %78)
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %71, %26
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.atmel_nand_controller_caps* @of_device_get_match_data(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.device_node* @of_get_compatible_child(i32, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
