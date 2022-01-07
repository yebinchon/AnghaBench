; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_setup_lso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_setup_lso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.nix_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@NIX_AF_CONST1 = common dso_local global i32 0, align 4
@NIX_AF_LSO_CFG = common dso_local global i32 0, align 4
@NIX_LSO_FORMAT_IDX_TSOV4 = common dso_local global i32 0, align 4
@NIX_LSO_FORMAT_IDX_TSOV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvu*, %struct.nix_hw*, i32)* @nix_setup_lso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nix_setup_lso(%struct.rvu* %0, %struct.nix_hw* %1, i32 %2) #0 {
  %4 = alloca %struct.rvu*, align 8
  %5 = alloca %struct.nix_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %4, align 8
  store %struct.nix_hw* %1, %struct.nix_hw** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.rvu*, %struct.rvu** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @NIX_AF_CONST1, align 4
  %13 = call i32 @rvu_read64(%struct.rvu* %10, i32 %11, i32 %12)
  %14 = ashr i32 %13, 48
  %15 = and i32 %14, 255
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.nix_hw*, %struct.nix_hw** %5, align 8
  %18 = getelementptr inbounds %struct.nix_hw, %struct.nix_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load %struct.rvu*, %struct.rvu** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @NIX_AF_LSO_CFG, align 4
  %23 = call i32 @rvu_read64(%struct.rvu* %20, i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = and i64 %25, -281474976645121
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = or i64 %29, 281419141218304
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load %struct.rvu*, %struct.rvu** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @NIX_AF_LSO_CFG, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @BIT_ULL(i32 63)
  %37 = or i32 %35, %36
  %38 = call i32 @rvu_write64(%struct.rvu* %32, i32 %33, i32 %34, i32 %37)
  %39 = load i32, i32* @NIX_LSO_FORMAT_IDX_TSOV4, align 4
  store i32 %39, i32* %8, align 4
  %40 = load %struct.rvu*, %struct.rvu** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @nix_setup_lso_tso_l3(%struct.rvu* %40, i32 %41, i32 %42, i32 1, i32* %9)
  %44 = load %struct.rvu*, %struct.rvu** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @nix_setup_lso_tso_l4(%struct.rvu* %44, i32 %45, i32 %46, i32* %9)
  br label %48

48:                                               ; preds = %58, %3
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 8
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load %struct.rvu*, %struct.rvu** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @NIX_AF_LSO_FORMATX_FIELDX(i32 %54, i32 %55)
  %57 = call i32 @rvu_write64(%struct.rvu* %52, i32 %53, i32 %56, i32 0)
  br label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %48

61:                                               ; preds = %48
  %62 = load %struct.nix_hw*, %struct.nix_hw** %5, align 8
  %63 = getelementptr inbounds %struct.nix_hw, %struct.nix_hw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* @NIX_LSO_FORMAT_IDX_TSOV6, align 4
  store i32 %67, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %68 = load %struct.rvu*, %struct.rvu** %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @nix_setup_lso_tso_l3(%struct.rvu* %68, i32 %69, i32 %70, i32 0, i32* %9)
  %72 = load %struct.rvu*, %struct.rvu** %4, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @nix_setup_lso_tso_l4(%struct.rvu* %72, i32 %73, i32 %74, i32* %9)
  br label %76

76:                                               ; preds = %86, %61
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %77, 8
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load %struct.rvu*, %struct.rvu** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @NIX_AF_LSO_FORMATX_FIELDX(i32 %82, i32 %83)
  %85 = call i32 @rvu_write64(%struct.rvu* %80, i32 %81, i32 %84, i32 0)
  br label %86

86:                                               ; preds = %79
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %76

89:                                               ; preds = %76
  %90 = load %struct.nix_hw*, %struct.nix_hw** %5, align 8
  %91 = getelementptr inbounds %struct.nix_hw, %struct.nix_hw* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  ret void
}

declare dso_local i32 @rvu_read64(%struct.rvu*, i32, i32) #1

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @nix_setup_lso_tso_l3(%struct.rvu*, i32, i32, i32, i32*) #1

declare dso_local i32 @nix_setup_lso_tso_l4(%struct.rvu*, i32, i32, i32*) #1

declare dso_local i32 @NIX_AF_LSO_FORMATX_FIELDX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
