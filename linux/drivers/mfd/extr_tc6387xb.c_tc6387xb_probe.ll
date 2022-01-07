; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tc6387xb.c_tc6387xb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tc6387xb.c_tc6387xb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.tc6387xb_platform_data = type { i32 (%struct.platform_device.0*)* }
%struct.platform_device.0 = type opaque
%struct.resource = type { i8*, i64, i32, i64 }
%struct.clk = type { i32 }
%struct.tc6387xb = type { %struct.resource, i32, %struct.clk* }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"CLK_CK32K\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"tc6387xb-core\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Toshiba tc6387xb initialised\0A\00", align 1
@tc6387xb_cells = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tc6387xb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc6387xb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tc6387xb_platform_data*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca %struct.tc6387xb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 1
  %13 = call %struct.tc6387xb_platform_data* @dev_get_platdata(i32* %12)
  store %struct.tc6387xb_platform_data* %13, %struct.tc6387xb_platform_data** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = load i32, i32* @IORESOURCE_MEM, align 4
  %16 = call %struct.resource* @platform_get_resource(%struct.platform_device* %14, i32 %15, i32 0)
  store %struct.resource* %16, %struct.resource** %5, align 8
  %17 = load %struct.resource*, %struct.resource** %5, align 8
  %18 = icmp ne %struct.resource* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %145

22:                                               ; preds = %1
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.tc6387xb* @kzalloc(i32 48, i32 %23)
  store %struct.tc6387xb* %24, %struct.tc6387xb** %8, align 8
  %25 = load %struct.tc6387xb*, %struct.tc6387xb** %8, align 8
  %26 = icmp ne %struct.tc6387xb* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %145

30:                                               ; preds = %22
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = call i32 @platform_get_irq(%struct.platform_device* %31, i32 0)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %9, align 4
  br label %38

37:                                               ; preds = %30
  br label %141

