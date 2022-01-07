; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_native_irq_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_native_irq_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.cxl*)*, i32 (%struct.cxl*)* }

@.str = private unnamed_addr constant [24 x i8] c"CXL ERROR interrupt %i\0A\00", align 1
@CXL_PSL_ErrIVTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"PSL_ErrIVTE: 0x%016llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"STOPPING CXL TRACE\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @native_irq_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @native_irq_err(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cxl*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.cxl*
  store %struct.cxl* %8, %struct.cxl** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.cxl*, %struct.cxl** %5, align 8
  %12 = load i32, i32* @CXL_PSL_ErrIVTE, align 4
  %13 = call i32 @cxl_p1_read(%struct.cxl* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.cxl*, %struct.cxl** %5, align 8
  %15 = getelementptr inbounds %struct.cxl, %struct.cxl* %14, i32 0, i32 1
  %16 = load i32, i32* %6, align 4
  %17 = call i32 (i32*, i8*, ...) @dev_crit(i32* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load %struct.cxl*, %struct.cxl** %5, align 8
  %19 = getelementptr inbounds %struct.cxl, %struct.cxl* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32 (%struct.cxl*)*, i32 (%struct.cxl*)** %23, align 8
  %25 = icmp ne i32 (%struct.cxl*)* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %2
  %27 = load %struct.cxl*, %struct.cxl** %5, align 8
  %28 = getelementptr inbounds %struct.cxl, %struct.cxl* %27, i32 0, i32 1
  %29 = call i32 (i32*, i8*, ...) @dev_crit(i32* %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.cxl*, %struct.cxl** %5, align 8
  %31 = getelementptr inbounds %struct.cxl, %struct.cxl* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32 (%struct.cxl*)*, i32 (%struct.cxl*)** %35, align 8
  %37 = load %struct.cxl*, %struct.cxl** %5, align 8
  %38 = call i32 %36(%struct.cxl* %37)
  br label %39

39:                                               ; preds = %26, %2
  %40 = load %struct.cxl*, %struct.cxl** %5, align 8
  %41 = getelementptr inbounds %struct.cxl, %struct.cxl* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32 (%struct.cxl*)*, i32 (%struct.cxl*)** %45, align 8
  %47 = icmp ne i32 (%struct.cxl*)* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %39
  %49 = load %struct.cxl*, %struct.cxl** %5, align 8
  %50 = getelementptr inbounds %struct.cxl, %struct.cxl* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32 (%struct.cxl*)*, i32 (%struct.cxl*)** %54, align 8
  %56 = load %struct.cxl*, %struct.cxl** %5, align 8
  %57 = call i32 %55(%struct.cxl* %56)
  br label %58

58:                                               ; preds = %48, %39
  %59 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %59
}

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @cxl_p1_read(%struct.cxl*, i32) #1

declare dso_local i32 @dev_crit(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
