; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_mutex.c_nfp_cpp_mutex_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_mutex.c_nfp_cpp_mutex_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_cpp_mutex_reclaim(%struct.nfp_cpp* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_cpp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @NFP_CPP_ID(i32 %13, i32 3, i32 0)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @NFP_CPP_ID(i32 %15, i32 4, i32 0)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.nfp_cpp*, %struct.nfp_cpp** %5, align 8
  %18 = call i64 @nfp_cpp_interface(%struct.nfp_cpp* %17)
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @nfp_cpp_mutex_validate(i64 %19, i32* %6, i64 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %4, align 4
  br label %57

26:                                               ; preds = %3
  %27 = load %struct.nfp_cpp*, %struct.nfp_cpp** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @nfp_cpp_readl(%struct.nfp_cpp* %27, i32 %28, i64 %29, i32* %12)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %4, align 4
  br label %57

35:                                               ; preds = %26
  %36 = load i32, i32* %12, align 4
  %37 = call i64 @nfp_mutex_is_unlocked(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %12, align 4
  %41 = call i64 @nfp_mutex_owner(i32 %40)
  %42 = load i64, i64* %10, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %35
  store i32 0, i32* %4, align 4
  br label %57

45:                                               ; preds = %39
  %46 = load %struct.nfp_cpp*, %struct.nfp_cpp** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @nfp_mutex_unlocked(i64 %49)
  %51 = call i32 @nfp_cpp_writel(%struct.nfp_cpp* %46, i32 %47, i64 %48, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %4, align 4
  br label %57

56:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %54, %44, %33, %24
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @NFP_CPP_ID(i32, i32, i32) #1

declare dso_local i64 @nfp_cpp_interface(%struct.nfp_cpp*) #1

declare dso_local i32 @nfp_cpp_mutex_validate(i64, i32*, i64) #1

declare dso_local i32 @nfp_cpp_readl(%struct.nfp_cpp*, i32, i64, i32*) #1

declare dso_local i64 @nfp_mutex_is_unlocked(i32) #1

declare dso_local i64 @nfp_mutex_owner(i32) #1

declare dso_local i32 @nfp_cpp_writel(%struct.nfp_cpp*, i32, i64, i32) #1

declare dso_local i32 @nfp_mutex_unlocked(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