38:                                               ; preds = %35
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 1
  %41 = call %struct.clk* @clk_get(i32* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %41, %struct.clk** %7, align 8
  %42 = load %struct.clk*, %struct.clk** %7, align 8
  %43 = call i64 @IS_ERR(%struct.clk* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load %struct.clk*, %struct.clk** %7, align 8
  %47 = call i32 @PTR_ERR(%struct.clk* %46)
  store i32 %47, i32* %10, align 4
  br label %140

48:                                               ; preds = %38
  %49 = load %struct.tc6387xb*, %struct.tc6387xb** %8, align 8
  %50 = getelementptr inbounds %struct.tc6387xb, %struct.tc6387xb* %49, i32 0, i32 0
  store %struct.resource* %50, %struct.resource** %6, align 8
  %51 = load %struct.resource*, %struct.resource** %6, align 8
  %52 = getelementptr inbounds %struct.resource, %struct.resource* %51, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %52, align 8
  %53 = load %struct.resource*, %struct.resource** %5, align 8
  %54 = getelementptr inbounds %struct.resource, %struct.resource* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.resource*, %struct.resource** %6, align 8
  %57 = getelementptr inbounds %struct.resource, %struct.resource* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.resource*, %struct.resource** %5, align 8
  %59 = getelementptr inbounds %struct.resource, %struct.resource* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 255
  %62 = load %struct.resource*, %struct.resource** %6, align 8
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %62, i32 0, i32 3
  store i64 %61, i64* %63, align 8
  %64 = load i32, i32* @IORESOURCE_MEM, align 4
  %65 = load %struct.resource*, %struct.resource** %6, align 8
  %66 = getelementptr inbounds %struct.resource, %struct.resource* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.resource*, %struct.resource** %5, align 8
  %68 = load %struct.resource*, %struct.resource** %6, align 8
  %69 = call i32 @request_resource(%struct.resource* %67, %struct.resource* %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %48
  br label %137

73:                                               ; preds = %48
  %74 = load %struct.resource*, %struct.resource** %6, align 8
  %75 = getelementptr inbounds %struct.resource, %struct.resource* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.resource*, %struct.resource** %6, align 8
  %78 = call i32 @resource_size(%struct.resource* %77)
  %79 = call i32 @ioremap(i64 %76, i32 %78)
  %80 = load %struct.tc6387xb*, %struct.tc6387xb** %8, align 8
  %81 = getelementptr inbounds %struct.tc6387xb, %struct.tc6387xb* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.tc6387xb*, %struct.tc6387xb** %8, align 8
  %83 = getelementptr inbounds %struct.tc6387xb, %struct.tc6387xb* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %73
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %10, align 4
  br label %133

89:                                               ; preds = %73
  %90 = load %struct.clk*, %struct.clk** %7, align 8
  %91 = load %struct.tc6387xb*, %struct.tc6387xb** %8, align 8
  %92 = getelementptr inbounds %struct.tc6387xb, %struct.tc6387xb* %91, i32 0, i32 2
  store %struct.clk* %90, %struct.clk** %92, align 8
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = load %struct.tc6387xb*, %struct.tc6387xb** %8, align 8
  %95 = call i32 @platform_set_drvdata(%struct.platform_device* %93, %struct.tc6387xb* %94)
  %96 = load %struct.tc6387xb_platform_data*, %struct.tc6387xb_platform_data** %4, align 8
  %97 = icmp ne %struct.tc6387xb_platform_data* %96, null
  br i1 %97, label %98, label %110

98:                                               ; preds = %89
  %99 = load %struct.tc6387xb_platform_data*, %struct.tc6387xb_platform_data** %4, align 8
  %100 = getelementptr inbounds %struct.tc6387xb_platform_data, %struct.tc6387xb_platform_data* %99, i32 0, i32 0
  %101 = load i32 (%struct.platform_device.0*)*, i32 (%struct.platform_device.0*)** %100, align 8
  %102 = icmp ne i32 (%struct.platform_device.0*)* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.tc6387xb_platform_data*, %struct.tc6387xb_platform_data** %4, align 8
  %105 = getelementptr inbounds %struct.tc6387xb_platform_data, %struct.tc6387xb_platform_data* %104, i32 0, i32 0
  %106 = load i32 (%struct.platform_device.0*)*, i32 (%struct.platform_device.0*)** %105, align 8
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = bitcast %struct.platform_device* %107 to %struct.platform_device.0*
  %109 = call i32 %106(%struct.platform_device.0* %108)
  br label %110

110:                                              ; preds = %103, %98, %89
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 1
  %113 = call i32 @dev_info(i32* %112, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 1
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @tc6387xb_cells, align 4
  %120 = load i32, i32* @tc6387xb_cells, align 4
  %121 = call i32 @ARRAY_SIZE(i32 %120)
  %122 = load %struct.resource*, %struct.resource** %5, align 8
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @mfd_add_devices(i32* %115, i32 %118, i32 %119, i32 %121, %struct.resource* %122, i32 %123, i32* null)
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %110
  store i32 0, i32* %2, align 4
  br label %145

128:                                              ; preds = %110
  %129 = load %struct.tc6387xb*, %struct.tc6387xb** %8, align 8
  %130 = getelementptr inbounds %struct.tc6387xb, %struct.tc6387xb* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @iounmap(i32 %131)
  br label %133

133:                                              ; preds = %128, %86
  %134 = load %struct.tc6387xb*, %struct.tc6387xb** %8, align 8
  %135 = getelementptr inbounds %struct.tc6387xb, %struct.tc6387xb* %134, i32 0, i32 0
  %136 = call i32 @release_resource(%struct.resource* %135)
  br label %137

137:                                              ; preds = %133, %72
  %138 = load %struct.clk*, %struct.clk** %7, align 8
  %139 = call i32 @clk_put(%struct.clk* %138)
  br label %140

140:                                              ; preds = %137, %45
  br label %141

141:                                              ; preds = %140, %37
  %142 = load %struct.tc6387xb*, %struct.tc6387xb** %8, align 8
  %143 = call i32 @kfree(%struct.tc6387xb* %142)
  %144 = load i32, i32* %10, align 4
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %141, %127, %27, %19
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local %struct.tc6387xb_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.tc6387xb* @kzalloc(i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.clk* @clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @request_resource(%struct.resource*, %struct.resource*) #1

declare dso_local i32 @ioremap(i64, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tc6387xb*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @mfd_add_devices(i32*, i32, i32, i32, %struct.resource*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_resource(%struct.resource*) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

declare dso_local i32 @kfree(%struct.tc6387xb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
