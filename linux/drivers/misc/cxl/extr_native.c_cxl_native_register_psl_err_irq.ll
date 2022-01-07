; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_native_register_psl_err_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_native_register_psl_err_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl = type { %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"cxl-%s-err\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@native_irq_err = common dso_local global i32 0, align 4
@CXL_PSL_ErrIVTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_native_register_psl_err_irq(%struct.cxl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxl*, align 8
  %4 = alloca i32, align 4
  store %struct.cxl* %0, %struct.cxl** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = load %struct.cxl*, %struct.cxl** %3, align 8
  %7 = getelementptr inbounds %struct.cxl, %struct.cxl* %6, i32 0, i32 2
  %8 = call i32 @dev_name(i32* %7)
  %9 = call i32* @kasprintf(i32 %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.cxl*, %struct.cxl** %3, align 8
  %11 = getelementptr inbounds %struct.cxl, %struct.cxl* %10, i32 0, i32 1
  store i32* %9, i32** %11, align 8
  %12 = load %struct.cxl*, %struct.cxl** %3, align 8
  %13 = getelementptr inbounds %struct.cxl, %struct.cxl* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %54

19:                                               ; preds = %1
  %20 = load %struct.cxl*, %struct.cxl** %3, align 8
  %21 = load i32, i32* @native_irq_err, align 4
  %22 = load %struct.cxl*, %struct.cxl** %3, align 8
  %23 = load %struct.cxl*, %struct.cxl** %3, align 8
  %24 = getelementptr inbounds %struct.cxl, %struct.cxl* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.cxl*, %struct.cxl** %3, align 8
  %28 = getelementptr inbounds %struct.cxl, %struct.cxl* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load %struct.cxl*, %struct.cxl** %3, align 8
  %32 = getelementptr inbounds %struct.cxl, %struct.cxl* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @cxl_register_one_irq(%struct.cxl* %20, i32 %21, %struct.cxl* %22, i32* %26, i32* %30, i32* %33)
  store i32 %34, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %19
  %37 = load %struct.cxl*, %struct.cxl** %3, align 8
  %38 = getelementptr inbounds %struct.cxl, %struct.cxl* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @kfree(i32* %39)
  %41 = load %struct.cxl*, %struct.cxl** %3, align 8
  %42 = getelementptr inbounds %struct.cxl, %struct.cxl* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %54

44:                                               ; preds = %19
  %45 = load %struct.cxl*, %struct.cxl** %3, align 8
  %46 = load i32, i32* @CXL_PSL_ErrIVTE, align 4
  %47 = load %struct.cxl*, %struct.cxl** %3, align 8
  %48 = getelementptr inbounds %struct.cxl, %struct.cxl* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 65535
  %53 = call i32 @cxl_p1_write(%struct.cxl* %45, i32 %46, i32 %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %44, %36, %16
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @cxl_register_one_irq(%struct.cxl*, i32, %struct.cxl*, i32*, i32*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @cxl_p1_write(%struct.cxl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
