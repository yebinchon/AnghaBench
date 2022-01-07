; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_afu_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_afu_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, %struct.cxl_afu*)* }
%struct.cxl_afu = type { i32, i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@CXL_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"AFU command starting: %llx\0A\00", align 1
@CXL_AFU_Cntl_An = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"WARNING: AFU control timed out!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@cxl_ops = common dso_local global %struct.TYPE_2__* null, align 8
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"AFU control... (0x%016llx)\0A\00", align 1
@CXL_AFU_Cntl_An_RA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"AFU command complete: %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl_afu*, i32, i32, i32, i32, i32)* @afu_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afu_control(%struct.cxl_afu* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.cxl_afu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.cxl_afu* %0, %struct.cxl_afu** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i64, i64* @jiffies, align 8
  %17 = load i64, i64* @HZ, align 8
  %18 = load i64, i64* @CXL_TIMEOUT, align 8
  %19 = mul i64 %17, %18
  %20 = add i64 %16, %19
  store i64 %20, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %21 = load %struct.cxl_afu*, %struct.cxl_afu** %7, align 8
  %22 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %21, i32 0, i32 1
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @pr_devel(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.cxl_afu*, %struct.cxl_afu** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @trace_cxl_afu_ctrl(%struct.cxl_afu* %26, i32 %27)
  %29 = load %struct.cxl_afu*, %struct.cxl_afu** %7, align 8
  %30 = load i32, i32* @CXL_AFU_Cntl_An, align 4
  %31 = call i32 @cxl_p2n_read(%struct.cxl_afu* %29, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load %struct.cxl_afu*, %struct.cxl_afu** %7, align 8
  %33 = load i32, i32* @CXL_AFU_Cntl_An, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %9, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @cxl_p2n_write(%struct.cxl_afu* %32, i32 %33, i32 %39)
  %41 = load %struct.cxl_afu*, %struct.cxl_afu** %7, align 8
  %42 = load i32, i32* @CXL_AFU_Cntl_An, align 4
  %43 = call i32 @cxl_p2n_read(%struct.cxl_afu* %41, i32 %42)
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %77, %6
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %11, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %86

50:                                               ; preds = %44
  %51 = load i64, i64* @jiffies, align 8
  %52 = load i64, i64* %14, align 8
  %53 = call i64 @time_after_eq(i64 %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.cxl_afu*, %struct.cxl_afu** %7, align 8
  %57 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %56, i32 0, i32 3
  %58 = call i32 @dev_warn(i32* %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %15, align 4
  br label %105

61:                                               ; preds = %50
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cxl_ops, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32 (i32, %struct.cxl_afu*)*, i32 (i32, %struct.cxl_afu*)** %63, align 8
  %65 = load %struct.cxl_afu*, %struct.cxl_afu** %7, align 8
  %66 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.cxl_afu*, %struct.cxl_afu** %7, align 8
  %69 = call i32 %64(i32 %67, %struct.cxl_afu* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %61
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.cxl_afu*, %struct.cxl_afu** %7, align 8
  %74 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %15, align 4
  br label %105

77:                                               ; preds = %61
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @pr_devel_ratelimited(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = call i32 (...) @cpu_relax()
  %83 = load %struct.cxl_afu*, %struct.cxl_afu** %7, align 8
  %84 = load i32, i32* @CXL_AFU_Cntl_An, align 4
  %85 = call i32 @cxl_p2n_read(%struct.cxl_afu* %83, i32 %84)
  store i32 %85, i32* %13, align 4
  br label %44

86:                                               ; preds = %44
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @CXL_AFU_Cntl_An_RA, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load %struct.cxl_afu*, %struct.cxl_afu** %7, align 8
  %93 = load i32, i32* @CXL_AFU_Cntl_An, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @CXL_AFU_Cntl_An_RA, align 4
  %96 = xor i32 %95, -1
  %97 = and i32 %94, %96
  %98 = call i32 @cxl_p2n_write(%struct.cxl_afu* %92, i32 %93, i32 %97)
  br label %99

99:                                               ; preds = %91, %86
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @pr_devel(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.cxl_afu*, %struct.cxl_afu** %7, align 8
  %104 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %99, %71, %55
  %106 = load %struct.cxl_afu*, %struct.cxl_afu** %7, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @trace_cxl_afu_ctrl_done(%struct.cxl_afu* %106, i32 %107, i32 %108)
  %110 = load %struct.cxl_afu*, %struct.cxl_afu** %7, align 8
  %111 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %110, i32 0, i32 1
  %112 = call i32 @spin_unlock(i32* %111)
  %113 = load i32, i32* %15, align 4
  ret i32 %113
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pr_devel(i8*, i32) #1

declare dso_local i32 @trace_cxl_afu_ctrl(%struct.cxl_afu*, i32) #1

declare dso_local i32 @cxl_p2n_read(%struct.cxl_afu*, i32) #1

declare dso_local i32 @cxl_p2n_write(%struct.cxl_afu*, i32, i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @pr_devel_ratelimited(i8*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @trace_cxl_afu_ctrl_done(%struct.cxl_afu*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
