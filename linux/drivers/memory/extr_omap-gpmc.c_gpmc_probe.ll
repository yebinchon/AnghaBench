; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_gpmc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_gpmc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.resource = type { i32 }
%struct.gpmc_device = type { %struct.TYPE_10__*, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@phys_base = common dso_local global i32 0, align 4
@mem_size = common dso_local global i32 0, align 4
@gpmc_base = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to get resource: irq\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@gpmc_l3_clk = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to get GPMC fck\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Invalid GPMC fck clock rate\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GPMC_CS_NUM = common dso_local global i32 0, align 4
@gpmc_cs_num = common dso_local global i32 0, align 4
@GPMC_NR_WAITPINS = common dso_local global i64 0, align 8
@gpmc_nr_waitpins = common dso_local global i64 0, align 8
@GPMC_REVISION = common dso_local global i32 0, align 4
@GPMC_HAS_WR_ACCESS = common dso_local global i32 0, align 4
@GPMC_HAS_WR_DATA_MUX_BUS = common dso_local global i32 0, align 4
@gpmc_capability = common dso_local global i32 0, align 4
@GPMC_HAS_MUX_AAD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"GPMC revision %d.%d\0A\00", align 1
@GPMC_NR_NAND_IRQS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"gpmc_setup_irq failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gpmc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpmc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.gpmc_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.gpmc_device* @devm_kzalloc(%struct.TYPE_10__* %9, i32 24, i32 %10)
  store %struct.gpmc_device* %11, %struct.gpmc_device** %7, align 8
  %12 = load %struct.gpmc_device*, %struct.gpmc_device** %7, align 8
  %13 = icmp ne %struct.gpmc_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %172

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load %struct.gpmc_device*, %struct.gpmc_device** %7, align 8
  %21 = getelementptr inbounds %struct.gpmc_device, %struct.gpmc_device* %20, i32 0, i32 0
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %21, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.gpmc_device*, %struct.gpmc_device** %7, align 8
  %24 = call i32 @platform_set_drvdata(%struct.platform_device* %22, %struct.gpmc_device* %23)
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load i32, i32* @IORESOURCE_MEM, align 4
  %27 = call %struct.resource* @platform_get_resource(%struct.platform_device* %25, i32 %26, i32 0)
  store %struct.resource* %27, %struct.resource** %6, align 8
  %28 = load %struct.resource*, %struct.resource** %6, align 8
  %29 = icmp eq %struct.resource* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %172

33:                                               ; preds = %17
  %34 = load %struct.resource*, %struct.resource** %6, align 8
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* @phys_base, align 4
  %37 = load %struct.resource*, %struct.resource** %6, align 8
  %38 = call i32 @resource_size(%struct.resource* %37)
  store i32 %38, i32* @mem_size, align 4
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.resource*, %struct.resource** %6, align 8
  %42 = call i32 @devm_ioremap_resource(%struct.TYPE_10__* %40, %struct.resource* %41)
  store i32 %42, i32* @gpmc_base, align 4
  %43 = load i32, i32* @gpmc_base, align 4
  %44 = call i64 @IS_ERR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load i32, i32* @gpmc_base, align 4
  %48 = call i32 @PTR_ERR(i32 %47)
  store i32 %48, i32* %2, align 4
  br label %172

49:                                               ; preds = %33
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = load i32, i32* @IORESOURCE_IRQ, align 4
  %52 = call %struct.resource* @platform_get_resource(%struct.platform_device* %50, i32 %51, i32 0)
  store %struct.resource* %52, %struct.resource** %6, align 8
  %53 = load %struct.resource*, %struct.resource** %6, align 8
  %54 = icmp ne %struct.resource* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i32 @dev_err(%struct.TYPE_10__* %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @ENOENT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %172

61:                                               ; preds = %49
  %62 = load %struct.resource*, %struct.resource** %6, align 8
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.gpmc_device*, %struct.gpmc_device** %7, align 8
  %66 = getelementptr inbounds %struct.gpmc_device, %struct.gpmc_device* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 @devm_clk_get(%struct.TYPE_10__* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %69, i32* @gpmc_l3_clk, align 4
  %70 = load i32, i32* @gpmc_l3_clk, align 4
  %71 = call i64 @IS_ERR(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %61
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = call i32 @dev_err(%struct.TYPE_10__* %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @gpmc_l3_clk, align 4
  %78 = call i32 @PTR_ERR(i32 %77)
  store i32 %78, i32* %2, align 4
  br label %172

79:                                               ; preds = %61
  %80 = load i32, i32* @gpmc_l3_clk, align 4
  %81 = call i32 @clk_get_rate(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %79
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 @dev_err(%struct.TYPE_10__* %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %172

89:                                               ; preds = %79
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = call i32 @gpmc_probe_dt(%struct.platform_device* %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* %4, align 4
  store i32 %101, i32* %2, align 4
  br label %172

102:                                              ; preds = %95
  br label %106

103:                                              ; preds = %89
  %104 = load i32, i32* @GPMC_CS_NUM, align 4
  store i32 %104, i32* @gpmc_cs_num, align 4
  %105 = load i64, i64* @GPMC_NR_WAITPINS, align 8
  store i64 %105, i64* @gpmc_nr_waitpins, align 8
  br label %106

106:                                              ; preds = %103, %102
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = call i32 @pm_runtime_enable(%struct.TYPE_10__* %108)
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = call i32 @pm_runtime_get_sync(%struct.TYPE_10__* %111)
  %113 = load i32, i32* @GPMC_REVISION, align 4
  %114 = call i32 @gpmc_read_reg(i32 %113)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @GPMC_REVISION_MAJOR(i32 %115)
  %117 = icmp sgt i32 %116, 4
  br i1 %117, label %118, label %122

118:                                              ; preds = %106
  %119 = load i32, i32* @GPMC_HAS_WR_ACCESS, align 4
  %120 = load i32, i32* @GPMC_HAS_WR_DATA_MUX_BUS, align 4
  %121 = or i32 %119, %120
  store i32 %121, i32* @gpmc_capability, align 4
  br label %122

122:                                              ; preds = %118, %106
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @GPMC_REVISION_MAJOR(i32 %123)
  %125 = icmp sgt i32 %124, 5
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i32, i32* @GPMC_HAS_MUX_AAD, align 4
  %128 = load i32, i32* @gpmc_capability, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* @gpmc_capability, align 4
  br label %130

130:                                              ; preds = %126, %122
  %131 = load %struct.gpmc_device*, %struct.gpmc_device** %7, align 8
  %132 = getelementptr inbounds %struct.gpmc_device, %struct.gpmc_device* %131, i32 0, i32 0
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @GPMC_REVISION_MAJOR(i32 %134)
  %136 = load i32, i32* %5, align 4
  %137 = call i32 @GPMC_REVISION_MINOR(i32 %136)
  %138 = call i32 @dev_info(%struct.TYPE_10__* %133, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %135, i32 %137)
  %139 = call i32 (...) @gpmc_mem_init()
  %140 = load %struct.gpmc_device*, %struct.gpmc_device** %7, align 8
  %141 = call i32 @gpmc_gpio_init(%struct.gpmc_device* %140)
  store i32 %141, i32* %4, align 4
  %142 = load i32, i32* %4, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %130
  br label %163

145:                                              ; preds = %130
  %146 = load i64, i64* @GPMC_NR_NAND_IRQS, align 8
  %147 = load i64, i64* @gpmc_nr_waitpins, align 8
  %148 = add nsw i64 %146, %147
  %149 = load %struct.gpmc_device*, %struct.gpmc_device** %7, align 8
  %150 = getelementptr inbounds %struct.gpmc_device, %struct.gpmc_device* %149, i32 0, i32 1
  store i64 %148, i64* %150, align 8
  %151 = load %struct.gpmc_device*, %struct.gpmc_device** %7, align 8
  %152 = call i32 @gpmc_setup_irq(%struct.gpmc_device* %151)
  store i32 %152, i32* %4, align 4
  %153 = load i32, i32* %4, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %145
  %156 = load %struct.gpmc_device*, %struct.gpmc_device** %7, align 8
  %157 = getelementptr inbounds %struct.gpmc_device, %struct.gpmc_device* %156, i32 0, i32 0
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = call i32 @dev_err(%struct.TYPE_10__* %158, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %163

160:                                              ; preds = %145
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = call i32 @gpmc_probe_dt_children(%struct.platform_device* %161)
  store i32 0, i32* %2, align 4
  br label %172

163:                                              ; preds = %155, %144
  %164 = call i32 (...) @gpmc_mem_exit()
  %165 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %166 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %165, i32 0, i32 0
  %167 = call i32 @pm_runtime_put_sync(%struct.TYPE_10__* %166)
  %168 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %169 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %168, i32 0, i32 0
  %170 = call i32 @pm_runtime_disable(%struct.TYPE_10__* %169)
  %171 = load i32, i32* %4, align 4
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %163, %160, %100, %83, %73, %55, %46, %30, %14
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local %struct.gpmc_device* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.gpmc_device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_10__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @gpmc_probe_dt(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_10__*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.TYPE_10__*) #1

declare dso_local i32 @gpmc_read_reg(i32) #1

declare dso_local i32 @GPMC_REVISION_MAJOR(i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_10__*, i8*, i32, i32) #1

declare dso_local i32 @GPMC_REVISION_MINOR(i32) #1

declare dso_local i32 @gpmc_mem_init(...) #1

declare dso_local i32 @gpmc_gpio_init(%struct.gpmc_device*) #1

declare dso_local i32 @gpmc_setup_irq(%struct.gpmc_device*) #1

declare dso_local i32 @gpmc_probe_dt_children(%struct.platform_device*) #1

declare dso_local i32 @gpmc_mem_exit(...) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.TYPE_10__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
