; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_sm501.c_sm501_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_sm501.c_sm501_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.pci_dev = type { %struct.TYPE_6__, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_4__ = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.sm501_devdata = type { %struct.sm501_devdata*, i32, %struct.TYPE_4__*, %struct.TYPE_4__*, i32, %struct.TYPE_6__*, i64, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sm501_pci_platdata = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cannot enable device\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"region #0 is not memory?\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"region #1 is not memory?\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"sm501\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"cannot claim registers\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"cannot remap registers\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SM501_FBPD_SWAP_FB_ENDIAN = common dso_local global i32 0, align 4
@sm501_fb_pdata = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @sm501_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm501_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.sm501_devdata*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.sm501_devdata* @kzalloc(i32 64, i32 %8)
  store %struct.sm501_devdata* %9, %struct.sm501_devdata** %6, align 8
  %10 = load %struct.sm501_devdata*, %struct.sm501_devdata** %6, align 8
  %11 = icmp ne %struct.sm501_devdata* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  br label %135

15:                                               ; preds = %2
  %16 = load %struct.sm501_devdata*, %struct.sm501_devdata** %6, align 8
  %17 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %16, i32 0, i32 7
  store i32* @sm501_pci_platdata, i32** %17, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32* @sm501_pci_platdata, i32** %20, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 32, %23
  %25 = load %struct.sm501_devdata*, %struct.sm501_devdata** %6, align 8
  %26 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %25, i32 0, i32 6
  store i64 %24, i64* %26, align 8
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = load %struct.sm501_devdata*, %struct.sm501_devdata** %6, align 8
  %29 = call i32 @pci_set_drvdata(%struct.pci_dev* %27, %struct.sm501_devdata* %28)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = call i32 @pci_enable_device(%struct.pci_dev* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %15
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = call i32 @dev_err(%struct.TYPE_6__* %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %132

38:                                               ; preds = %15
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = load %struct.sm501_devdata*, %struct.sm501_devdata** %6, align 8
  %42 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %41, i32 0, i32 5
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %42, align 8
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.sm501_devdata*, %struct.sm501_devdata** %6, align 8
  %47 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = call i32 @pci_resource_flags(%struct.pci_dev* %48, i32 0)
  %50 = load i32, i32* @IORESOURCE_MEM, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %38
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 0
  %56 = call i32 @dev_err(%struct.TYPE_6__* %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %129

59:                                               ; preds = %38
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = call i32 @pci_resource_flags(%struct.pci_dev* %60, i32 1)
  %62 = load i32, i32* @IORESOURCE_MEM, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 0
  %68 = call i32 @dev_err(%struct.TYPE_6__* %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  br label %129

71:                                               ; preds = %59
  %72 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 1
  %76 = load %struct.sm501_devdata*, %struct.sm501_devdata** %6, align 8
  %77 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %76, i32 0, i32 2
  store %struct.TYPE_4__* %75, %struct.TYPE_4__** %77, align 8
  %78 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %79 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 0
  %82 = load %struct.sm501_devdata*, %struct.sm501_devdata** %6, align 8
  %83 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %82, i32 0, i32 3
  store %struct.TYPE_4__* %81, %struct.TYPE_4__** %83, align 8
  %84 = load %struct.sm501_devdata*, %struct.sm501_devdata** %6, align 8
  %85 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %84, i32 0, i32 2
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call %struct.sm501_devdata* @request_mem_region(i32 %88, i32 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %90 = load %struct.sm501_devdata*, %struct.sm501_devdata** %6, align 8
  %91 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %90, i32 0, i32 0
  store %struct.sm501_devdata* %89, %struct.sm501_devdata** %91, align 8
  %92 = load %struct.sm501_devdata*, %struct.sm501_devdata** %6, align 8
  %93 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %92, i32 0, i32 0
  %94 = load %struct.sm501_devdata*, %struct.sm501_devdata** %93, align 8
  %95 = icmp ne %struct.sm501_devdata* %94, null
  br i1 %95, label %102, label %96

96:                                               ; preds = %71
  %97 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %98 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %97, i32 0, i32 0
  %99 = call i32 @dev_err(%struct.TYPE_6__* %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %100 = load i32, i32* @EBUSY, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %7, align 4
  br label %129

102:                                              ; preds = %71
  %103 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %104 = call i32 @pci_ioremap_bar(%struct.pci_dev* %103, i32 1)
  %105 = load %struct.sm501_devdata*, %struct.sm501_devdata** %6, align 8
  %106 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load %struct.sm501_devdata*, %struct.sm501_devdata** %6, align 8
  %108 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %102
  %112 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %113 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %112, i32 0, i32 0
  %114 = call i32 @dev_err(%struct.TYPE_6__* %113, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %115 = load i32, i32* @EIO, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %7, align 4
  br label %120

117:                                              ; preds = %102
  %118 = load %struct.sm501_devdata*, %struct.sm501_devdata** %6, align 8
  %119 = call i32 @sm501_init_dev(%struct.sm501_devdata* %118)
  store i32 0, i32* %3, align 4
  br label %137

120:                                              ; preds = %111
  %121 = load %struct.sm501_devdata*, %struct.sm501_devdata** %6, align 8
  %122 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %121, i32 0, i32 0
  %123 = load %struct.sm501_devdata*, %struct.sm501_devdata** %122, align 8
  %124 = call i32 @release_resource(%struct.sm501_devdata* %123)
  %125 = load %struct.sm501_devdata*, %struct.sm501_devdata** %6, align 8
  %126 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %125, i32 0, i32 0
  %127 = load %struct.sm501_devdata*, %struct.sm501_devdata** %126, align 8
  %128 = call i32 @kfree(%struct.sm501_devdata* %127)
  br label %129

129:                                              ; preds = %120, %96, %65, %53
  %130 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %131 = call i32 @pci_disable_device(%struct.pci_dev* %130)
  br label %132

132:                                              ; preds = %129, %34
  %133 = load %struct.sm501_devdata*, %struct.sm501_devdata** %6, align 8
  %134 = call i32 @kfree(%struct.sm501_devdata* %133)
  br label %135

135:                                              ; preds = %132, %12
  %136 = load i32, i32* %7, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %135, %117
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local %struct.sm501_devdata* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.sm501_devdata*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local %struct.sm501_devdata* @request_mem_region(i32, i32, i8*) #1

declare dso_local i32 @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @sm501_init_dev(%struct.sm501_devdata*) #1

declare dso_local i32 @release_resource(%struct.sm501_devdata*) #1

declare dso_local i32 @kfree(%struct.sm501_devdata*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
