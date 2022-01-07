; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_lp8788-irq.c_lp8788_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_lp8788-irq.c_lp8788_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp8788 = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.lp8788_irq_data = type { i32, i64, %struct.lp8788* }

@.str = private unnamed_addr constant [24 x i8] c"invalid irq number: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LP8788_INT_MAX = common dso_local global i32 0, align 4
@lp8788_domain_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to add irq domain err\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@lp8788_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"lp8788-irq\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to create a thread for IRQ_N\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lp8788_irq_init(%struct.lp8788* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lp8788*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lp8788_irq_data*, align 8
  %7 = alloca i32, align 4
  store %struct.lp8788* %0, %struct.lp8788** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %12 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @dev_warn(%struct.TYPE_4__* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 0, i32* %3, align 4
  br label %80

16:                                               ; preds = %2
  %17 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %18 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.lp8788_irq_data* @devm_kzalloc(%struct.TYPE_4__* %19, i32 24, i32 %20)
  store %struct.lp8788_irq_data* %21, %struct.lp8788_irq_data** %6, align 8
  %22 = load %struct.lp8788_irq_data*, %struct.lp8788_irq_data** %6, align 8
  %23 = icmp ne %struct.lp8788_irq_data* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %80

27:                                               ; preds = %16
  %28 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %29 = load %struct.lp8788_irq_data*, %struct.lp8788_irq_data** %6, align 8
  %30 = getelementptr inbounds %struct.lp8788_irq_data, %struct.lp8788_irq_data* %29, i32 0, i32 2
  store %struct.lp8788* %28, %struct.lp8788** %30, align 8
  %31 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %32 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @LP8788_INT_MAX, align 4
  %37 = load %struct.lp8788_irq_data*, %struct.lp8788_irq_data** %6, align 8
  %38 = call i64 @irq_domain_add_linear(i32 %35, i32 %36, i32* @lp8788_domain_ops, %struct.lp8788_irq_data* %37)
  %39 = load %struct.lp8788_irq_data*, %struct.lp8788_irq_data** %6, align 8
  %40 = getelementptr inbounds %struct.lp8788_irq_data, %struct.lp8788_irq_data* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.lp8788_irq_data*, %struct.lp8788_irq_data** %6, align 8
  %42 = getelementptr inbounds %struct.lp8788_irq_data, %struct.lp8788_irq_data* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %27
  %46 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %47 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = call i32 @dev_err(%struct.TYPE_4__* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %80

52:                                               ; preds = %27
  %53 = load %struct.lp8788_irq_data*, %struct.lp8788_irq_data** %6, align 8
  %54 = getelementptr inbounds %struct.lp8788_irq_data, %struct.lp8788_irq_data* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %57 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  %58 = load %struct.lp8788_irq_data*, %struct.lp8788_irq_data** %6, align 8
  %59 = getelementptr inbounds %struct.lp8788_irq_data, %struct.lp8788_irq_data* %58, i32 0, i32 0
  %60 = call i32 @mutex_init(i32* %59)
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @lp8788_irq_handler, align 4
  %63 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %64 = load i32, i32* @IRQF_ONESHOT, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.lp8788_irq_data*, %struct.lp8788_irq_data** %6, align 8
  %67 = call i32 @request_threaded_irq(i32 %61, i32* null, i32 %62, i32 %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.lp8788_irq_data* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %52
  %71 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %72 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = call i32 @dev_err(%struct.TYPE_4__* %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %80

76:                                               ; preds = %52
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %79 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %70, %45, %24, %10
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @dev_warn(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local %struct.lp8788_irq_data* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @irq_domain_add_linear(i32, i32, i32*, %struct.lp8788_irq_data*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.lp8788_irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
