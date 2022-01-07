; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_xilinx_sdfec.c_xsdfec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_xilinx_sdfec.c_xsdfec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.xsdfec_dev = type { i64, i32, i32, %struct.TYPE_2__, i32, i32, i32, %struct.device*, i32 }
%struct.TYPE_2__ = type { %struct.device*, i32*, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"platform_get_irq failed\00", align 1
@xsdfec_irq_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"xilinx-sdfec16\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"unable to request IRQ%d\00", align 1
@dev_nrs = common dso_local global i32 0, align 4
@DEV_NAME_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"xsdfec%d\00", align 1
@MISC_DYNAMIC_MINOR = common dso_local global i32 0, align 4
@xsdfec_fops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"error:%d. Unable to register device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xsdfec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsdfec_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.xsdfec_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 1, i32* %8, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.xsdfec_dev* @devm_kzalloc(%struct.device* %10, i32 72, i32 %11)
  store %struct.xsdfec_dev* %12, %struct.xsdfec_dev** %4, align 8
  %13 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %14 = icmp ne %struct.xsdfec_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %159

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %22 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %21, i32 0, i32 7
  store %struct.device* %20, %struct.device** %22, align 8
  %23 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %24 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %23, i32 0, i32 8
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %28 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %27, i32 0, i32 2
  %29 = call i32 @xsdfec_clk_init(%struct.platform_device* %26, i32* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %2, align 4
  br label %159

34:                                               ; preds = %18
  %35 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %36 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %35, i32 0, i32 7
  %37 = load %struct.device*, %struct.device** %36, align 8
  store %struct.device* %37, %struct.device** %5, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = load i32, i32* @IORESOURCE_MEM, align 4
  %40 = call %struct.resource* @platform_get_resource(%struct.platform_device* %38, i32 %39, i32 0)
  store %struct.resource* %40, %struct.resource** %6, align 8
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = load %struct.resource*, %struct.resource** %6, align 8
  %43 = call i32 @devm_ioremap_resource(%struct.device* %41, %struct.resource* %42)
  %44 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %45 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 8
  %46 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %47 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @IS_ERR(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %34
  %52 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %53 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @PTR_ERR(i32 %54)
  store i32 %55, i32* %7, align 4
  br label %154

56:                                               ; preds = %34
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = call i64 @platform_get_irq(%struct.platform_device* %57, i32 0)
  %59 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %60 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %62 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load %struct.device*, %struct.device** %5, align 8
  %67 = call i32 @dev_dbg(%struct.device* %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %65, %56
  %69 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %70 = call i32 @xsdfec_parse_of(%struct.xsdfec_dev* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %154

74:                                               ; preds = %68
  %75 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %76 = call i32 @update_config_from_hw(%struct.xsdfec_dev* %75)
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %79 = call i32 @platform_set_drvdata(%struct.platform_device* %77, %struct.xsdfec_dev* %78)
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %74
  %83 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %84 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %83, i32 0, i32 5
  %85 = call i32 @init_waitqueue_head(i32* %84)
  %86 = load %struct.device*, %struct.device** %5, align 8
  %87 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %88 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* @xsdfec_irq_thread, align 4
  %91 = load i32, i32* @IRQF_ONESHOT, align 4
  %92 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %93 = call i32 @devm_request_threaded_irq(%struct.device* %86, i64 %89, i32* null, i32 %90, i32 %91, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.xsdfec_dev* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %82
  %97 = load %struct.device*, %struct.device** %5, align 8
  %98 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %99 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 @dev_err(%struct.device* %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %154

103:                                              ; preds = %82
  br label %104

104:                                              ; preds = %103, %74
  %105 = load i32, i32* @GFP_KERNEL, align 4
  %106 = call i32 @ida_alloc(i32* @dev_nrs, i32 %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %154

110:                                              ; preds = %104
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %113 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 8
  %114 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %115 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @DEV_NAME_LEN, align 4
  %118 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %119 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @snprintf(i32 %116, i32 %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @MISC_DYNAMIC_MINOR, align 4
  %123 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %124 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 3
  store i32 %122, i32* %125, align 4
  %126 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %127 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %130 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  store i32 %128, i32* %131, align 8
  %132 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %133 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  store i32* @xsdfec_fops, i32** %134, align 8
  %135 = load %struct.device*, %struct.device** %5, align 8
  %136 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %137 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  store %struct.device* %135, %struct.device** %138, align 8
  %139 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %140 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %139, i32 0, i32 3
  %141 = call i32 @misc_register(%struct.TYPE_2__* %140)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %110
  %145 = load %struct.device*, %struct.device** %5, align 8
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @dev_err(%struct.device* %145, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %146)
  br label %149

148:                                              ; preds = %110
  store i32 0, i32* %2, align 4
  br label %159

149:                                              ; preds = %144
  %150 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %151 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @ida_free(i32* @dev_nrs, i32 %152)
  br label %154

154:                                              ; preds = %149, %109, %96, %73, %51
  %155 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %156 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %155, i32 0, i32 2
  %157 = call i32 @xsdfec_disable_all_clks(i32* %156)
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %154, %148, %32, %15
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.xsdfec_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @xsdfec_clk_init(%struct.platform_device*, i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @xsdfec_parse_of(%struct.xsdfec_dev*) #1

declare dso_local i32 @update_config_from_hw(%struct.xsdfec_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.xsdfec_dev*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i64, i32*, i32, i32, i8*, %struct.xsdfec_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @ida_alloc(i32*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @misc_register(%struct.TYPE_2__*) #1

declare dso_local i32 @ida_free(i32*, i32) #1

declare dso_local i32 @xsdfec_disable_all_clks(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
