; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_mutex.c_nfp_cpp_mutex_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_mutex.c_nfp_cpp_mutex_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_cpp_mutex_init(%struct.nfp_cpp* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_cpp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @NFP_CPP_ID(i32 %13, i32 4, i32 0)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.nfp_cpp*, %struct.nfp_cpp** %6, align 8
  %16 = call i32 @nfp_cpp_interface(%struct.nfp_cpp* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @nfp_cpp_mutex_validate(i32 %17, i32* %7, i64 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %5, align 4
  br label %47

24:                                               ; preds = %4
  %25 = load %struct.nfp_cpp*, %struct.nfp_cpp** %6, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i64, i64* %8, align 8
  %28 = add i64 %27, 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @nfp_cpp_writel(%struct.nfp_cpp* %25, i32 %26, i64 %28, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %5, align 4
  br label %47

35:                                               ; preds = %24
  %36 = load %struct.nfp_cpp*, %struct.nfp_cpp** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i64, i64* %8, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @nfp_mutex_locked(i32 %39)
  %41 = call i32 @nfp_cpp_writel(%struct.nfp_cpp* %36, i32 %37, i64 %38, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %5, align 4
  br label %47

46:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %44, %33, %22
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @NFP_CPP_ID(i32, i32, i32) #1

declare dso_local i32 @nfp_cpp_interface(%struct.nfp_cpp*) #1

declare dso_local i32 @nfp_cpp_mutex_validate(i32, i32*, i64) #1

declare dso_local i32 @nfp_cpp_writel(%struct.nfp_cpp*, i32, i64, i32) #1

declare dso_local i32 @nfp_mutex_locked(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
