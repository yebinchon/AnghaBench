; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is.c_fimc_is_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is.c_fimc_is_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.fimc_is = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, %struct.platform_device* }
%struct.TYPE_2__ = type { %struct.platform_device* }
%struct.resource = type { i32 }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"pmu\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"no irq found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@fimc_is_irq_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"irq request failed\0A\00", align 1
@FIMC_IS_FW_FILENAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"FIMC-IS registered successfully\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fimc_is_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_is_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.fimc_is*, align 8
  %6 = alloca %struct.resource, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.fimc_is* @devm_kzalloc(%struct.device* %12, i32 40, i32 %13)
  store %struct.fimc_is* %14, %struct.fimc_is** %5, align 8
  %15 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %16 = icmp ne %struct.fimc_is* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %204

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %23 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %22, i32 0, i32 7
  store %struct.platform_device* %21, %struct.platform_device** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %26 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store %struct.platform_device* %24, %struct.platform_device** %27, align 8
  %28 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %29 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %28, i32 0, i32 5
  %30 = call i32 @init_waitqueue_head(i32* %29)
  %31 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %32 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %31, i32 0, i32 4
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %35 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %34, i32 0, i32 3
  %36 = call i32 @mutex_init(i32* %35)
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @of_address_to_resource(i32 %39, i32 0, %struct.resource* %6)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %20
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %2, align 4
  br label %204

