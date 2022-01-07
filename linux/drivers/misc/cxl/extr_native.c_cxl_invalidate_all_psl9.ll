; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_invalidate_all_psl9.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_invalidate_all_psl9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cxl*, i32*)* }
%struct.cxl = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@CXL_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"CXL adapter - invalidation of all ERAT entries\0A\00", align 1
@CXL_XSL9_IERAT_IALL = common dso_local global i32 0, align 4
@CXL_XSL9_IERAT_INVR = common dso_local global i32 0, align 4
@CXL_XSL9_IERAT = common dso_local global i32 0, align 4
@CXL_XSL9_IERAT_IINPROG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"WARNING: CXL adapter invalidation of all ERAT entries timed out!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@cxl_ops = common dso_local global %struct.TYPE_2__* null, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_invalidate_all_psl9(%struct.cxl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxl*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.cxl* %0, %struct.cxl** %3, align 8
  %6 = load i64, i64* @jiffies, align 8
  %7 = load i64, i64* @HZ, align 8
  %8 = load i64, i64* @CXL_TIMEOUT, align 8
  %9 = mul i64 %7, %8
  %10 = add i64 %6, %9
  store i64 %10, i64* %4, align 8
  %11 = call i32 @pr_devel(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @CXL_XSL9_IERAT_IALL, align 4
  store i32 %12, i32* %5, align 4
  %13 = call i64 (...) @radix_enabled()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @CXL_XSL9_IERAT_INVR, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.cxl*, %struct.cxl** %3, align 8
  %21 = load i32, i32* @CXL_XSL9_IERAT, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @cxl_p1_write(%struct.cxl* %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %52, %19
  %25 = load %struct.cxl*, %struct.cxl** %3, align 8
  %26 = load i32, i32* @CXL_XSL9_IERAT, align 4
  %27 = call i32 @cxl_p1_read(%struct.cxl* %25, i32 %26)
  %28 = load i32, i32* @CXL_XSL9_IERAT_IINPROG, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %24
  %32 = load i64, i64* @jiffies, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i64 @time_after_eq(i64 %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.cxl*, %struct.cxl** %3, align 8
  %38 = getelementptr inbounds %struct.cxl, %struct.cxl* %37, i32 0, i32 0
  %39 = call i32 @dev_warn(i32* %38, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %55

42:                                               ; preds = %31
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cxl_ops, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.cxl*, i32*)*, i32 (%struct.cxl*, i32*)** %44, align 8
  %46 = load %struct.cxl*, %struct.cxl** %3, align 8
  %47 = call i32 %45(%struct.cxl* %46, i32* null)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %55

52:                                               ; preds = %42
  %53 = call i32 (...) @cpu_relax()
  br label %24

54:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %49, %36
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @pr_devel(i8*) #1

declare dso_local i64 @radix_enabled(...) #1

declare dso_local i32 @cxl_p1_write(%struct.cxl*, i32, i32) #1

declare dso_local i32 @cxl_p1_read(%struct.cxl*, i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
