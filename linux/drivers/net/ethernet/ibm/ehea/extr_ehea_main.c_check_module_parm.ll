; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_check_module_parm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_check_module_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rq1_entries = common dso_local global i64 0, align 8
@EHEA_MIN_ENTRIES_QP = common dso_local global i64 0, align 8
@EHEA_MAX_ENTRIES_RQ1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Bad parameter: rq1_entries\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@rq2_entries = common dso_local global i64 0, align 8
@EHEA_MAX_ENTRIES_RQ2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Bad parameter: rq2_entries\0A\00", align 1
@rq3_entries = common dso_local global i64 0, align 8
@EHEA_MAX_ENTRIES_RQ3 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Bad parameter: rq3_entries\0A\00", align 1
@sq_entries = common dso_local global i64 0, align 8
@EHEA_MAX_ENTRIES_SQ = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Bad parameter: sq_entries\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_module_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_module_parm() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i64, i64* @rq1_entries, align 8
  %3 = load i64, i64* @EHEA_MIN_ENTRIES_QP, align 8
  %4 = icmp slt i64 %2, %3
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = load i64, i64* @rq1_entries, align 8
  %7 = load i64, i64* @EHEA_MAX_ENTRIES_RQ1, align 8
  %8 = icmp sgt i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %5, %0
  %10 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %1, align 4
  br label %13

13:                                               ; preds = %9, %5
  %14 = load i64, i64* @rq2_entries, align 8
  %15 = load i64, i64* @EHEA_MIN_ENTRIES_QP, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* @rq2_entries, align 8
  %19 = load i64, i64* @EHEA_MAX_ENTRIES_RQ2, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17, %13
  %22 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i64, i64* @rq3_entries, align 8
  %27 = load i64, i64* @EHEA_MIN_ENTRIES_QP, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* @rq3_entries, align 8
  %31 = load i64, i64* @EHEA_MAX_ENTRIES_RQ3, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29, %25
  %34 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i64, i64* @sq_entries, align 8
  %39 = load i64, i64* @EHEA_MIN_ENTRIES_QP, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* @sq_entries, align 8
  %43 = load i64, i64* @EHEA_MAX_ENTRIES_SQ, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41, %37
  %46 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %1, align 4
  br label %49

49:                                               ; preds = %45, %41
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
