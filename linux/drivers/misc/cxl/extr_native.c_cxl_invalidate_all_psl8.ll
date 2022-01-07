; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_invalidate_all_psl8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_invalidate_all_psl8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cxl*, i32*)* }
%struct.cxl = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@CXL_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"CXL adapter wide TLBIA & SLBIA\0A\00", align 1
@CXL_PSL_AFUSEL = common dso_local global i32 0, align 4
@CXL_PSL_AFUSEL_A = common dso_local global i32 0, align 4
@CXL_PSL_TLBIA = common dso_local global i32 0, align 4
@CXL_TLB_SLB_IQ_ALL = common dso_local global i32 0, align 4
@CXL_TLB_SLB_P = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"WARNING: CXL adapter wide TLBIA timed out!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@cxl_ops = common dso_local global %struct.TYPE_2__* null, align 8
@EIO = common dso_local global i32 0, align 4
@CXL_PSL_SLBIA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"WARNING: CXL adapter wide SLBIA timed out!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_invalidate_all_psl8(%struct.cxl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxl*, align 8
  %4 = alloca i64, align 8
  store %struct.cxl* %0, %struct.cxl** %3, align 8
  %5 = load i64, i64* @jiffies, align 8
  %6 = load i64, i64* @HZ, align 8
  %7 = load i64, i64* @CXL_TIMEOUT, align 8
  %8 = mul i64 %6, %7
  %9 = add i64 %5, %8
  store i64 %9, i64* %4, align 8
  %10 = call i32 @pr_devel(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.cxl*, %struct.cxl** %3, align 8
  %12 = load i32, i32* @CXL_PSL_AFUSEL, align 4
  %13 = load i32, i32* @CXL_PSL_AFUSEL_A, align 4
  %14 = call i32 @cxl_p1_write(%struct.cxl* %11, i32 %12, i32 %13)
  %15 = load %struct.cxl*, %struct.cxl** %3, align 8
  %16 = load i32, i32* @CXL_PSL_TLBIA, align 4
  %17 = load i32, i32* @CXL_TLB_SLB_IQ_ALL, align 4
  %18 = call i32 @cxl_p1_write(%struct.cxl* %15, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %47, %1
  %20 = load %struct.cxl*, %struct.cxl** %3, align 8
  %21 = load i32, i32* @CXL_PSL_TLBIA, align 4
  %22 = call i32 @cxl_p1_read(%struct.cxl* %20, i32 %21)
  %23 = load i32, i32* @CXL_TLB_SLB_P, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %19
  %27 = load i64, i64* @jiffies, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @time_after_eq(i64 %27, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.cxl*, %struct.cxl** %3, align 8
  %33 = getelementptr inbounds %struct.cxl, %struct.cxl* %32, i32 0, i32 0
  %34 = call i32 @dev_warn(i32* %33, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %85

37:                                               ; preds = %26
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cxl_ops, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.cxl*, i32*)*, i32 (%struct.cxl*, i32*)** %39, align 8
  %41 = load %struct.cxl*, %struct.cxl** %3, align 8
  %42 = call i32 %40(%struct.cxl* %41, i32* null)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %85

47:                                               ; preds = %37
  %48 = call i32 (...) @cpu_relax()
  br label %19

49:                                               ; preds = %19
  %50 = load %struct.cxl*, %struct.cxl** %3, align 8
  %51 = load i32, i32* @CXL_PSL_SLBIA, align 4
  %52 = load i32, i32* @CXL_TLB_SLB_IQ_ALL, align 4
  %53 = call i32 @cxl_p1_write(%struct.cxl* %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %82, %49
  %55 = load %struct.cxl*, %struct.cxl** %3, align 8
  %56 = load i32, i32* @CXL_PSL_SLBIA, align 4
  %57 = call i32 @cxl_p1_read(%struct.cxl* %55, i32 %56)
  %58 = load i32, i32* @CXL_TLB_SLB_P, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %54
  %62 = load i64, i64* @jiffies, align 8
  %63 = load i64, i64* %4, align 8
  %64 = call i64 @time_after_eq(i64 %62, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.cxl*, %struct.cxl** %3, align 8
  %68 = getelementptr inbounds %struct.cxl, %struct.cxl* %67, i32 0, i32 0
  %69 = call i32 @dev_warn(i32* %68, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @EBUSY, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %85

72:                                               ; preds = %61
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cxl_ops, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32 (%struct.cxl*, i32*)*, i32 (%struct.cxl*, i32*)** %74, align 8
  %76 = load %struct.cxl*, %struct.cxl** %3, align 8
  %77 = call i32 %75(%struct.cxl* %76, i32* null)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %85

82:                                               ; preds = %72
  %83 = call i32 (...) @cpu_relax()
  br label %54

84:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %79, %66, %44, %31
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @pr_devel(i8*) #1

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
