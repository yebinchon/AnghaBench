; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_resource.c_nfp_resource_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_resource.c_nfp_resource_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp = type { i32 }
%struct.nfp_resource = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@NFP_MUTEX_WAIT_FIRST_WARN = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"error waiting for resource %s: %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"timeout waiting for resource %s\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@NFP_MUTEX_WAIT_NEXT_WARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"waiting for NFP resource %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"wait for resource %s interrupted\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_resource_wait(%struct.nfp_cpp* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_cpp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nfp_resource*, align 8
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @jiffies, align 4
  %12 = load i32, i32* @NFP_MUTEX_WAIT_FIRST_WARN, align 4
  %13 = load i32, i32* @HZ, align 4
  %14 = mul i32 %12, %13
  %15 = add i32 %11, %14
  %16 = zext i32 %15 to i64
  store i64 %16, i64* %8, align 8
  %17 = load i32, i32* @jiffies, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @HZ, align 4
  %20 = mul i32 %18, %19
  %21 = add i32 %17, %20
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %9, align 8
  br label %23

23:                                               ; preds = %3, %80
  %24 = load %struct.nfp_cpp*, %struct.nfp_cpp** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call %struct.nfp_resource* @nfp_resource_acquire(%struct.nfp_cpp* %24, i8* %25)
  store %struct.nfp_resource* %26, %struct.nfp_resource** %10, align 8
  %27 = load %struct.nfp_resource*, %struct.nfp_resource** %10, align 8
  %28 = call i32 @IS_ERR(%struct.nfp_resource* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load %struct.nfp_resource*, %struct.nfp_resource** %10, align 8
  %32 = call i32 @nfp_resource_release(%struct.nfp_resource* %31)
  store i32 0, i32* %4, align 4
  br label %81

33:                                               ; preds = %23
  %34 = load %struct.nfp_resource*, %struct.nfp_resource** %10, align 8
  %35 = call i32 @PTR_ERR(%struct.nfp_resource* %34)
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.nfp_cpp*, %struct.nfp_cpp** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.nfp_resource*, %struct.nfp_resource** %10, align 8
  %43 = call i32 @PTR_ERR(%struct.nfp_resource* %42)
  %44 = call i32 (%struct.nfp_cpp*, i8*, i8*, ...) @nfp_err(%struct.nfp_cpp* %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %41, i32 %43)
  %45 = load %struct.nfp_resource*, %struct.nfp_resource** %10, align 8
  %46 = call i32 @PTR_ERR(%struct.nfp_resource* %45)
  store i32 %46, i32* %4, align 4
  br label %81

47:                                               ; preds = %33
  %48 = load i64, i64* %9, align 8
  %49 = call i64 @time_is_before_eq_jiffies(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load %struct.nfp_cpp*, %struct.nfp_cpp** %5, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 (%struct.nfp_cpp*, i8*, i8*, ...) @nfp_err(%struct.nfp_cpp* %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* @ETIMEDOUT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %81

57:                                               ; preds = %47
  %58 = load i64, i64* %8, align 8
  %59 = call i64 @time_is_before_eq_jiffies(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load i32, i32* @jiffies, align 4
  %63 = load i32, i32* @NFP_MUTEX_WAIT_NEXT_WARN, align 4
  %64 = load i32, i32* @HZ, align 4
  %65 = mul i32 %63, %64
  %66 = add i32 %62, %65
  %67 = zext i32 %66 to i64
  store i64 %67, i64* %8, align 8
  %68 = load %struct.nfp_cpp*, %struct.nfp_cpp** %5, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @nfp_info(%struct.nfp_cpp* %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %61, %57
  %72 = call i64 @msleep_interruptible(i32 10)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load %struct.nfp_cpp*, %struct.nfp_cpp** %5, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 (%struct.nfp_cpp*, i8*, i8*, ...) @nfp_err(%struct.nfp_cpp* %75, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %76)
  %78 = load i32, i32* @ERESTARTSYS, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %81

80:                                               ; preds = %71
  br label %23

81:                                               ; preds = %74, %51, %39, %30
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.nfp_resource* @nfp_resource_acquire(%struct.nfp_cpp*, i8*) #1

declare dso_local i32 @IS_ERR(%struct.nfp_resource*) #1

declare dso_local i32 @nfp_resource_release(%struct.nfp_resource*) #1

declare dso_local i32 @PTR_ERR(%struct.nfp_resource*) #1

declare dso_local i32 @nfp_err(%struct.nfp_cpp*, i8*, i8*, ...) #1

declare dso_local i64 @time_is_before_eq_jiffies(i64) #1

declare dso_local i32 @nfp_info(%struct.nfp_cpp*, i8*, i8*) #1

declare dso_local i64 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
