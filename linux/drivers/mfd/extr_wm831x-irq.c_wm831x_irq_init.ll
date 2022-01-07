; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-irq.c_wm831x_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-irq.c_wm831x_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm831x = type { i32*, i32*, i32, %struct.TYPE_3__*, %struct.irq_domain*, i32, %struct.wm831x_pdata }
%struct.TYPE_3__ = type { i32 }
%struct.irq_domain = type { i32 }
%struct.wm831x_pdata = type { i64, i64 }

@WM831X_INTERRUPT_STATUS_1_MASK = common dso_local global i64 0, align 8
@WM831X_NUM_IRQS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to allocate IRQs: %d\0A\00", align 1
@wm831x_irqs = common dso_local global i32* null, align 8
@wm831x_irq_domain_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to allocate IRQ domain\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM831X_IRQ_OD = common dso_local global i32 0, align 4
@WM831X_IRQ_CONFIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Can't enable IRQ as wake source: %d\0A\00", align 1
@wm831x_irq_thread = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"wm831x\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to request IRQ %d: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"No interrupt specified - functionality limited\0A\00", align 1
@WM831X_SYSTEM_INTERRUPTS_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm831x_irq_init(%struct.wm831x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wm831x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm831x_pdata*, align 8
  %7 = alloca %struct.irq_domain*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wm831x* %0, %struct.wm831x** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %12 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %11, i32 0, i32 6
  store %struct.wm831x_pdata* %12, %struct.wm831x_pdata** %6, align 8
  %13 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %14 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %13, i32 0, i32 5
  %15 = call i32 @mutex_init(i32* %14)
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %42, %2
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %19 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @ARRAY_SIZE(i32* %20)
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %16
  %24 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %25 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 65535, i32* %29, align 4
  %30 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %31 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 65535, i32* %35, align 4
  %36 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %37 = load i64, i64* @WM831X_INTERRUPT_STATUS_1_MASK, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = call i32 @wm831x_reg_write(%struct.wm831x* %36, i64 %40, i32 65535)
  br label %42

42:                                               ; preds = %23
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %16

45:                                               ; preds = %16
  %46 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %6, align 8
  %47 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %45
  %51 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %6, align 8
  %52 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @WM831X_NUM_IRQS, align 4
  %55 = call i32 @irq_alloc_descs(i64 %53, i32 0, i32 %54, i32 0)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %60 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %59, i32 0, i32 3
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_warn(%struct.TYPE_3__* %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %62)
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %58, %50
  br label %66

65:                                               ; preds = %45
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %65, %64
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %66
  %70 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %71 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %70, i32 0, i32 3
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** @wm831x_irqs, align 8
  %76 = call i32 @ARRAY_SIZE(i32* %75)
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %79 = call %struct.irq_domain* @irq_domain_add_legacy(i32 %74, i32 %76, i32 %77, i32 0, i32* @wm831x_irq_domain_ops, %struct.wm831x* %78)
  store %struct.irq_domain* %79, %struct.irq_domain** %7, align 8
  br label %90

80:                                               ; preds = %66
  %81 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %82 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %81, i32 0, i32 3
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** @wm831x_irqs, align 8
  %87 = call i32 @ARRAY_SIZE(i32* %86)
  %88 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %89 = call %struct.irq_domain* @irq_domain_add_linear(i32 %85, i32 %87, i32* @wm831x_irq_domain_ops, %struct.wm831x* %88)
  store %struct.irq_domain* %89, %struct.irq_domain** %7, align 8
  br label %90

90:                                               ; preds = %80, %69
  %91 = load %struct.irq_domain*, %struct.irq_domain** %7, align 8
  %92 = icmp ne %struct.irq_domain* %91, null
  br i1 %92, label %100, label %93

93:                                               ; preds = %90
  %94 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %95 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %94, i32 0, i32 3
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_warn(%struct.TYPE_3__* %96, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %161

100:                                              ; preds = %90
  %101 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %6, align 8
  %102 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  store i32 0, i32* %8, align 4
  br label %108

106:                                              ; preds = %100
  %107 = load i32, i32* @WM831X_IRQ_OD, align 4
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %106, %105
  %109 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %110 = load i32, i32* @WM831X_IRQ_CONFIG, align 4
  %111 = load i32, i32* @WM831X_IRQ_OD, align 4
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @wm831x_set_bits(%struct.wm831x* %109, i32 %110, i32 %111, i32 %112)
  %114 = load i32, i32* %5, align 4
  %115 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %116 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.irq_domain*, %struct.irq_domain** %7, align 8
  %118 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %119 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %118, i32 0, i32 4
  store %struct.irq_domain* %117, %struct.irq_domain** %119, align 8
  %120 = load i32, i32* %5, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %152

122:                                              ; preds = %108
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @enable_irq_wake(i32 %123)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %129 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %128, i32 0, i32 3
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_warn(%struct.TYPE_3__* %130, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %127, %122
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @wm831x_irq_thread, align 4
  %136 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %137 = load i32, i32* @IRQF_ONESHOT, align 4
  %138 = or i32 %136, %137
  %139 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %140 = call i32 @request_threaded_irq(i32 %134, i32* null, i32 %135, i32 %138, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %struct.wm831x* %139)
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %133
  %144 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %145 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %144, i32 0, i32 3
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %145, align 8
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @dev_err(%struct.TYPE_3__* %146, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %147, i32 %148)
  %150 = load i32, i32* %9, align 4
  store i32 %150, i32* %3, align 4
  br label %161

151:                                              ; preds = %133
  br label %157

152:                                              ; preds = %108
  %153 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %154 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %153, i32 0, i32 3
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %154, align 8
  %156 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_warn(%struct.TYPE_3__* %155, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  br label %157

157:                                              ; preds = %152, %151
  %158 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %159 = load i64, i64* @WM831X_SYSTEM_INTERRUPTS_MASK, align 8
  %160 = call i32 @wm831x_reg_write(%struct.wm831x* %158, i64 %159, i32 0)
  store i32 0, i32* %3, align 4
  br label %161

161:                                              ; preds = %157, %143, %93
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @wm831x_reg_write(%struct.wm831x*, i64, i32) #1

declare dso_local i32 @irq_alloc_descs(i64, i32, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_3__*, i8*, ...) #1

declare dso_local %struct.irq_domain* @irq_domain_add_legacy(i32, i32, i32, i32, i32*, %struct.wm831x*) #1

declare dso_local %struct.irq_domain* @irq_domain_add_linear(i32, i32, i32*, %struct.wm831x*) #1

declare dso_local i32 @wm831x_set_bits(%struct.wm831x*, i32, i32, i32) #1

declare dso_local i32 @enable_irq_wake(i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.wm831x*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
