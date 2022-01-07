; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_resource.c_nfp_resource_table_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_resource.c_nfp_resource_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp = type { i32 }
%struct.nfp_cpp_mutex = type { i32 }

@NFP_RESOURCE_TBL_TARGET = common dso_local global i32 0, align 4
@NFP_RESOURCE_TBL_BASE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Error: failed to reclaim resource table mutex\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Warning: busted main resource table mutex\0A\00", align 1
@NFP_RESOURCE_TBL_KEY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Error: failed to claim resource table mutex\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NFP_RESOURCE_TBL_ENTRIES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Error: failed to reclaim resource %d mutex\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Warning: busted resource %d mutex\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_resource_table_init(%struct.nfp_cpp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_cpp*, align 8
  %4 = alloca %struct.nfp_cpp_mutex*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %3, align 8
  %8 = load %struct.nfp_cpp*, %struct.nfp_cpp** %3, align 8
  %9 = load i32, i32* @NFP_RESOURCE_TBL_TARGET, align 4
  %10 = load i64, i64* @NFP_RESOURCE_TBL_BASE, align 8
  %11 = call i32 @nfp_cpp_mutex_reclaim(%struct.nfp_cpp* %8, i32 %9, i64 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.nfp_cpp*, %struct.nfp_cpp** %3, align 8
  %16 = call i32 (%struct.nfp_cpp*, i8*, ...) @nfp_err(%struct.nfp_cpp* %15, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %85

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.nfp_cpp*, %struct.nfp_cpp** %3, align 8
  %23 = call i32 (%struct.nfp_cpp*, i8*, ...) @nfp_warn(%struct.nfp_cpp* %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.nfp_cpp*, %struct.nfp_cpp** %3, align 8
  %26 = load i32, i32* @NFP_RESOURCE_TBL_TARGET, align 4
  %27 = load i64, i64* @NFP_RESOURCE_TBL_BASE, align 8
  %28 = load i32, i32* @NFP_RESOURCE_TBL_KEY, align 4
  %29 = call %struct.nfp_cpp_mutex* @nfp_cpp_mutex_alloc(%struct.nfp_cpp* %25, i32 %26, i64 %27, i32 %28)
  store %struct.nfp_cpp_mutex* %29, %struct.nfp_cpp_mutex** %4, align 8
  %30 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %4, align 8
  %31 = icmp ne %struct.nfp_cpp_mutex* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %85

35:                                               ; preds = %24
  %36 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %4, align 8
  %37 = call i64 @nfp_cpp_mutex_lock(%struct.nfp_cpp_mutex* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load %struct.nfp_cpp*, %struct.nfp_cpp** %3, align 8
  %41 = call i32 (%struct.nfp_cpp*, i8*, ...) @nfp_err(%struct.nfp_cpp* %40, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %4, align 8
  %43 = call i32 @nfp_cpp_mutex_free(%struct.nfp_cpp_mutex* %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %85

46:                                               ; preds = %35
  store i32 1, i32* %5, align 4
  br label %47

47:                                               ; preds = %75, %46
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @NFP_RESOURCE_TBL_ENTRIES, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %78

51:                                               ; preds = %47
  %52 = load i64, i64* @NFP_RESOURCE_TBL_BASE, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 4, %54
  %56 = add i64 %52, %55
  store i64 %56, i64* %7, align 8
  %57 = load %struct.nfp_cpp*, %struct.nfp_cpp** %3, align 8
  %58 = load i32, i32* @NFP_RESOURCE_TBL_TARGET, align 4
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @nfp_cpp_mutex_reclaim(%struct.nfp_cpp* %57, i32 %58, i64 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %51
  %64 = load %struct.nfp_cpp*, %struct.nfp_cpp** %3, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 (%struct.nfp_cpp*, i8*, ...) @nfp_err(%struct.nfp_cpp* %64, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %79

67:                                               ; preds = %51
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load %struct.nfp_cpp*, %struct.nfp_cpp** %3, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 (%struct.nfp_cpp*, i8*, ...) @nfp_warn(%struct.nfp_cpp* %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %70, %67
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %47

78:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %78, %63
  %80 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %4, align 8
  %81 = call i32 @nfp_cpp_mutex_unlock(%struct.nfp_cpp_mutex* %80)
  %82 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %4, align 8
  %83 = call i32 @nfp_cpp_mutex_free(%struct.nfp_cpp_mutex* %82)
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %79, %39, %32, %14
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @nfp_cpp_mutex_reclaim(%struct.nfp_cpp*, i32, i64) #1

declare dso_local i32 @nfp_err(%struct.nfp_cpp*, i8*, ...) #1

declare dso_local i32 @nfp_warn(%struct.nfp_cpp*, i8*, ...) #1

declare dso_local %struct.nfp_cpp_mutex* @nfp_cpp_mutex_alloc(%struct.nfp_cpp*, i32, i64, i32) #1

declare dso_local i64 @nfp_cpp_mutex_lock(%struct.nfp_cpp_mutex*) #1

declare dso_local i32 @nfp_cpp_mutex_free(%struct.nfp_cpp_mutex*) #1

declare dso_local i32 @nfp_cpp_mutex_unlock(%struct.nfp_cpp_mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
