; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_main.c_cxl_afu_slbia.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_main.c_cxl_afu_slbia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, %struct.cxl_afu*)* }
%struct.cxl_afu = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@CXL_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"cxl_afu_slbia issuing SLBIA command\0A\00", align 1
@CXL_SLBIA_An = common dso_local global i32 0, align 4
@CXL_TLB_SLB_IQ_ALL = common dso_local global i32 0, align 4
@CXL_TLB_SLB_P = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"WARNING: CXL AFU SLBIA timed out!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@cxl_ops = common dso_local global %struct.TYPE_2__* null, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_afu_slbia(%struct.cxl_afu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxl_afu*, align 8
  %4 = alloca i64, align 8
  store %struct.cxl_afu* %0, %struct.cxl_afu** %3, align 8
  %5 = load i64, i64* @jiffies, align 8
  %6 = load i64, i64* @HZ, align 8
  %7 = load i64, i64* @CXL_TIMEOUT, align 8
  %8 = mul i64 %6, %7
  %9 = add i64 %5, %8
  store i64 %9, i64* %4, align 8
  %10 = call i32 @pr_devel(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %12 = load i32, i32* @CXL_SLBIA_An, align 4
  %13 = load i32, i32* @CXL_TLB_SLB_IQ_ALL, align 4
  %14 = call i32 @cxl_p2n_write(%struct.cxl_afu* %11, i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %46, %1
  %16 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %17 = load i32, i32* @CXL_SLBIA_An, align 4
  %18 = call i32 @cxl_p2n_read(%struct.cxl_afu* %16, i32 %17)
  %19 = load i32, i32* @CXL_TLB_SLB_P, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %15
  %23 = load i64, i64* @jiffies, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i64 @time_after_eq(i64 %23, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %29 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %28, i32 0, i32 1
  %30 = call i32 @dev_warn(i32* %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %49

33:                                               ; preds = %22
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cxl_ops, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (i32, %struct.cxl_afu*)*, i32 (i32, %struct.cxl_afu*)** %35, align 8
  %37 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %38 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %41 = call i32 %36(i32 %39, %struct.cxl_afu* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %33
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %49

46:                                               ; preds = %33
  %47 = call i32 (...) @cpu_relax()
  br label %15

48:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %43, %27
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @pr_devel(i8*) #1

declare dso_local i32 @cxl_p2n_write(%struct.cxl_afu*, i32, i32) #1

declare dso_local i32 @cxl_p2n_read(%struct.cxl_afu*, i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
