; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_cppcore.c_nfp_cpp_area_alloc_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_cppcore.c_nfp_cpp_area_alloc_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp_area = type { i32 }
%struct.nfp_cpp = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfp_cpp_area* @nfp_cpp_area_alloc_acquire(%struct.nfp_cpp* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.nfp_cpp_area*, align 8
  %7 = alloca %struct.nfp_cpp*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.nfp_cpp_area*, align 8
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.nfp_cpp*, %struct.nfp_cpp** %7, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* %11, align 8
  %18 = call %struct.nfp_cpp_area* @nfp_cpp_area_alloc_with_name(%struct.nfp_cpp* %13, i32 %14, i8* %15, i64 %16, i64 %17)
  store %struct.nfp_cpp_area* %18, %struct.nfp_cpp_area** %12, align 8
  %19 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %12, align 8
  %20 = icmp ne %struct.nfp_cpp_area* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  store %struct.nfp_cpp_area* null, %struct.nfp_cpp_area** %6, align 8
  br label %31

22:                                               ; preds = %5
  %23 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %12, align 8
  %24 = call i64 @nfp_cpp_area_acquire(%struct.nfp_cpp_area* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %12, align 8
  %28 = call i32 @nfp_cpp_area_free(%struct.nfp_cpp_area* %27)
  store %struct.nfp_cpp_area* null, %struct.nfp_cpp_area** %6, align 8
  br label %31

29:                                               ; preds = %22
  %30 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %12, align 8
  store %struct.nfp_cpp_area* %30, %struct.nfp_cpp_area** %6, align 8
  br label %31

31:                                               ; preds = %29, %26, %21
  %32 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %6, align 8
  ret %struct.nfp_cpp_area* %32
}

declare dso_local %struct.nfp_cpp_area* @nfp_cpp_area_alloc_with_name(%struct.nfp_cpp*, i32, i8*, i64, i64) #1

declare dso_local i64 @nfp_cpp_area_acquire(%struct.nfp_cpp_area*) #1

declare dso_local i32 @nfp_cpp_area_free(%struct.nfp_cpp_area*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
