; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_get_tl1_schqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_get_tl1_schqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32, i32 }
%struct.nix_txsch = type { %struct.TYPE_2__, i64* }
%struct.TYPE_2__ = type { i32 }
%struct.nix_hw = type { %struct.nix_txsch* }
%struct.rvu_pfvf = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@NIX_TXSCH_LVL_TL1 = common dso_local global i64 0, align 8
@MAX_LMAC_PER_CGX = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i64 0, align 8
@RVU_PFVF_PF_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*, i32, i32, i32*, i32*)* @rvu_get_tl1_schqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvu_get_tl1_schqs(%struct.rvu* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rvu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.nix_txsch*, align 8
  %13 = alloca %struct.nix_hw*, align 8
  %14 = alloca %struct.rvu_pfvf*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load %struct.rvu*, %struct.rvu** %7, align 8
  %22 = getelementptr inbounds %struct.rvu, %struct.rvu* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.nix_hw* @get_nix_hw(i32 %23, i32 %24)
  store %struct.nix_hw* %25, %struct.nix_hw** %13, align 8
  %26 = load %struct.nix_hw*, %struct.nix_hw** %13, align 8
  %27 = icmp ne %struct.nix_hw* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %5
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %147

31:                                               ; preds = %5
  %32 = load %struct.rvu*, %struct.rvu** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu* %32, i32 %33)
  store %struct.rvu_pfvf* %34, %struct.rvu_pfvf** %14, align 8
  %35 = load %struct.nix_hw*, %struct.nix_hw** %13, align 8
  %36 = getelementptr inbounds %struct.nix_hw, %struct.nix_hw* %35, i32 0, i32 0
  %37 = load %struct.nix_txsch*, %struct.nix_txsch** %36, align 8
  %38 = load i64, i64* @NIX_TXSCH_LVL_TL1, align 8
  %39 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %37, i64 %38
  store %struct.nix_txsch* %39, %struct.nix_txsch** %12, align 8
  %40 = load %struct.nix_txsch*, %struct.nix_txsch** %12, align 8
  %41 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  store i64* %42, i64** %18, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @rvu_get_pf(i32 %43)
  store i32 %44, i32* %19, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @is_afvf(i32 %45)
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 128, i32 129
  store i32 %49, i32* %20, align 4
  %50 = load i32, i32* %20, align 4
  switch i32 %50, label %69 [
    i32 129, label %51
    i32 128, label %62
  ]

51:                                               ; preds = %31
  %52 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %14, align 8
  %53 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @rvu_get_cgx_lmac_id(i32 %54, i32* %15, i32* %16)
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* @MAX_LMAC_PER_CGX, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load i32, i32* %16, align 4
  %60 = add nsw i32 %58, %59
  %61 = mul nsw i32 %60, 2
  store i32 %61, i32* %17, align 4
  br label %72

62:                                               ; preds = %31
  %63 = load %struct.rvu*, %struct.rvu** %7, align 8
  %64 = getelementptr inbounds %struct.rvu, %struct.rvu* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @MAX_LMAC_PER_CGX, align 4
  %67 = mul nsw i32 %65, %66
  %68 = mul nsw i32 %67, 2
  store i32 %68, i32* %17, align 4
  br label %72

69:                                               ; preds = %31
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %147

72:                                               ; preds = %62, %51
  %73 = load i32, i32* %17, align 4
  %74 = add nsw i32 %73, 1
  %75 = load %struct.nix_txsch*, %struct.nix_txsch** %12, align 8
  %76 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sgt i32 %74, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %147

83:                                               ; preds = %72
  %84 = load i64*, i64** %18, align 8
  %85 = load i32, i32* %17, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @U32_MAX, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %131

91:                                               ; preds = %83
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* @RVU_PFVF_PF_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = call i64 @TXSCH_MAP(i32 %94, i32 0)
  %96 = load i64*, i64** %18, align 8
  %97 = load i32, i32* %17, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  store i64 %95, i64* %99, align 8
  %100 = load i32, i32* %19, align 4
  %101 = load i32, i32* @RVU_PFVF_PF_SHIFT, align 4
  %102 = shl i32 %100, %101
  %103 = call i64 @TXSCH_MAP(i32 %102, i32 0)
  %104 = load i64*, i64** %18, align 8
  %105 = load i32, i32* %17, align 4
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %104, i64 %107
  store i64 %103, i64* %108, align 8
  %109 = load %struct.rvu*, %struct.rvu** %7, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i64, i64* @NIX_TXSCH_LVL_TL1, align 8
  %112 = load i32, i32* %17, align 4
  %113 = call i32 @nix_reset_tx_linkcfg(%struct.rvu* %109, i32 %110, i64 %111, i32 %112)
  %114 = load %struct.rvu*, %struct.rvu** %7, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load i64, i64* @NIX_TXSCH_LVL_TL1, align 8
  %117 = load i32, i32* %17, align 4
  %118 = call i32 @nix_reset_tx_shaping(%struct.rvu* %114, i32 %115, i64 %116, i32 %117)
  %119 = load %struct.rvu*, %struct.rvu** %7, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i64, i64* @NIX_TXSCH_LVL_TL1, align 8
  %122 = load i32, i32* %17, align 4
  %123 = add nsw i32 %122, 1
  %124 = call i32 @nix_reset_tx_linkcfg(%struct.rvu* %119, i32 %120, i64 %121, i32 %123)
  %125 = load %struct.rvu*, %struct.rvu** %7, align 8
  %126 = load i32, i32* %8, align 4
  %127 = load i64, i64* @NIX_TXSCH_LVL_TL1, align 8
  %128 = load i32, i32* %17, align 4
  %129 = add nsw i32 %128, 1
  %130 = call i32 @nix_reset_tx_shaping(%struct.rvu* %125, i32 %126, i64 %127, i32 %129)
  br label %131

131:                                              ; preds = %91, %83
  %132 = load i32*, i32** %10, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %146

134:                                              ; preds = %131
  %135 = load i32*, i32** %11, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %146

137:                                              ; preds = %134
  %138 = load i32, i32* %17, align 4
  %139 = load i32*, i32** %10, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* %17, align 4
  %142 = add nsw i32 %141, 1
  %143 = load i32*, i32** %10, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  store i32 %142, i32* %144, align 4
  %145 = load i32*, i32** %11, align 8
  store i32 2, i32* %145, align 4
  br label %146

146:                                              ; preds = %137, %134, %131
  store i32 0, i32* %6, align 4
  br label %147

147:                                              ; preds = %146, %80, %69, %28
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local %struct.nix_hw* @get_nix_hw(i32, i32) #1

declare dso_local %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu*, i32) #1

declare dso_local i32 @rvu_get_pf(i32) #1

declare dso_local i64 @is_afvf(i32) #1

declare dso_local i32 @rvu_get_cgx_lmac_id(i32, i32*, i32*) #1

declare dso_local i64 @TXSCH_MAP(i32, i32) #1

declare dso_local i32 @nix_reset_tx_linkcfg(%struct.rvu*, i32, i64, i32) #1

declare dso_local i32 @nix_reset_tx_shaping(%struct.rvu*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
