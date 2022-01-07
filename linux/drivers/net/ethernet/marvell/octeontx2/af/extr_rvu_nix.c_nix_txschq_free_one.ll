; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_txschq_free_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_txschq_free_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32, i32, %struct.rvu_hwinfo* }
%struct.rvu_hwinfo = type { i32* }
%struct.nix_txsch_free_req = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.nix_txsch = type { i64*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nix_hw = type { %struct.nix_txsch* }

@BLKTYPE_NIX = common dso_local global i32 0, align 4
@NIX_AF_ERR_AF_LF_INVALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NIX_TXSCH_LVL_TL2 = common dso_local global i32 0, align 4
@NIX_TXSCH_LVL_SMQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"NIXLF%d: SMQ%d flush failed\0A\00", align 1
@NIX_AF_ERR_TLX_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*, %struct.nix_txsch_free_req*)* @nix_txschq_free_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nix_txschq_free_one(%struct.rvu* %0, %struct.nix_txsch_free_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rvu*, align 8
  %5 = alloca %struct.nix_txsch_free_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rvu_hwinfo*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.nix_txsch*, align 8
  %14 = alloca %struct.nix_hw*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %4, align 8
  store %struct.nix_txsch_free_req* %1, %struct.nix_txsch_free_req** %5, align 8
  %17 = load %struct.rvu*, %struct.rvu** %4, align 8
  %18 = getelementptr inbounds %struct.rvu, %struct.rvu* %17, i32 0, i32 2
  %19 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %18, align 8
  store %struct.rvu_hwinfo* %19, %struct.rvu_hwinfo** %11, align 8
  %20 = load %struct.nix_txsch_free_req*, %struct.nix_txsch_free_req** %5, align 8
  %21 = getelementptr inbounds %struct.nix_txsch_free_req, %struct.nix_txsch_free_req* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %12, align 8
  %24 = load %struct.rvu*, %struct.rvu** %4, align 8
  %25 = load i32, i32* @BLKTYPE_NIX, align 4
  %26 = load i64, i64* %12, align 8
  %27 = call i32 @rvu_get_blkaddr(%struct.rvu* %24, i32 %25, i64 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @NIX_AF_ERR_AF_LF_INVALID, align 4
  store i32 %31, i32* %3, align 4
  br label %153

32:                                               ; preds = %2
  %33 = load %struct.rvu*, %struct.rvu** %4, align 8
  %34 = getelementptr inbounds %struct.rvu, %struct.rvu* %33, i32 0, i32 2
  %35 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call %struct.nix_hw* @get_nix_hw(%struct.rvu_hwinfo* %35, i32 %36)
  store %struct.nix_hw* %37, %struct.nix_hw** %14, align 8
  %38 = load %struct.nix_hw*, %struct.nix_hw** %14, align 8
  %39 = icmp ne %struct.nix_hw* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %153

43:                                               ; preds = %32
  %44 = load %struct.rvu*, %struct.rvu** %4, align 8
  %45 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %11, align 8
  %46 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i64, i64* %12, align 8
  %52 = call i32 @rvu_get_lf(%struct.rvu* %44, i32* %50, i64 %51, i32 0)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %43
  %56 = load i32, i32* @NIX_AF_ERR_AF_LF_INVALID, align 4
  store i32 %56, i32* %3, align 4
  br label %153

57:                                               ; preds = %43
  %58 = load %struct.nix_txsch_free_req*, %struct.nix_txsch_free_req** %5, align 8
  %59 = getelementptr inbounds %struct.nix_txsch_free_req, %struct.nix_txsch_free_req* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %6, align 4
  %61 = load %struct.nix_txsch_free_req*, %struct.nix_txsch_free_req** %5, align 8
  %62 = getelementptr inbounds %struct.nix_txsch_free_req, %struct.nix_txsch_free_req* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %7, align 4
  %64 = load %struct.nix_hw*, %struct.nix_hw** %14, align 8
  %65 = getelementptr inbounds %struct.nix_hw, %struct.nix_hw* %64, i32 0, i32 0
  %66 = load %struct.nix_txsch*, %struct.nix_txsch** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %66, i64 %68
  store %struct.nix_txsch* %69, %struct.nix_txsch** %13, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @NIX_TXSCH_LVL_TL2, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %80, label %73

73:                                               ; preds = %57
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.nix_txsch*, %struct.nix_txsch** %13, align 8
  %76 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sge i32 %74, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %73, %57
  br label %151

81:                                               ; preds = %73
  %82 = load %struct.nix_txsch*, %struct.nix_txsch** %13, align 8
  %83 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  store i64* %84, i64** %15, align 8
  %85 = load %struct.rvu*, %struct.rvu** %4, align 8
  %86 = getelementptr inbounds %struct.rvu, %struct.rvu* %85, i32 0, i32 0
  %87 = call i32 @mutex_lock(i32* %86)
  %88 = load i64*, i64** %15, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @TXSCH_MAP_FUNC(i64 %92)
  %94 = load i64, i64* %12, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %81
  %97 = load %struct.rvu*, %struct.rvu** %4, align 8
  %98 = getelementptr inbounds %struct.rvu, %struct.rvu* %97, i32 0, i32 0
  %99 = call i32 @mutex_unlock(i32* %98)
  br label %151

100:                                              ; preds = %81
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @NIX_TXSCH_LVL_SMQ, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %137

104:                                              ; preds = %100
  %105 = load %struct.rvu*, %struct.rvu** %4, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @NIX_AF_SMQX_CFG(i32 %107)
  %109 = call i32 @rvu_read64(%struct.rvu* %105, i32 %106, i32 %108)
  store i32 %109, i32* %16, align 4
  %110 = call i32 @BIT_ULL(i32 50)
  %111 = call i32 @BIT_ULL(i32 49)
  %112 = or i32 %110, %111
  %113 = load i32, i32* %16, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %16, align 4
  %115 = load %struct.rvu*, %struct.rvu** %4, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @NIX_AF_SMQX_CFG(i32 %117)
  %119 = load i32, i32* %16, align 4
  %120 = call i32 @rvu_write64(%struct.rvu* %115, i32 %116, i32 %118, i32 %119)
  %121 = load %struct.rvu*, %struct.rvu** %4, align 8
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @NIX_AF_SMQX_CFG(i32 %123)
  %125 = call i32 @BIT_ULL(i32 49)
  %126 = call i32 @rvu_poll_reg(%struct.rvu* %121, i32 %122, i32 %124, i32 %125, i32 1)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %104
  %130 = load %struct.rvu*, %struct.rvu** %4, align 8
  %131 = getelementptr inbounds %struct.rvu, %struct.rvu* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @dev_err(i32 %132, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %129, %104
  br label %137

137:                                              ; preds = %136, %100
  %138 = load %struct.nix_txsch*, %struct.nix_txsch** %13, align 8
  %139 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %138, i32 0, i32 1
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @rvu_free_rsrc(%struct.TYPE_4__* %139, i32 %140)
  %142 = load %struct.nix_txsch*, %struct.nix_txsch** %13, align 8
  %143 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  store i64 0, i64* %147, align 8
  %148 = load %struct.rvu*, %struct.rvu** %4, align 8
  %149 = getelementptr inbounds %struct.rvu, %struct.rvu* %148, i32 0, i32 0
  %150 = call i32 @mutex_unlock(i32* %149)
  store i32 0, i32* %3, align 4
  br label %153

151:                                              ; preds = %96, %80
  %152 = load i32, i32* @NIX_AF_ERR_TLX_INVALID, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %151, %137, %55, %40, %30
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i64) #1

declare dso_local %struct.nix_hw* @get_nix_hw(%struct.rvu_hwinfo*, i32) #1

declare dso_local i32 @rvu_get_lf(%struct.rvu*, i32*, i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @TXSCH_MAP_FUNC(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rvu_read64(%struct.rvu*, i32, i32) #1

declare dso_local i32 @NIX_AF_SMQX_CFG(i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

declare dso_local i32 @rvu_poll_reg(%struct.rvu*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @rvu_free_rsrc(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
