; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_native_register_psl_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_native_register_psl_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_afu = type { i32*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"cxl-%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@native_irq_multiplexed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_native_register_psl_irq(%struct.cxl_afu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxl_afu*, align 8
  %4 = alloca i32, align 4
  store %struct.cxl_afu* %0, %struct.cxl_afu** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %7 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %6, i32 0, i32 3
  %8 = call i32 @dev_name(i32* %7)
  %9 = call i32* @kasprintf(i32 %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %11 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %10, i32 0, i32 0
  store i32* %9, i32** %11, align 8
  %12 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %13 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %47

19:                                               ; preds = %1
  %20 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %21 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @native_irq_multiplexed, align 4
  %24 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %25 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %26 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %30 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %34 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @cxl_register_one_irq(i32 %22, i32 %23, %struct.cxl_afu* %24, i32* %28, i32* %32, i32* %35)
  store i32 %36, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %19
  %39 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %40 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @kfree(i32* %41)
  %43 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %44 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %38, %19
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %16
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @cxl_register_one_irq(i32, i32, %struct.cxl_afu*, i32*, i32*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
