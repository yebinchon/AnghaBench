; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_rtsym.c___nfp_rtsym_writel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_rtsym.c___nfp_rtsym_writel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp = type { i32 }
%struct.nfp_rtsym = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"rtsym '%s': writel out of bounds: off: %lld + 4 > size: %lld\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__nfp_rtsym_writel(%struct.nfp_cpp* %0, %struct.nfp_rtsym* %1, i32 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfp_cpp*, align 8
  %9 = alloca %struct.nfp_rtsym*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %8, align 8
  store %struct.nfp_rtsym* %1, %struct.nfp_rtsym** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i64, i64* %12, align 8
  %18 = add nsw i64 %17, 4
  %19 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %9, align 8
  %20 = call i64 @nfp_rtsym_size(%struct.nfp_rtsym* %19)
  %21 = icmp sgt i64 %18, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %6
  %23 = load %struct.nfp_cpp*, %struct.nfp_cpp** %8, align 8
  %24 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %9, align 8
  %25 = getelementptr inbounds %struct.nfp_rtsym, %struct.nfp_rtsym* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %12, align 8
  %28 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %9, align 8
  %29 = call i64 @nfp_rtsym_size(%struct.nfp_rtsym* %28)
  %30 = call i32 @nfp_err(%struct.nfp_cpp* %23, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %27, i64 %29)
  %31 = load i32, i32* @ENXIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %50

33:                                               ; preds = %6
  %34 = load %struct.nfp_cpp*, %struct.nfp_cpp** %8, align 8
  %35 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @nfp_rtsym_to_dest(%struct.nfp_cpp* %34, %struct.nfp_rtsym* %35, i32 %36, i32 %37, i64 %38, i32* %14, i64* %15)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %16, align 4
  store i32 %43, i32* %7, align 4
  br label %50

44:                                               ; preds = %33
  %45 = load %struct.nfp_cpp*, %struct.nfp_cpp** %8, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load i64, i64* %15, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @nfp_cpp_writel(%struct.nfp_cpp* %45, i32 %46, i64 %47, i32 %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %44, %42, %22
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i64 @nfp_rtsym_size(%struct.nfp_rtsym*) #1

declare dso_local i32 @nfp_err(%struct.nfp_cpp*, i8*, i32, i64, i64) #1

declare dso_local i32 @nfp_rtsym_to_dest(%struct.nfp_cpp*, %struct.nfp_rtsym*, i32, i32, i64, i32*, i64*) #1

declare dso_local i32 @nfp_cpp_writel(%struct.nfp_cpp*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
