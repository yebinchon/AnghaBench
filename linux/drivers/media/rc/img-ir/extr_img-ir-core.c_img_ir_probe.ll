; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-core.c_img_ir_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-core.c_img_ir_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.img_ir_priv = type { i32, i8*, i8*, i8*, i32, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot get core clock resource\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"cannot get sys clock resource\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"cannot enable sys clock\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@img_ir_isr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"img-ir\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"cannot register IRQ %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @img_ir_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_ir_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.img_ir_priv*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = call i32 @platform_get_irq(%struct.platform_device* %9, i32 0)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %166

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.img_ir_priv* @devm_kzalloc(i32* %17, i32 48, i32 %18)
  store %struct.img_ir_priv* %19, %struct.img_ir_priv** %4, align 8
  %20 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %21 = icmp ne %struct.img_ir_priv* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %166

25:                                               ; preds = %15
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %28 = call i32 @platform_set_drvdata(%struct.platform_device* %26, %struct.img_ir_priv* %27)
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %32 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %31, i32 0, i32 5
  store i32* %30, i32** %32, align 8
  %33 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %34 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %33, i32 0, i32 4
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load i32, i32* @IORESOURCE_MEM, align 4
  %38 = call %struct.resource* @platform_get_resource(%struct.platform_device* %36, i32 %37, i32 0)
  store %struct.resource* %38, %struct.resource** %5, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.resource*, %struct.resource** %5, align 8
  %42 = call i8* @devm_ioremap_resource(i32* %40, %struct.resource* %41)
  %43 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %44 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %46 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %45, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @IS_ERR(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %25
  %51 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %52 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %51, i32 0, i32 3
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @PTR_ERR(i8* %53)
  store i32 %54, i32* %2, align 4
  br label %166

55:                                               ; preds = %25
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i8* @devm_clk_get(i32* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %60 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %62 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @IS_ERR(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %55
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 @dev_warn(i32* %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %66, %55
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = call i8* @devm_clk_get(i32* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %74 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %75 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %77 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = call i64 @IS_ERR(i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %70
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = call i32 @dev_warn(i32* %83, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %85

85:                                               ; preds = %81, %70
  %86 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %87 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @IS_ERR(i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %104, label %91

91:                                               ; preds = %85
  %92 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %93 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @clk_prepare_enable(i8* %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = call i32 (i32*, i8*, ...) @dev_err(i32* %100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %2, align 4
  br label %166

103:                                              ; preds = %91
  br label %104

104:                                              ; preds = %103, %85
  %105 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %106 = call i32 @img_ir_probe_raw(%struct.img_ir_priv* %105)
  store i32 %106, i32* %7, align 4
  %107 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %108 = call i32 @img_ir_probe_hw(%struct.img_ir_priv* %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %104
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %111
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @ENODEV, align 4
  %117 = sub nsw i32 0, %116
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %119, %114
  br label %153

122:                                              ; preds = %111, %104
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %125 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %127 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @img_ir_isr, align 4
  %130 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %131 = call i32 @request_irq(i32 %128, i32 %129, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %struct.img_ir_priv* %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %122
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 0
  %137 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %138 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (i32*, i8*, ...) @dev_err(i32* %136, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @EIO, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %7, align 4
  br label %148

143:                                              ; preds = %122
  %144 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %145 = call i32 @img_ir_ident(%struct.img_ir_priv* %144)
  %146 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %147 = call i32 @img_ir_setup(%struct.img_ir_priv* %146)
  store i32 0, i32* %2, align 4
  br label %166

148:                                              ; preds = %134
  %149 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %150 = call i32 @img_ir_remove_hw(%struct.img_ir_priv* %149)
  %151 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %152 = call i32 @img_ir_remove_raw(%struct.img_ir_priv* %151)
  br label %153

153:                                              ; preds = %148, %121
  %154 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %155 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = call i64 @IS_ERR(i8* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %153
  %160 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %161 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %160, i32 0, i32 1
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @clk_disable_unprepare(i8* %162)
  br label %164

164:                                              ; preds = %159, %153
  %165 = load i32, i32* %7, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %164, %143, %98, %50, %22, %13
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.img_ir_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.img_ir_priv*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @img_ir_probe_raw(%struct.img_ir_priv*) #1

declare dso_local i32 @img_ir_probe_hw(%struct.img_ir_priv*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.img_ir_priv*) #1

declare dso_local i32 @img_ir_ident(%struct.img_ir_priv*) #1

declare dso_local i32 @img_ir_setup(%struct.img_ir_priv*) #1

declare dso_local i32 @img_ir_remove_hw(%struct.img_ir_priv*) #1

declare dso_local i32 @img_ir_remove_raw(%struct.img_ir_priv*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
