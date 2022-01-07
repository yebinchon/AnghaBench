; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_generic.c_generic_onenand_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_generic.c_generic_onenand_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.resource* }
%struct.resource = type { i32 }
%struct.onenand_info = type { %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32, i32, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.onenand_platform_data = type { i32, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @generic_onenand_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_onenand_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.onenand_info*, align 8
  %5 = alloca %struct.onenand_platform_data*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.onenand_platform_data* @dev_get_platdata(i32* %10)
  store %struct.onenand_platform_data* %11, %struct.onenand_platform_data** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 1
  %14 = load %struct.resource*, %struct.resource** %13, align 8
  store %struct.resource* %14, %struct.resource** %6, align 8
  %15 = load %struct.resource*, %struct.resource** %6, align 8
  %16 = call i64 @resource_size(%struct.resource* %15)
  store i64 %16, i64* %7, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.onenand_info* @kzalloc(i32 32, i32 %17)
  store %struct.onenand_info* %18, %struct.onenand_info** %4, align 8
  %19 = load %struct.onenand_info*, %struct.onenand_info** %4, align 8
  %20 = icmp ne %struct.onenand_info* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %131

24:                                               ; preds = %1
  %25 = load %struct.resource*, %struct.resource** %6, align 8
  %26 = getelementptr inbounds %struct.resource, %struct.resource* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 @dev_name(i32* %30)
  %32 = call i32 @request_mem_region(i32 %27, i64 %28, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %24
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %127

37:                                               ; preds = %24
  %38 = load %struct.resource*, %struct.resource** %6, align 8
  %39 = getelementptr inbounds %struct.resource, %struct.resource* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @ioremap(i32 %40, i64 %41)
  %43 = load %struct.onenand_info*, %struct.onenand_info** %4, align 8
  %44 = getelementptr inbounds %struct.onenand_info, %struct.onenand_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.onenand_info*, %struct.onenand_info** %4, align 8
  %47 = getelementptr inbounds %struct.onenand_info, %struct.onenand_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %37
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %121

54:                                               ; preds = %37
  %55 = load %struct.onenand_platform_data*, %struct.onenand_platform_data** %5, align 8
  %56 = icmp ne %struct.onenand_platform_data* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load %struct.onenand_platform_data*, %struct.onenand_platform_data** %5, align 8
  %59 = getelementptr inbounds %struct.onenand_platform_data, %struct.onenand_platform_data* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  br label %62

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %57
  %63 = phi i32* [ %60, %57 ], [ null, %61 ]
  %64 = load %struct.onenand_info*, %struct.onenand_info** %4, align 8
  %65 = getelementptr inbounds %struct.onenand_info, %struct.onenand_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  store i32* %63, i32** %66, align 8
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = call i32 @platform_get_irq(%struct.platform_device* %67, i32 0)
  %69 = load %struct.onenand_info*, %struct.onenand_info** %4, align 8
  %70 = getelementptr inbounds %struct.onenand_info, %struct.onenand_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = load %struct.onenand_info*, %struct.onenand_info** %4, align 8
  %75 = getelementptr inbounds %struct.onenand_info, %struct.onenand_info* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32* %73, i32** %77, align 8
  %78 = load %struct.onenand_info*, %struct.onenand_info** %4, align 8
  %79 = getelementptr inbounds %struct.onenand_info, %struct.onenand_info* %78, i32 0, i32 0
  %80 = load %struct.onenand_info*, %struct.onenand_info** %4, align 8
  %81 = getelementptr inbounds %struct.onenand_info, %struct.onenand_info* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store %struct.TYPE_6__* %79, %struct.TYPE_6__** %82, align 8
  %83 = load %struct.onenand_info*, %struct.onenand_info** %4, align 8
  %84 = getelementptr inbounds %struct.onenand_info, %struct.onenand_info* %83, i32 0, i32 1
  %85 = call i64 @onenand_scan(%struct.TYPE_7__* %84, i32 1)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %62
  %88 = load i32, i32* @ENXIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %8, align 4
  br label %115

90:                                               ; preds = %62
  %91 = load %struct.onenand_info*, %struct.onenand_info** %4, align 8
  %92 = getelementptr inbounds %struct.onenand_info, %struct.onenand_info* %91, i32 0, i32 1
  %93 = load %struct.onenand_platform_data*, %struct.onenand_platform_data** %5, align 8
  %94 = icmp ne %struct.onenand_platform_data* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load %struct.onenand_platform_data*, %struct.onenand_platform_data** %5, align 8
  %97 = getelementptr inbounds %struct.onenand_platform_data, %struct.onenand_platform_data* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  br label %100

99:                                               ; preds = %90
  br label %100

100:                                              ; preds = %99, %95
  %101 = phi i32* [ %98, %95 ], [ null, %99 ]
  %102 = load %struct.onenand_platform_data*, %struct.onenand_platform_data** %5, align 8
  %103 = icmp ne %struct.onenand_platform_data* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load %struct.onenand_platform_data*, %struct.onenand_platform_data** %5, align 8
  %106 = getelementptr inbounds %struct.onenand_platform_data, %struct.onenand_platform_data* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  br label %109

108:                                              ; preds = %100
  br label %109

109:                                              ; preds = %108, %104
  %110 = phi i32 [ %107, %104 ], [ 0, %108 ]
  %111 = call i32 @mtd_device_register(%struct.TYPE_7__* %92, i32* %101, i32 %110)
  store i32 %111, i32* %8, align 4
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = load %struct.onenand_info*, %struct.onenand_info** %4, align 8
  %114 = call i32 @platform_set_drvdata(%struct.platform_device* %112, %struct.onenand_info* %113)
  store i32 0, i32* %2, align 4
  br label %131

115:                                              ; preds = %87
  %116 = load %struct.onenand_info*, %struct.onenand_info** %4, align 8
  %117 = getelementptr inbounds %struct.onenand_info, %struct.onenand_info* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @iounmap(i32 %119)
  br label %121

121:                                              ; preds = %115, %51
  %122 = load %struct.resource*, %struct.resource** %6, align 8
  %123 = getelementptr inbounds %struct.resource, %struct.resource* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i64, i64* %7, align 8
  %126 = call i32 @release_mem_region(i32 %124, i64 %125)
  br label %127

127:                                              ; preds = %121, %34
  %128 = load %struct.onenand_info*, %struct.onenand_info** %4, align 8
  %129 = call i32 @kfree(%struct.onenand_info* %128)
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %127, %109, %21
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local %struct.onenand_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local %struct.onenand_info* @kzalloc(i32, i32) #1

declare dso_local i32 @request_mem_region(i32, i64, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @ioremap(i32, i64) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i64 @onenand_scan(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @mtd_device_register(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.onenand_info*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i64) #1

declare dso_local i32 @kfree(%struct.onenand_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
