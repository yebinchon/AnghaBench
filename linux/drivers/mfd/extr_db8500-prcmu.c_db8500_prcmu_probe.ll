; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_db8500_prcmu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_db8500_prcmu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"prcmu\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"no prcmu memory region provided\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@prcmu_base = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"failed to ioremap prcmu register memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DB8500_PRCMU_FW_VERSION_OFFSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"prcmu-tcdm\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"no prcmu tcdm region provided\0A\00", align 1
@tcdm_base = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [46 x i8] c"failed to ioremap prcmu-tcdm register memory\0A\00", align 1
@ALL_MBOX_BITS = common dso_local global i32 0, align 4
@PRCM_ARM_IT1_CLR = common dso_local global i32 0, align 4
@prcmu_irq_handler = common dso_local global i32 0, align 4
@prcmu_irq_thread_fn = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"prcmu: Failed to allocate IRQ_DB8500_PRCMU1.\0A\00", align 1
@ESRAM0_DEEP_SLEEP_STATE_RET = common dso_local global i32 0, align 4
@common_prcmu_devs = common dso_local global i32 0, align 4
@db8500_irq_domain = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"prcmu: Failed to add subdevices\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"st-ericsson,u8540\00", align 1
@db8500_prcmu_devs = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [39 x i8] c"prcmu: Failed to add ab8500 subdevice\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"DB8500 PRCMU initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @db8500_prcmu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db8500_prcmu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = load i32, i32* @IORESOURCE_MEM, align 4
  %14 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %12, i32 %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %14, %struct.resource** %7, align 8
  %15 = load %struct.resource*, %struct.resource** %7, align 8
  %16 = icmp ne %struct.resource* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 @dev_err(%struct.TYPE_6__* %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %146

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load %struct.resource*, %struct.resource** %7, align 8
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.resource*, %struct.resource** %7, align 8
  %30 = call i32 @resource_size(%struct.resource* %29)
  %31 = call i8* @devm_ioremap(%struct.TYPE_6__* %25, i32 %28, i32 %30)
  store i8* %31, i8** @prcmu_base, align 8
  %32 = load i8*, i8** @prcmu_base, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %23
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 @dev_err(%struct.TYPE_6__* %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %146

40:                                               ; preds = %23
  %41 = call i32 (...) @init_prcm_registers()
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = load i32, i32* @DB8500_PRCMU_FW_VERSION_OFFSET, align 4
  %44 = call i32 @dbx500_fw_version_init(%struct.platform_device* %42, i32 %43)
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = load i32, i32* @IORESOURCE_MEM, align 4
  %47 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %45, i32 %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store %struct.resource* %47, %struct.resource** %7, align 8
  %48 = load %struct.resource*, %struct.resource** %7, align 8
  %49 = icmp ne %struct.resource* %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %40
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i32 @dev_err(%struct.TYPE_6__* %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %146

56:                                               ; preds = %40
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load %struct.resource*, %struct.resource** %7, align 8
  %60 = getelementptr inbounds %struct.resource, %struct.resource* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.resource*, %struct.resource** %7, align 8
  %63 = call i32 @resource_size(%struct.resource* %62)
  %64 = call i8* @devm_ioremap(%struct.TYPE_6__* %58, i32 %61, i32 %63)
  store i8* %64, i8** @tcdm_base, align 8
  %65 = load i8*, i8** @tcdm_base, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %56
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i32 @dev_err(%struct.TYPE_6__* %69, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %146

73:                                               ; preds = %56
  %74 = load i32, i32* @ALL_MBOX_BITS, align 4
  %75 = load i32, i32* @PRCM_ARM_IT1_CLR, align 4
  %76 = call i32 @writel(i32 %74, i32 %75)
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = call i32 @platform_get_irq(%struct.platform_device* %77, i32 0)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp sle i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %146

83:                                               ; preds = %73
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @prcmu_irq_handler, align 4
  %86 = load i32, i32* @prcmu_irq_thread_fn, align 4
  %87 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %88 = call i32 @request_threaded_irq(i32 %84, i32 %85, i32 %86, i32 %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %2, align 4
  br label %146

94:                                               ; preds = %83
  %95 = load %struct.device_node*, %struct.device_node** %4, align 8
  %96 = call i32 @db8500_irq_init(%struct.device_node* %95)
  %97 = load i32, i32* @ESRAM0_DEEP_SLEEP_STATE_RET, align 4
  %98 = call i32 @prcmu_config_esram0_deep_sleep(i32 %97)
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = load i32, i32* @common_prcmu_devs, align 4
  %102 = load i32, i32* @common_prcmu_devs, align 4
  %103 = call i32 @ARRAY_SIZE(i32 %102)
  %104 = load i32, i32* @db8500_irq_domain, align 4
  %105 = call i32 @mfd_add_devices(%struct.TYPE_6__* %100, i32 0, i32 %101, i32 %103, i32* null, i32 0, i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %94
  %109 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %2, align 4
  br label %146

111:                                              ; preds = %94
  %112 = call i32 @of_machine_is_compatible(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %131, label %114

114:                                              ; preds = %111
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = load i32, i32* @db8500_prcmu_devs, align 4
  %118 = load i32, i32* @db8500_prcmu_devs, align 4
  %119 = call i32 @ARRAY_SIZE(i32 %118)
  %120 = load i32, i32* @db8500_irq_domain, align 4
  %121 = call i32 @mfd_add_devices(%struct.TYPE_6__* %116, i32 0, i32 %117, i32 %119, i32* null, i32 0, i32 %120)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %114
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = call i32 @mfd_remove_devices(%struct.TYPE_6__* %126)
  %128 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %129 = load i32, i32* %6, align 4
  store i32 %129, i32* %2, align 4
  br label %146

130:                                              ; preds = %114
  br label %131

131:                                              ; preds = %130, %111
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = call i32 @db8500_prcmu_register_ab8500(%struct.TYPE_6__* %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %131
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = call i32 @mfd_remove_devices(%struct.TYPE_6__* %139)
  %141 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %142 = load i32, i32* %6, align 4
  store i32 %142, i32* %2, align 4
  br label %146

143:                                              ; preds = %131
  %144 = call i32 @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %145 = load i32, i32* %6, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %143, %137, %124, %108, %91, %81, %67, %50, %34, %17
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i8* @devm_ioremap(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @init_prcm_registers(...) #1

declare dso_local i32 @dbx500_fw_version_init(%struct.platform_device*, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @db8500_irq_init(%struct.device_node*) #1

declare dso_local i32 @prcmu_config_esram0_deep_sleep(i32) #1

declare dso_local i32 @mfd_add_devices(%struct.TYPE_6__*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @of_machine_is_compatible(i8*) #1

declare dso_local i32 @mfd_remove_devices(%struct.TYPE_6__*) #1

declare dso_local i32 @db8500_prcmu_register_ab8500(%struct.TYPE_6__*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
