; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_native_irq_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_native_irq_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_context = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CXL_PSL_PEHandle_An = common dso_local global i32 0, align 4
@CXL_PSL_DSISR_An = common dso_local global i32 0, align 4
@CXL_PSL_DSISR_PENDING = common dso_local global i32 0, align 4
@CXL_PSL9_DSISR_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"WARNING: waiting on DSI for PE %i DSISR %016llx!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxl_context*)* @native_irq_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @native_irq_wait(%struct.cxl_context* %0) #0 {
  %2 = alloca %struct.cxl_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cxl_context* %0, %struct.cxl_context** %2, align 8
  store i32 1000, i32* %4, align 4
  br label %6

6:                                                ; preds = %46, %1
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %4, align 4
  %9 = icmp ne i32 %7, 0
  br i1 %9, label %10, label %48

10:                                               ; preds = %6
  %11 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %12 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* @CXL_PSL_PEHandle_An, align 4
  %15 = call i32 @cxl_p2n_read(%struct.TYPE_2__* %13, i32 %14)
  %16 = and i32 %15, 65535
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %19 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %10
  br label %56

23:                                               ; preds = %10
  %24 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %25 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* @CXL_PSL_DSISR_An, align 4
  %28 = call i32 @cxl_p2n_read(%struct.TYPE_2__* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = call i64 (...) @cxl_is_power8()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @CXL_PSL_DSISR_PENDING, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %56

37:                                               ; preds = %31, %23
  %38 = call i64 (...) @cxl_is_power9()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @CXL_PSL9_DSISR_PENDING, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %56

46:                                               ; preds = %40, %37
  %47 = call i32 @msleep(i32 1)
  br label %6

48:                                               ; preds = %6
  %49 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %50 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @dev_warn(i32* %52, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %48, %45, %36, %22
  ret void
}

declare dso_local i32 @cxl_p2n_read(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @cxl_is_power8(...) #1

declare dso_local i64 @cxl_is_power9(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
