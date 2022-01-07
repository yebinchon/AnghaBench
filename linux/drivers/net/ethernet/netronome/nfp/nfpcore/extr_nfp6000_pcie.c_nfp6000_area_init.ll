; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp6000_pcie.c_nfp6000_area_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp6000_pcie.c_nfp6000_area_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp_area = type { i32 }
%struct.nfp6000_area_priv = type { i64, i64, i32, i8*, i8*, i8*, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_cpp_area*, i8*, i64, i64)* @nfp6000_area_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp6000_area_init(%struct.nfp_cpp_area* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_cpp_area*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nfp6000_area_priv*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.nfp_cpp_area* %0, %struct.nfp_cpp_area** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %6, align 8
  %16 = call %struct.nfp6000_area_priv* @nfp_cpp_area_priv(%struct.nfp_cpp_area* %15)
  store %struct.nfp6000_area_priv* %16, %struct.nfp6000_area_priv** %10, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i8* @NFP_CPP_ID_TARGET_of(i8* %17)
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i8* @NFP_CPP_ID_ACTION_of(i8* %19)
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i8* @NFP_CPP_ID_TOKEN_of(i8* %21)
  store i8* %22, i8** %13, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = call i32 @NFP_CPP_ID(i8* %23, i8* %24, i8* %25)
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @nfp_target_pushpull(i32 %26, i64 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %5, align 4
  br label %114

33:                                               ; preds = %4
  %34 = load i32, i32* %14, align 4
  %35 = call i64 @PUSH_WIDTH(i32 %34)
  %36 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %10, align 8
  %37 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %36, i32 0, i32 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i64 %35, i64* %38, align 8
  %39 = load i32, i32* %14, align 4
  %40 = call i64 @PULL_WIDTH(i32 %39)
  %41 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %10, align 8
  %42 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %41, i32 0, i32 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i64 %40, i64* %43, align 8
  %44 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %10, align 8
  %45 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %44, i32 0, i32 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %33
  %50 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %10, align 8
  %51 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %50, i32 0, i32 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %49
  %56 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %10, align 8
  %57 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %56, i32 0, i32 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %10, align 8
  %61 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %60, i32 0, i32 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %59, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %114

68:                                               ; preds = %55, %49, %33
  %69 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %10, align 8
  %70 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %69, i32 0, i32 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %10, align 8
  %76 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %75, i32 0, i32 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %10, align 8
  %80 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %79, i32 0, i32 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  store i64 %78, i64* %81, align 8
  br label %90

82:                                               ; preds = %68
  %83 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %10, align 8
  %84 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %83, i32 0, i32 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %10, align 8
  %88 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %87, i32 0, i32 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  store i64 %86, i64* %89, align 8
  br label %90

90:                                               ; preds = %82, %74
  %91 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %10, align 8
  %92 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %91, i32 0, i32 7
  %93 = call i32 @atomic_set(i32* %92, i32 0)
  %94 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %10, align 8
  %95 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %94, i32 0, i32 6
  store i32* null, i32** %95, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %10, align 8
  %98 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %97, i32 0, i32 5
  store i8* %96, i8** %98, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %10, align 8
  %101 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %100, i32 0, i32 4
  store i8* %99, i8** %101, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %10, align 8
  %104 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %103, i32 0, i32 3
  store i8* %102, i8** %104, align 8
  %105 = load i64, i64* %8, align 8
  %106 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %10, align 8
  %107 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load i64, i64* %9, align 8
  %109 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %10, align 8
  %110 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  %111 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %10, align 8
  %112 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %111, i32 0, i32 2
  %113 = call i32 @memset(i32* %112, i32 0, i32 4)
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %90, %65, %31
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local %struct.nfp6000_area_priv* @nfp_cpp_area_priv(%struct.nfp_cpp_area*) #1

declare dso_local i8* @NFP_CPP_ID_TARGET_of(i8*) #1

declare dso_local i8* @NFP_CPP_ID_ACTION_of(i8*) #1

declare dso_local i8* @NFP_CPP_ID_TOKEN_of(i8*) #1

declare dso_local i32 @nfp_target_pushpull(i32, i64) #1

declare dso_local i32 @NFP_CPP_ID(i8*, i8*, i8*) #1

declare dso_local i64 @PUSH_WIDTH(i32) #1

declare dso_local i64 @PULL_WIDTH(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
