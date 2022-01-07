; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_log_device_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_log_device_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Core device errors ( \00", align 1
@SYS_ERR_MASK_META2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"META2 \00", align 1
@SYS_ERR_MASK_META1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"META1 \00", align 1
@SYS_ERR_MASK_PEU = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"PEU \00", align 1
@SYS_ERR_MASK_TXC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"TXC \00", align 1
@SYS_ERR_MASK_RDMC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"RDMC \00", align 1
@SYS_ERR_MASK_TDMC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"TDMC \00", align 1
@SYS_ERR_MASK_ZCP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"ZCP \00", align 1
@SYS_ERR_MASK_FFLP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"FFLP \00", align 1
@SYS_ERR_MASK_IPP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"IPP \00", align 1
@SYS_ERR_MASK_MAC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"MAC \00", align 1
@SYS_ERR_MASK_SMX = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"SMX \00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*, i32)* @niu_log_device_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_log_device_error(%struct.niu* %0, i32 %1) #0 {
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.niu*, %struct.niu** %3, align 8
  %6 = getelementptr inbounds %struct.niu, %struct.niu* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @netdev_err(i32 %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SYS_ERR_MASK_META2, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @pr_cont(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @SYS_ERR_MASK_META1, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 @pr_cont(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %15
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @SYS_ERR_MASK_PEU, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @SYS_ERR_MASK_TXC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @SYS_ERR_MASK_RDMC, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %36
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @SYS_ERR_MASK_TDMC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i32 @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %43
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @SYS_ERR_MASK_ZCP, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %50
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @SYS_ERR_MASK_FFLP, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %57
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @SYS_ERR_MASK_IPP, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = call i32 @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %64
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @SYS_ERR_MASK_MAC, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = call i32 @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %71
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @SYS_ERR_MASK_SMX, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = call i32 @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %78
  %86 = call i32 @pr_cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @pr_cont(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
