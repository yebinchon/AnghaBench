; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_data_cache_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_data_cache_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.cxl*, i32*)* }
%struct.cxl = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@CXL_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"No PSL data cache. Ignoring cache flush req.\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Flushing data cache\0A\00", align 1
@CXL_PSL_Control = common dso_local global i32 0, align 4
@CXL_PSL_Control_Fr = common dso_local global i32 0, align 4
@CXL_PSL_Control_Fs_MASK = common dso_local global i32 0, align 4
@CXL_PSL_Control_Fs_Complete = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"WARNING: cache flush timed out!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@cxl_ops = common dso_local global %struct.TYPE_4__* null, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"WARNING: link down when flushing cache\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_data_cache_flush(%struct.cxl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.cxl* %0, %struct.cxl** %3, align 8
  %6 = load i64, i64* @jiffies, align 8
  %7 = load i64, i64* @HZ, align 8
  %8 = load i64, i64* @CXL_TIMEOUT, align 8
  %9 = mul i64 %7, %8
  %10 = add i64 %6, %9
  store i64 %10, i64* %5, align 8
  %11 = load %struct.cxl*, %struct.cxl** %3, align 8
  %12 = getelementptr inbounds %struct.cxl, %struct.cxl* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 @pr_devel(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %78

19:                                               ; preds = %1
  %20 = call i32 @pr_devel(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.cxl*, %struct.cxl** %3, align 8
  %22 = load i32, i32* @CXL_PSL_Control, align 4
  %23 = call i32 @cxl_p1_read(%struct.cxl* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @CXL_PSL_Control_Fr, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load %struct.cxl*, %struct.cxl** %3, align 8
  %28 = load i32, i32* @CXL_PSL_Control, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @cxl_p1_write(%struct.cxl* %27, i32 %28, i32 %29)
  %31 = load %struct.cxl*, %struct.cxl** %3, align 8
  %32 = load i32, i32* @CXL_PSL_Control, align 4
  %33 = call i32 @cxl_p1_read(%struct.cxl* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %64, %19
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @CXL_PSL_Control_Fs_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @CXL_PSL_Control_Fs_Complete, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %69

40:                                               ; preds = %34
  %41 = load i64, i64* @jiffies, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i64 @time_after_eq(i64 %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.cxl*, %struct.cxl** %3, align 8
  %47 = getelementptr inbounds %struct.cxl, %struct.cxl* %46, i32 0, i32 0
  %48 = call i32 @dev_warn(i32* %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %78

51:                                               ; preds = %40
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cxl_ops, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32 (%struct.cxl*, i32*)*, i32 (%struct.cxl*, i32*)** %53, align 8
  %55 = load %struct.cxl*, %struct.cxl** %3, align 8
  %56 = call i32 %54(%struct.cxl* %55, i32* null)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %51
  %59 = load %struct.cxl*, %struct.cxl** %3, align 8
  %60 = getelementptr inbounds %struct.cxl, %struct.cxl* %59, i32 0, i32 0
  %61 = call i32 @dev_warn(i32* %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %78

64:                                               ; preds = %51
  %65 = call i32 (...) @cpu_relax()
  %66 = load %struct.cxl*, %struct.cxl** %3, align 8
  %67 = load i32, i32* @CXL_PSL_Control, align 4
  %68 = call i32 @cxl_p1_read(%struct.cxl* %66, i32 %67)
  store i32 %68, i32* %4, align 4
  br label %34

69:                                               ; preds = %34
  %70 = load i32, i32* @CXL_PSL_Control_Fr, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %4, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %4, align 4
  %74 = load %struct.cxl*, %struct.cxl** %3, align 8
  %75 = load i32, i32* @CXL_PSL_Control, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @cxl_p1_write(%struct.cxl* %74, i32 %75, i32 %76)
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %69, %58, %45, %17
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @pr_devel(i8*) #1

declare dso_local i32 @cxl_p1_read(%struct.cxl*, i32) #1

declare dso_local i32 @cxl_p1_write(%struct.cxl*, i32, i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
