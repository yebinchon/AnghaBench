; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_mutex.c_nfp_cpp_mutex_trylock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_mutex.c_nfp_cpp_mutex_trylock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp_mutex = type { i32, i64, i64, %struct.nfp_cpp*, i32 }
%struct.nfp_cpp = type { i32 }

@NFP_MUTEX_DEPTH_MAX = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_cpp_mutex_trylock(%struct.nfp_cpp_mutex* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_cpp_mutex*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nfp_cpp*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.nfp_cpp_mutex* %0, %struct.nfp_cpp_mutex** %3, align 8
  %12 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %13 = getelementptr inbounds %struct.nfp_cpp_mutex, %struct.nfp_cpp_mutex* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @NFP_CPP_ID(i32 %14, i32 4, i32 0)
  store i64 %15, i64* %4, align 8
  %16 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %17 = getelementptr inbounds %struct.nfp_cpp_mutex, %struct.nfp_cpp_mutex* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @NFP_CPP_ID(i32 %18, i32 5, i32 3)
  store i64 %19, i64* %5, align 8
  %20 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %21 = getelementptr inbounds %struct.nfp_cpp_mutex, %struct.nfp_cpp_mutex* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @NFP_CPP_ID(i32 %22, i32 3, i32 0)
  store i64 %23, i64* %6, align 8
  %24 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %25 = getelementptr inbounds %struct.nfp_cpp_mutex, %struct.nfp_cpp_mutex* %24, i32 0, i32 3
  %26 = load %struct.nfp_cpp*, %struct.nfp_cpp** %25, align 8
  store %struct.nfp_cpp* %26, %struct.nfp_cpp** %7, align 8
  %27 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %28 = getelementptr inbounds %struct.nfp_cpp_mutex, %struct.nfp_cpp_mutex* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %1
  %32 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %33 = getelementptr inbounds %struct.nfp_cpp_mutex, %struct.nfp_cpp_mutex* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @NFP_MUTEX_DEPTH_MAX, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @E2BIG, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %111

40:                                               ; preds = %31
  %41 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %42 = getelementptr inbounds %struct.nfp_cpp_mutex, %struct.nfp_cpp_mutex* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  store i32 0, i32* %2, align 4
  br label %111

45:                                               ; preds = %1
  %46 = load %struct.nfp_cpp*, %struct.nfp_cpp** %7, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %49 = getelementptr inbounds %struct.nfp_cpp_mutex, %struct.nfp_cpp_mutex* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 4
  %52 = call i32 @nfp_cpp_readl(%struct.nfp_cpp* %46, i64 %47, i64 %51, i64* %8)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %2, align 4
  br label %111

57:                                               ; preds = %45
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %60 = getelementptr inbounds %struct.nfp_cpp_mutex, %struct.nfp_cpp_mutex* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @EPERM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %111

66:                                               ; preds = %57
  %67 = load %struct.nfp_cpp*, %struct.nfp_cpp** %7, align 8
  %68 = call i32 @nfp_cpp_interface(%struct.nfp_cpp* %67)
  %69 = call i64 @nfp_mutex_locked(i32 %68)
  store i64 %69, i64* %9, align 8
  %70 = load %struct.nfp_cpp*, %struct.nfp_cpp** %7, align 8
  %71 = load i64, i64* %5, align 8
  %72 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %73 = getelementptr inbounds %struct.nfp_cpp_mutex, %struct.nfp_cpp_mutex* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @nfp_cpp_readl(%struct.nfp_cpp* %70, i64 %71, i64 %74, i64* %10)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %66
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %2, align 4
  br label %111

80:                                               ; preds = %66
  %81 = load i64, i64* %10, align 8
  %82 = call i64 @nfp_mutex_is_unlocked(i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %80
  %85 = load %struct.nfp_cpp*, %struct.nfp_cpp** %7, align 8
  %86 = load i64, i64* %4, align 8
  %87 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %88 = getelementptr inbounds %struct.nfp_cpp_mutex, %struct.nfp_cpp_mutex* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @nfp_cpp_writel(%struct.nfp_cpp* %85, i64 %86, i64 %89, i64 %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %84
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %2, align 4
  br label %111

96:                                               ; preds = %84
  %97 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %98 = getelementptr inbounds %struct.nfp_cpp_mutex, %struct.nfp_cpp_mutex* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  store i32 0, i32* %2, align 4
  br label %111

99:                                               ; preds = %80
  %100 = load i64, i64* %10, align 8
  %101 = call i64 @nfp_mutex_is_locked(i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* @EBUSY, align 4
  %105 = sub nsw i32 0, %104
  br label %109

106:                                              ; preds = %99
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  br label %109

109:                                              ; preds = %106, %103
  %110 = phi i32 [ %105, %103 ], [ %108, %106 ]
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %109, %96, %94, %78, %63, %55, %40, %37
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i64 @NFP_CPP_ID(i32, i32, i32) #1

declare dso_local i32 @nfp_cpp_readl(%struct.nfp_cpp*, i64, i64, i64*) #1

declare dso_local i64 @nfp_mutex_locked(i32) #1

declare dso_local i32 @nfp_cpp_interface(%struct.nfp_cpp*) #1

declare dso_local i64 @nfp_mutex_is_unlocked(i64) #1

declare dso_local i32 @nfp_cpp_writel(%struct.nfp_cpp*, i64, i64, i64) #1

declare dso_local i64 @nfp_mutex_is_locked(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
