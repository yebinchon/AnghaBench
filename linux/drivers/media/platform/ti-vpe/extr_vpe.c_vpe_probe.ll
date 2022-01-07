; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_vpe_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_vpe_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.vpe_dev = type { i32, i32, i32*, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"vpe_top\00", align 1
@SZ_32K = common dso_local global i32 0, align 4
@vpe_irq = common dso_local global i32 0, align 4
@VPE_MODULE_NAME = common dso_local global i32 0, align 4
@m2m_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to init mem2mem device\0A\00", align 1
@VPE_PID = common dso_local global i32 0, align 4
@VPE_PID_FUNC_MASK = common dso_local global i32 0, align 4
@VPE_PID_FUNC_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"VPE PID function %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"sc\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"csc\00", align 1
@vpe_fw_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vpe_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpe_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.vpe_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.vpe_dev* @devm_kzalloc(i32* %9, i32 56, i32 %10)
  store %struct.vpe_dev* %11, %struct.vpe_dev** %4, align 8
  %12 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %13 = icmp ne %struct.vpe_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %176

17:                                               ; preds = %1
  %18 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %19 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %18, i32 0, i32 10
  %20 = call i32 @spin_lock_init(i32* %19)
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %24 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %23, i32 0, i32 0
  %25 = call i32 @v4l2_device_register(i32* %22, i32* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %176

30:                                               ; preds = %17
  %31 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %32 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %31, i32 0, i32 9
  %33 = call i32 @atomic_set(i32* %32, i32 0)
  %34 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %35 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %34, i32 0, i32 8
  %36 = call i32 @mutex_init(i32* %35)
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = load i32, i32* @IORESOURCE_MEM, align 4
  %39 = call %struct.TYPE_2__* @platform_get_resource_byname(%struct.platform_device* %37, i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %41 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %40, i32 0, i32 7
  store %struct.TYPE_2__* %39, %struct.TYPE_2__** %41, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %45 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %44, i32 0, i32 7
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SZ_32K, align 4
  %50 = call i32 @devm_ioremap(i32* %43, i32 %48, i32 %49)
  %51 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %52 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %54 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %30
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %171

60:                                               ; preds = %30
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = call i32 @platform_get_irq(%struct.platform_device* %61, i32 0)
  store i32 %62, i32* %6, align 4
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @vpe_irq, align 4
  %67 = load i32, i32* @VPE_MODULE_NAME, align 4
  %68 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %69 = call i32 @devm_request_irq(i32* %64, i32 %65, i32 %66, i32 0, i32 %67, %struct.vpe_dev* %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %171

73:                                               ; preds = %60
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %76 = call i32 @platform_set_drvdata(%struct.platform_device* %74, %struct.vpe_dev* %75)
  %77 = call i32 @v4l2_m2m_init(i32* @m2m_ops)
  %78 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %79 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %81 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @IS_ERR(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %73
  %86 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %87 = call i32 @vpe_err(%struct.vpe_dev* %86, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %88 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %89 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @PTR_ERR(i32 %90)
  store i32 %91, i32* %5, align 4
  br label %171

92:                                               ; preds = %73
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call i32 @pm_runtime_enable(i32* %94)
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = call i32 @vpe_runtime_get(%struct.platform_device* %96)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %163

101:                                              ; preds = %92
  %102 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %103 = call i32 @vpe_set_clock_enable(%struct.vpe_dev* %102, i32 1)
  %104 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %105 = call i32 @vpe_top_reset(%struct.vpe_dev* %104)
  %106 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %107 = load i32, i32* @VPE_PID, align 4
  %108 = load i32, i32* @VPE_PID_FUNC_MASK, align 4
  %109 = load i32, i32* @VPE_PID_FUNC_SHIFT, align 4
  %110 = call i32 @read_field_reg(%struct.vpe_dev* %106, i32 %107, i32 %108, i32 %109)
  store i32 %110, i32* %7, align 4
  %111 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @vpe_dbg(%struct.vpe_dev* %111, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  %114 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %115 = call i32 @vpe_top_vpdma_reset(%struct.vpe_dev* %114)
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = call i32 @sc_create(%struct.platform_device* %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %118 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %119 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %118, i32 0, i32 5
  store i32 %117, i32* %119, align 8
  %120 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %121 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @IS_ERR(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %101
  %126 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %127 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @PTR_ERR(i32 %128)
  store i32 %129, i32* %5, align 4
  br label %160

130:                                              ; preds = %101
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = call i32 @csc_create(%struct.platform_device* %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %133 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %134 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 4
  %135 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %136 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @IS_ERR(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %130
  %141 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %142 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @PTR_ERR(i32 %143)
  store i32 %144, i32* %5, align 4
  br label %160

145:                                              ; preds = %130
  %146 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %147 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %146, i32 0, i32 3
  %148 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %149 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %148, i32 0, i32 2
  store i32* %147, i32** %149, align 8
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %152 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* @vpe_fw_cb, align 4
  %155 = call i32 @vpdma_create(%struct.platform_device* %150, i32* %153, i32 %154)
  store i32 %155, i32* %5, align 4
  %156 = load i32, i32* %5, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %145
  br label %160

159:                                              ; preds = %145
  store i32 0, i32* %2, align 4
  br label %176

160:                                              ; preds = %158, %140, %125
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = call i32 @vpe_runtime_put(%struct.platform_device* %161)
  br label %163

163:                                              ; preds = %160, %100
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 0
  %166 = call i32 @pm_runtime_disable(i32* %165)
  %167 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %168 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @v4l2_m2m_release(i32 %169)
  br label %171

171:                                              ; preds = %163, %85, %72, %57
  %172 = load %struct.vpe_dev*, %struct.vpe_dev** %4, align 8
  %173 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %172, i32 0, i32 0
  %174 = call i32 @v4l2_device_unregister(i32* %173)
  %175 = load i32, i32* %5, align 4
  store i32 %175, i32* %2, align 4
  br label %176

176:                                              ; preds = %171, %159, %28, %14
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local %struct.vpe_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @v4l2_device_register(i32*, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.TYPE_2__* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @devm_ioremap(i32*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.vpe_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.vpe_dev*) #1

declare dso_local i32 @v4l2_m2m_init(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @vpe_err(%struct.vpe_dev*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @vpe_runtime_get(%struct.platform_device*) #1

declare dso_local i32 @vpe_set_clock_enable(%struct.vpe_dev*, i32) #1

declare dso_local i32 @vpe_top_reset(%struct.vpe_dev*) #1

declare dso_local i32 @read_field_reg(%struct.vpe_dev*, i32, i32, i32) #1

declare dso_local i32 @vpe_dbg(%struct.vpe_dev*, i8*, i32) #1

declare dso_local i32 @vpe_top_vpdma_reset(%struct.vpe_dev*) #1

declare dso_local i32 @sc_create(%struct.platform_device*, i8*) #1

declare dso_local i32 @csc_create(%struct.platform_device*, i8*) #1

declare dso_local i32 @vpdma_create(%struct.platform_device*, i32*, i32) #1

declare dso_local i32 @vpe_runtime_put(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @v4l2_m2m_release(i32) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
