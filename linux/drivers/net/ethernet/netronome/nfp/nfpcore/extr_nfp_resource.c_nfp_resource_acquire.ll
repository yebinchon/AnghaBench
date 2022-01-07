; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_resource.c_nfp_resource_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_resource.c_nfp_resource_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_resource = type { i32 }
%struct.nfp_cpp = type { i32 }
%struct.nfp_cpp_mutex = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@NFP_MUTEX_WAIT_FIRST_WARN = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@NFP_MUTEX_WAIT_ERROR = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFP_RESOURCE_ENTRY_NAME_SZ = common dso_local global i32 0, align 4
@NFP_RESOURCE_TBL_TARGET = common dso_local global i32 0, align 4
@NFP_RESOURCE_TBL_BASE = common dso_local global i32 0, align 4
@NFP_RESOURCE_TBL_KEY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@NFP_MUTEX_WAIT_NEXT_WARN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Warning: waiting for NFP resource %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Error: resource %s timed out\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfp_resource* @nfp_resource_acquire(%struct.nfp_cpp* %0, i8* %1) #0 {
  %3 = alloca %struct.nfp_resource*, align 8
  %4 = alloca %struct.nfp_cpp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nfp_cpp_mutex*, align 8
  %9 = alloca %struct.nfp_resource*, align 8
  %10 = alloca i32, align 4
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i64, i64* @jiffies, align 8
  %12 = load i64, i64* @NFP_MUTEX_WAIT_FIRST_WARN, align 8
  %13 = load i64, i64* @HZ, align 8
  %14 = mul i64 %12, %13
  %15 = add i64 %11, %14
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* @jiffies, align 8
  %17 = load i64, i64* @NFP_MUTEX_WAIT_ERROR, align 8
  %18 = load i64, i64* @HZ, align 8
  %19 = mul i64 %17, %18
  %20 = add i64 %16, %19
  store i64 %20, i64* %7, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.nfp_resource* @kzalloc(i32 4, i32 %21)
  store %struct.nfp_resource* %22, %struct.nfp_resource** %9, align 8
  %23 = load %struct.nfp_resource*, %struct.nfp_resource** %9, align 8
  %24 = icmp ne %struct.nfp_resource* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.nfp_resource* @ERR_PTR(i32 %27)
  store %struct.nfp_resource* %28, %struct.nfp_resource** %3, align 8
  br label %106

29:                                               ; preds = %2
  %30 = load %struct.nfp_resource*, %struct.nfp_resource** %9, align 8
  %31 = getelementptr inbounds %struct.nfp_resource, %struct.nfp_resource* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* @NFP_RESOURCE_ENTRY_NAME_SZ, align 4
  %35 = call i32 @strncpy(i32 %32, i8* %33, i32 %34)
  %36 = load %struct.nfp_cpp*, %struct.nfp_cpp** %4, align 8
  %37 = load i32, i32* @NFP_RESOURCE_TBL_TARGET, align 4
  %38 = load i32, i32* @NFP_RESOURCE_TBL_BASE, align 4
  %39 = load i32, i32* @NFP_RESOURCE_TBL_KEY, align 4
  %40 = call %struct.nfp_cpp_mutex* @nfp_cpp_mutex_alloc(%struct.nfp_cpp* %36, i32 %37, i32 %38, i32 %39)
  store %struct.nfp_cpp_mutex* %40, %struct.nfp_cpp_mutex** %8, align 8
  %41 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %8, align 8
  %42 = icmp ne %struct.nfp_cpp_mutex* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %29
  %44 = load %struct.nfp_resource*, %struct.nfp_resource** %9, align 8
  %45 = call i32 @kfree(%struct.nfp_resource* %44)
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.nfp_resource* @ERR_PTR(i32 %47)
  store %struct.nfp_resource* %48, %struct.nfp_resource** %3, align 8
  br label %106

49:                                               ; preds = %29
  br label %50

50:                                               ; preds = %94, %49
  %51 = load %struct.nfp_cpp*, %struct.nfp_cpp** %4, align 8
  %52 = load %struct.nfp_resource*, %struct.nfp_resource** %9, align 8
  %53 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %8, align 8
  %54 = call i32 @nfp_resource_try_acquire(%struct.nfp_cpp* %51, %struct.nfp_resource* %52, %struct.nfp_cpp_mutex* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  br label %95

58:                                               ; preds = %50
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %99

64:                                               ; preds = %58
  %65 = call i32 @msleep_interruptible(i32 1)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* @ERESTARTSYS, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %10, align 4
  br label %99

71:                                               ; preds = %64
  %72 = load i64, i64* %6, align 8
  %73 = call i64 @time_is_before_eq_jiffies(i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load i64, i64* @jiffies, align 8
  %77 = load i64, i64* @NFP_MUTEX_WAIT_NEXT_WARN, align 8
  %78 = load i64, i64* @HZ, align 8
  %79 = mul i64 %77, %78
  %80 = add i64 %76, %79
  store i64 %80, i64* %6, align 8
  %81 = load %struct.nfp_cpp*, %struct.nfp_cpp** %4, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 @nfp_warn(%struct.nfp_cpp* %81, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %75, %71
  %85 = load i64, i64* %7, align 8
  %86 = call i64 @time_is_before_eq_jiffies(i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load %struct.nfp_cpp*, %struct.nfp_cpp** %4, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = call i32 @nfp_err(%struct.nfp_cpp* %89, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %90)
  %92 = load i32, i32* @EBUSY, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %10, align 4
  br label %99

94:                                               ; preds = %84
  br label %50

95:                                               ; preds = %57
  %96 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %8, align 8
  %97 = call i32 @nfp_cpp_mutex_free(%struct.nfp_cpp_mutex* %96)
  %98 = load %struct.nfp_resource*, %struct.nfp_resource** %9, align 8
  store %struct.nfp_resource* %98, %struct.nfp_resource** %3, align 8
  br label %106

99:                                               ; preds = %88, %68, %63
  %100 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %8, align 8
  %101 = call i32 @nfp_cpp_mutex_free(%struct.nfp_cpp_mutex* %100)
  %102 = load %struct.nfp_resource*, %struct.nfp_resource** %9, align 8
  %103 = call i32 @kfree(%struct.nfp_resource* %102)
  %104 = load i32, i32* %10, align 4
  %105 = call %struct.nfp_resource* @ERR_PTR(i32 %104)
  store %struct.nfp_resource* %105, %struct.nfp_resource** %3, align 8
  br label %106

106:                                              ; preds = %99, %95, %43, %25
  %107 = load %struct.nfp_resource*, %struct.nfp_resource** %3, align 8
  ret %struct.nfp_resource* %107
}

declare dso_local %struct.nfp_resource* @kzalloc(i32, i32) #1

declare dso_local %struct.nfp_resource* @ERR_PTR(i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local %struct.nfp_cpp_mutex* @nfp_cpp_mutex_alloc(%struct.nfp_cpp*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.nfp_resource*) #1

declare dso_local i32 @nfp_resource_try_acquire(%struct.nfp_cpp*, %struct.nfp_resource*, %struct.nfp_cpp_mutex*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i64 @time_is_before_eq_jiffies(i64) #1

declare dso_local i32 @nfp_warn(%struct.nfp_cpp*, i8*, i8*) #1

declare dso_local i32 @nfp_err(%struct.nfp_cpp*, i8*, i8*) #1

declare dso_local i32 @nfp_cpp_mutex_free(%struct.nfp_cpp_mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