45:                                               ; preds = %20
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = call i32 @devm_ioremap_resource(%struct.device* %46, %struct.resource* %6)
  %48 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %49 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %51 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @IS_ERR(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %57 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @PTR_ERR(i32 %58)
  store i32 %59, i32* %2, align 4
  br label %204

60:                                               ; preds = %45
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = getelementptr inbounds %struct.device, %struct.device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.device_node* @of_get_child_by_name(i32 %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %64, %struct.device_node** %7, align 8
  %65 = load %struct.device_node*, %struct.device_node** %7, align 8
  %66 = icmp ne %struct.device_node* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %204

70:                                               ; preds = %60
  %71 = load %struct.device_node*, %struct.device_node** %7, align 8
  %72 = call i32 @of_iomap(%struct.device_node* %71, i32 0)
  %73 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %74 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.device_node*, %struct.device_node** %7, align 8
  %76 = call i32 @of_node_put(%struct.device_node* %75)
  %77 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %78 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %70
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %204

84:                                               ; preds = %70
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = getelementptr inbounds %struct.device, %struct.device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @irq_of_parse_and_map(i32 %87, i32 0)
  %89 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %90 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %92 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %84
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = call i32 @dev_err(%struct.device* %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %8, align 4
  br label %198

100:                                              ; preds = %84
  %101 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %102 = call i32 @fimc_is_get_clocks(%struct.fimc_is* %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %198

106:                                              ; preds = %100
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %109 = call i32 @platform_set_drvdata(%struct.platform_device* %107, %struct.fimc_is* %108)
  %110 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %111 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @fimc_is_irq_handler, align 4
  %114 = load %struct.device*, %struct.device** %4, align 8
  %115 = call i32 @dev_name(%struct.device* %114)
  %116 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %117 = call i32 @request_irq(i32 %112, i32 %113, i32 0, i32 %115, %struct.fimc_is* %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %106
  %121 = load %struct.device*, %struct.device** %4, align 8
  %122 = call i32 @dev_err(%struct.device* %121, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %195

123:                                              ; preds = %106
  %124 = load %struct.device*, %struct.device** %4, align 8
  %125 = call i32 @pm_runtime_enable(%struct.device* %124)
  %126 = load %struct.device*, %struct.device** %4, align 8
  %127 = call i32 @pm_runtime_enabled(%struct.device* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %123
  %130 = load %struct.device*, %struct.device** %4, align 8
  %131 = call i32 @fimc_is_runtime_resume(%struct.device* %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %189

135:                                              ; preds = %129
  br label %136

136:                                              ; preds = %135, %123
  %137 = load %struct.device*, %struct.device** %4, align 8
  %138 = call i32 @pm_runtime_get_sync(%struct.device* %137)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %181

142:                                              ; preds = %136
  %143 = load %struct.device*, %struct.device** %4, align 8
  %144 = call i32 @DMA_BIT_MASK(i32 32)
  %145 = call i32 @vb2_dma_contig_set_max_seg_size(%struct.device* %143, i32 %144)
  %146 = load %struct.device*, %struct.device** %4, align 8
  %147 = call i32 @devm_of_platform_populate(%struct.device* %146)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %142
  br label %181

151:                                              ; preds = %142
  %152 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %153 = call i32 @fimc_is_register_subdevs(%struct.fimc_is* %152)
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %8, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  br label %181

157:                                              ; preds = %151
  %158 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %159 = call i32 @fimc_is_debugfs_create(%struct.fimc_is* %158)
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* %8, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %178

163:                                              ; preds = %157
  %164 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %165 = load i32, i32* @FIMC_IS_FW_FILENAME, align 4
  %166 = call i32 @fimc_is_request_firmware(%struct.fimc_is* %164, i32 %165)
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  br label %175

170:                                              ; preds = %163
  %171 = load %struct.device*, %struct.device** %4, align 8
  %172 = call i32 @pm_runtime_put_sync(%struct.device* %171)
  %173 = load %struct.device*, %struct.device** %4, align 8
  %174 = call i32 @dev_dbg(%struct.device* %173, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %204

175:                                              ; preds = %169
  %176 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %177 = call i32 @fimc_is_debugfs_remove(%struct.fimc_is* %176)
  br label %178

178:                                              ; preds = %175, %162
  %179 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %180 = call i32 @fimc_is_unregister_subdevs(%struct.fimc_is* %179)
  br label %181

181:                                              ; preds = %178, %156, %150, %141
  %182 = load %struct.device*, %struct.device** %4, align 8
  %183 = call i32 @pm_runtime_enabled(%struct.device* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %181
  %186 = load %struct.device*, %struct.device** %4, align 8
  %187 = call i32 @fimc_is_runtime_suspend(%struct.device* %186)
  br label %188

188:                                              ; preds = %185, %181
  br label %189

189:                                              ; preds = %188, %134
  %190 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %191 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %194 = call i32 @free_irq(i32 %192, %struct.fimc_is* %193)
  br label %195

195:                                              ; preds = %189, %120
  %196 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %197 = call i32 @fimc_is_put_clocks(%struct.fimc_is* %196)
  br label %198

198:                                              ; preds = %195, %105, %95
  %199 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %200 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @iounmap(i32 %201)
  %203 = load i32, i32* %8, align 4
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %198, %170, %81, %67, %55, %43, %17
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local %struct.fimc_is* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @of_address_to_resource(i32, i32, %struct.resource*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #1

declare dso_local i32 @of_iomap(%struct.device_node*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @irq_of_parse_and_map(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @fimc_is_get_clocks(%struct.fimc_is*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fimc_is*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.fimc_is*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_enabled(%struct.device*) #1

declare dso_local i32 @fimc_is_runtime_resume(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @vb2_dma_contig_set_max_seg_size(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @devm_of_platform_populate(%struct.device*) #1

declare dso_local i32 @fimc_is_register_subdevs(%struct.fimc_is*) #1

declare dso_local i32 @fimc_is_debugfs_create(%struct.fimc_is*) #1

declare dso_local i32 @fimc_is_request_firmware(%struct.fimc_is*, i32) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @fimc_is_debugfs_remove(%struct.fimc_is*) #1

declare dso_local i32 @fimc_is_unregister_subdevs(%struct.fimc_is*) #1

declare dso_local i32 @fimc_is_runtime_suspend(%struct.device*) #1

declare dso_local i32 @free_irq(i32, %struct.fimc_is*) #1

declare dso_local i32 @fimc_is_put_clocks(%struct.fimc_is*) #1

declare dso_local i32 @iounmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
