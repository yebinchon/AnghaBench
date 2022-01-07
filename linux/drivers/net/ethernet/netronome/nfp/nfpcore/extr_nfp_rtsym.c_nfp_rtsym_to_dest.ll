; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_rtsym.c_nfp_rtsym_to_dest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_rtsym.c_nfp_rtsym_to_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp = type { i32 }
%struct.nfp_rtsym = type { i64, i32, i64, i32, i32 }

@NFP_RTSYM_TYPE_OBJECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"rtsym '%s': direct access to non-object rtsym\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NFP_RTSYM_TARGET_EMU_CACHE = common dso_local global i64 0, align 8
@NFP_MU_ADDR_ACCESS_TYPE_MASK = common dso_local global i32 0, align 4
@NFP_MU_ADDR_ACCESS_TYPE_DIRECT = common dso_local global i32 0, align 4
@NFP_CPP_TARGET_MU = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"rtsym '%s': unhandled target encoding: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_cpp*, %struct.nfp_rtsym*, i32, i32, i32, i32*, i32*)* @nfp_rtsym_to_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_rtsym_to_dest(%struct.nfp_cpp* %0, %struct.nfp_rtsym* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfp_cpp*, align 8
  %10 = alloca %struct.nfp_rtsym*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %9, align 8
  store %struct.nfp_rtsym* %1, %struct.nfp_rtsym** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %10, align 8
  %18 = getelementptr inbounds %struct.nfp_rtsym, %struct.nfp_rtsym* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NFP_RTSYM_TYPE_OBJECT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %7
  %23 = load %struct.nfp_cpp*, %struct.nfp_cpp** %9, align 8
  %24 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %10, align 8
  %25 = getelementptr inbounds %struct.nfp_rtsym, %struct.nfp_rtsym* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (%struct.nfp_cpp*, i8*, i32, ...) @nfp_err(%struct.nfp_cpp* %23, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %95

30:                                               ; preds = %7
  %31 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %10, align 8
  %32 = getelementptr inbounds %struct.nfp_rtsym, %struct.nfp_rtsym* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %13, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32*, i32** %15, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %10, align 8
  %38 = getelementptr inbounds %struct.nfp_rtsym, %struct.nfp_rtsym* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NFP_RTSYM_TARGET_EMU_CACHE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %30
  %43 = load %struct.nfp_cpp*, %struct.nfp_cpp** %9, align 8
  %44 = call i32 @nfp_cpp_mu_locality_lsb(%struct.nfp_cpp* %43)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* @NFP_MU_ADDR_ACCESS_TYPE_MASK, align 4
  %46 = load i32, i32* %16, align 4
  %47 = shl i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load i32*, i32** %15, align 8
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %48
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @NFP_MU_ADDR_ACCESS_TYPE_DIRECT, align 4
  %53 = load i32, i32* %16, align 4
  %54 = shl i32 %52, %53
  %55 = load i32*, i32** %15, align 8
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %54
  store i32 %57, i32* %55, align 4
  %58 = load i64, i64* @NFP_CPP_TARGET_MU, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %10, align 8
  %62 = getelementptr inbounds %struct.nfp_rtsym, %struct.nfp_rtsym* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @NFP_CPP_ISLAND_ID(i64 %58, i32 %59, i32 %60, i32 %63)
  %65 = load i32*, i32** %14, align 8
  store i32 %64, i32* %65, align 4
  br label %94

66:                                               ; preds = %30
  %67 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %10, align 8
  %68 = getelementptr inbounds %struct.nfp_rtsym, %struct.nfp_rtsym* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %66
  %72 = load %struct.nfp_cpp*, %struct.nfp_cpp** %9, align 8
  %73 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %10, align 8
  %74 = getelementptr inbounds %struct.nfp_rtsym, %struct.nfp_rtsym* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %10, align 8
  %77 = getelementptr inbounds %struct.nfp_rtsym, %struct.nfp_rtsym* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (%struct.nfp_cpp*, i8*, i32, ...) @nfp_err(%struct.nfp_cpp* %72, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %75, i64 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %8, align 4
  br label %95

82:                                               ; preds = %66
  %83 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %10, align 8
  %84 = getelementptr inbounds %struct.nfp_rtsym, %struct.nfp_rtsym* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %10, align 8
  %89 = getelementptr inbounds %struct.nfp_rtsym, %struct.nfp_rtsym* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @NFP_CPP_ISLAND_ID(i64 %85, i32 %86, i32 %87, i32 %90)
  %92 = load i32*, i32** %14, align 8
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93, %42
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %94, %71, %22
  %96 = load i32, i32* %8, align 4
  ret i32 %96
}

declare dso_local i32 @nfp_err(%struct.nfp_cpp*, i8*, i32, ...) #1

declare dso_local i32 @nfp_cpp_mu_locality_lsb(%struct.nfp_cpp*) #1

declare dso_local i32 @NFP_CPP_ISLAND_ID(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
