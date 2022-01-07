; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_mutex.c_nfp_cpp_mutex_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_mutex.c_nfp_cpp_mutex_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp_mutex = type { i32, i32, i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@NFP_MUTEX_WAIT_FIRST_WARN = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@NFP_MUTEX_WAIT_ERROR = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"interrupted waiting for NFP mutex\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@NFP_MUTEX_WAIT_NEXT_WARN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [73 x i8] c"Warning: waiting for NFP mutex [depth:%hd target:%d addr:%llx key:%08x]\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Error: mutex wait timed out\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_cpp_mutex_lock(%struct.nfp_cpp_mutex* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_cpp_mutex*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nfp_cpp_mutex* %0, %struct.nfp_cpp_mutex** %3, align 8
  %8 = load i64, i64* @jiffies, align 8
  %9 = load i64, i64* @NFP_MUTEX_WAIT_FIRST_WARN, align 8
  %10 = load i64, i64* @HZ, align 8
  %11 = mul i64 %9, %10
  %12 = add i64 %8, %11
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* @jiffies, align 8
  %14 = load i64, i64* @NFP_MUTEX_WAIT_ERROR, align 8
  %15 = load i64, i64* @HZ, align 8
  %16 = mul i64 %14, %15
  %17 = add i64 %13, %16
  store i64 %17, i64* %5, align 8
  store i32 1, i32* %6, align 4
  br label %18

18:                                               ; preds = %75, %1
  %19 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %20 = call i32 @nfp_cpp_mutex_trylock(%struct.nfp_cpp_mutex* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %76

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @msleep_interruptible(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %33 = getelementptr inbounds %struct.nfp_cpp_mutex, %struct.nfp_cpp_mutex* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @nfp_info(i32 %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ERESTARTSYS, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %78

38:                                               ; preds = %26
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @time_is_before_eq_jiffies(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %38
  %43 = load i64, i64* @jiffies, align 8
  %44 = load i64, i64* @NFP_MUTEX_WAIT_NEXT_WARN, align 8
  %45 = load i64, i64* @HZ, align 8
  %46 = mul i64 %44, %45
  %47 = add i64 %43, %46
  store i64 %47, i64* %4, align 8
  %48 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %49 = getelementptr inbounds %struct.nfp_cpp_mutex, %struct.nfp_cpp_mutex* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %52 = getelementptr inbounds %struct.nfp_cpp_mutex, %struct.nfp_cpp_mutex* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %55 = getelementptr inbounds %struct.nfp_cpp_mutex, %struct.nfp_cpp_mutex* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %58 = getelementptr inbounds %struct.nfp_cpp_mutex, %struct.nfp_cpp_mutex* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %61 = getelementptr inbounds %struct.nfp_cpp_mutex, %struct.nfp_cpp_mutex* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @nfp_warn(i32 %50, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %56, i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %42, %38
  %65 = load i64, i64* %5, align 8
  %66 = call i64 @time_is_before_eq_jiffies(i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %70 = getelementptr inbounds %struct.nfp_cpp_mutex, %struct.nfp_cpp_mutex* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @nfp_err(i32 %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* @EBUSY, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %78

75:                                               ; preds = %64
  br label %18

76:                                               ; preds = %25
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %68, %31
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @nfp_cpp_mutex_trylock(%struct.nfp_cpp_mutex*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @nfp_info(i32, i8*) #1

declare dso_local i64 @time_is_before_eq_jiffies(i64) #1

declare dso_local i32 @nfp_warn(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @nfp_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
