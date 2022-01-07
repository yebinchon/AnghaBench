; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_tl1_default_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_tl1_default_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32, i32 }
%struct.nix_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@BLKTYPE_NIX = common dso_local global i32 0, align 4
@NIX_AF_ERR_AF_LF_INVALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NIX_TXSCH_LVL_TL1 = common dso_local global i64 0, align 8
@NIX_TXSCHQ_TL1_CFG_DONE = common dso_local global i32 0, align 4
@TXSCH_TL1_DFLT_RR_PRIO = common dso_local global i32 0, align 4
@TXSCH_TL1_DFLT_RR_QTM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*, i32)* @nix_tl1_default_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nix_tl1_default_cfg(%struct.rvu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rvu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nix_hw*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.rvu* %0, %struct.rvu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.rvu*, %struct.rvu** %4, align 8
  %19 = load i32, i32* @BLKTYPE_NIX, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @rvu_get_blkaddr(%struct.rvu* %18, i32 %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @NIX_AF_ERR_AF_LF_INVALID, align 4
  store i32 %25, i32* %3, align 4
  br label %127

26:                                               ; preds = %2
  %27 = load %struct.rvu*, %struct.rvu** %4, align 8
  %28 = getelementptr inbounds %struct.rvu, %struct.rvu* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call %struct.nix_hw* @get_nix_hw(i32 %29, i32 %30)
  store %struct.nix_hw* %31, %struct.nix_hw** %14, align 8
  %32 = load %struct.nix_hw*, %struct.nix_hw** %14, align 8
  %33 = icmp ne %struct.nix_hw* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %127

37:                                               ; preds = %26
  %38 = load %struct.nix_hw*, %struct.nix_hw** %14, align 8
  %39 = getelementptr inbounds %struct.nix_hw, %struct.nix_hw* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* @NIX_TXSCH_LVL_TL1, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %17, align 8
  %45 = load %struct.rvu*, %struct.rvu** %4, align 8
  %46 = getelementptr inbounds %struct.rvu, %struct.rvu* %45, i32 0, i32 0
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.rvu*, %struct.rvu** %4, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %5, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %52 = call i32 @rvu_get_tl1_schqs(%struct.rvu* %48, i32 %49, i32 %50, i32* %51, i32* %7)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %37
  br label %122

56:                                               ; preds = %37
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %118, %56
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %121

61:                                               ; preds = %57
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %8, align 4
  %66 = load i32*, i32** %17, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @TXSCH_MAP_FUNC(i32 %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32*, i32** %17, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @TXSCH_MAP_FLAGS(i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @NIX_TXSCHQ_TL1_CFG_DONE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %61
  br label %118

83:                                               ; preds = %61
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @NIX_AF_TL1X_TOPOLOGY(i32 %84)
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* @TXSCH_TL1_DFLT_RR_PRIO, align 4
  %87 = shl i32 %86, 1
  store i32 %87, i32* %16, align 4
  %88 = load %struct.rvu*, %struct.rvu** %4, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %16, align 4
  %92 = call i32 @rvu_write64(%struct.rvu* %88, i32 %89, i32 %90, i32 %91)
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @NIX_AF_TL1X_SCHEDULE(i32 %93)
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* @TXSCH_TL1_DFLT_RR_QTM, align 4
  store i32 %95, i32* %16, align 4
  %96 = load %struct.rvu*, %struct.rvu** %4, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %16, align 4
  %100 = call i32 @rvu_write64(%struct.rvu* %96, i32 %97, i32 %98, i32 %99)
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @NIX_AF_TL1X_CIR(i32 %101)
  store i32 %102, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %103 = load %struct.rvu*, %struct.rvu** %4, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %16, align 4
  %107 = call i32 @rvu_write64(%struct.rvu* %103, i32 %104, i32 %105, i32 %106)
  %108 = load i32, i32* @NIX_TXSCHQ_TL1_CFG_DONE, align 4
  %109 = load i32, i32* %13, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @TXSCH_MAP(i32 %111, i32 %112)
  %114 = load i32*, i32** %17, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %113, i32* %117, align 4
  br label %118

118:                                              ; preds = %83, %82
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %57

121:                                              ; preds = %57
  br label %122

122:                                              ; preds = %121, %55
  %123 = load %struct.rvu*, %struct.rvu** %4, align 8
  %124 = getelementptr inbounds %struct.rvu, %struct.rvu* %123, i32 0, i32 0
  %125 = call i32 @mutex_unlock(i32* %124)
  %126 = load i32, i32* %11, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %122, %34, %24
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local %struct.nix_hw* @get_nix_hw(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rvu_get_tl1_schqs(%struct.rvu*, i32, i32, i32*, i32*) #1

declare dso_local i32 @TXSCH_MAP_FUNC(i32) #1

declare dso_local i32 @TXSCH_MAP_FLAGS(i32) #1

declare dso_local i32 @NIX_AF_TL1X_TOPOLOGY(i32) #1

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

declare dso_local i32 @NIX_AF_TL1X_SCHEDULE(i32) #1

declare dso_local i32 @NIX_AF_TL1X_CIR(i32) #1

declare dso_local i32 @TXSCH_MAP(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
