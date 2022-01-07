; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_mutex.c_nfp_cpp_mutex_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_mutex.c_nfp_cpp_mutex_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp_mutex = type { i32, i64, i64, %struct.nfp_cpp*, i32 }
%struct.nfp_cpp = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_cpp_mutex_unlock(%struct.nfp_cpp_mutex* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_cpp_mutex*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.nfp_cpp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nfp_cpp_mutex* %0, %struct.nfp_cpp_mutex** %3, align 8
  %11 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %12 = getelementptr inbounds %struct.nfp_cpp_mutex, %struct.nfp_cpp_mutex* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @NFP_CPP_ID(i32 %13, i32 4, i32 0)
  store i64 %14, i64* %4, align 8
  %15 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %16 = getelementptr inbounds %struct.nfp_cpp_mutex, %struct.nfp_cpp_mutex* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @NFP_CPP_ID(i32 %17, i32 3, i32 0)
  store i64 %18, i64* %5, align 8
  %19 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %20 = getelementptr inbounds %struct.nfp_cpp_mutex, %struct.nfp_cpp_mutex* %19, i32 0, i32 3
  %21 = load %struct.nfp_cpp*, %struct.nfp_cpp** %20, align 8
  store %struct.nfp_cpp* %21, %struct.nfp_cpp** %6, align 8
  %22 = load %struct.nfp_cpp*, %struct.nfp_cpp** %6, align 8
  %23 = call i32 @nfp_cpp_interface(%struct.nfp_cpp* %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %25 = getelementptr inbounds %struct.nfp_cpp_mutex, %struct.nfp_cpp_mutex* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %30 = getelementptr inbounds %struct.nfp_cpp_mutex, %struct.nfp_cpp_mutex* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 8
  store i32 0, i32* %2, align 4
  br label %93

33:                                               ; preds = %1
  %34 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %35 = getelementptr inbounds %struct.nfp_cpp_mutex, %struct.nfp_cpp_mutex* %34, i32 0, i32 3
  %36 = load %struct.nfp_cpp*, %struct.nfp_cpp** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %39 = getelementptr inbounds %struct.nfp_cpp_mutex, %struct.nfp_cpp_mutex* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 4
  %42 = call i32 @nfp_cpp_readl(%struct.nfp_cpp* %36, i64 %37, i64 %41, i64* %7)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %2, align 4
  br label %93

47:                                               ; preds = %33
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %50 = getelementptr inbounds %struct.nfp_cpp_mutex, %struct.nfp_cpp_mutex* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @EPERM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %93

56:                                               ; preds = %47
  %57 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %58 = getelementptr inbounds %struct.nfp_cpp_mutex, %struct.nfp_cpp_mutex* %57, i32 0, i32 3
  %59 = load %struct.nfp_cpp*, %struct.nfp_cpp** %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %62 = getelementptr inbounds %struct.nfp_cpp_mutex, %struct.nfp_cpp_mutex* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @nfp_cpp_readl(%struct.nfp_cpp* %59, i64 %60, i64 %63, i64* %8)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %2, align 4
  br label %93

69:                                               ; preds = %56
  %70 = load i64, i64* %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i64 @nfp_mutex_locked(i32 %71)
  %73 = icmp ne i64 %70, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @EACCES, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %93

77:                                               ; preds = %69
  %78 = load %struct.nfp_cpp*, %struct.nfp_cpp** %6, align 8
  %79 = load i64, i64* %4, align 8
  %80 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %81 = getelementptr inbounds %struct.nfp_cpp_mutex, %struct.nfp_cpp_mutex* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @nfp_mutex_unlocked(i32 %83)
  %85 = call i32 @nfp_cpp_writel(%struct.nfp_cpp* %78, i64 %79, i64 %82, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %77
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %2, align 4
  br label %93

90:                                               ; preds = %77
  %91 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %3, align 8
  %92 = getelementptr inbounds %struct.nfp_cpp_mutex, %struct.nfp_cpp_mutex* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %90, %88, %74, %67, %53, %45, %28
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i64 @NFP_CPP_ID(i32, i32, i32) #1

declare dso_local i32 @nfp_cpp_interface(%struct.nfp_cpp*) #1

declare dso_local i32 @nfp_cpp_readl(%struct.nfp_cpp*, i64, i64, i64*) #1

declare dso_local i64 @nfp_mutex_locked(i32) #1

declare dso_local i32 @nfp_cpp_writel(%struct.nfp_cpp*, i64, i64, i32) #1

declare dso_local i32 @nfp_mutex_unlocked(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
