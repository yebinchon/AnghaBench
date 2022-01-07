; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_mbox_handler_nix_mark_format_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_mbox_handler_nix_mark_format_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32, i32 }
%struct.nix_mark_format_cfg = type { i64, i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nix_mark_format_cfg_rsp = type { i32 }
%struct.nix_hw = type { i32 }
%struct.rvu_pfvf = type { i32 }

@BLKTYPE_NIX = common dso_local global i32 0, align 4
@NIX_AF_ERR_AF_LF_INVALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"No mark_format_ctl for (pf:%d, vf:%d)\00", align 1
@RVU_PFVF_FUNC_MASK = common dso_local global i32 0, align 4
@NIX_AF_ERR_MARK_CFG_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_mbox_handler_nix_mark_format_cfg(%struct.rvu* %0, %struct.nix_mark_format_cfg* %1, %struct.nix_mark_format_cfg_rsp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.nix_mark_format_cfg*, align 8
  %7 = alloca %struct.nix_mark_format_cfg_rsp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nix_hw*, align 8
  %10 = alloca %struct.rvu_pfvf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.nix_mark_format_cfg* %1, %struct.nix_mark_format_cfg** %6, align 8
  store %struct.nix_mark_format_cfg_rsp* %2, %struct.nix_mark_format_cfg_rsp** %7, align 8
  %14 = load %struct.nix_mark_format_cfg*, %struct.nix_mark_format_cfg** %6, align 8
  %15 = getelementptr inbounds %struct.nix_mark_format_cfg, %struct.nix_mark_format_cfg* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.rvu*, %struct.rvu** %5, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu* %18, i32 %19)
  store %struct.rvu_pfvf* %20, %struct.rvu_pfvf** %10, align 8
  %21 = load %struct.rvu*, %struct.rvu** %5, align 8
  %22 = load i32, i32* @BLKTYPE_NIX, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @rvu_get_blkaddr(%struct.rvu* %21, i32 %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %26 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %3
  %33 = load i32, i32* @NIX_AF_ERR_AF_LF_INVALID, align 4
  store i32 %33, i32* %4, align 4
  br label %101

34:                                               ; preds = %29
  %35 = load %struct.rvu*, %struct.rvu** %5, align 8
  %36 = getelementptr inbounds %struct.rvu, %struct.rvu* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call %struct.nix_hw* @get_nix_hw(i32 %37, i32 %38)
  store %struct.nix_hw* %39, %struct.nix_hw** %9, align 8
  %40 = load %struct.nix_hw*, %struct.nix_hw** %9, align 8
  %41 = icmp ne %struct.nix_hw* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %101

45:                                               ; preds = %34
  %46 = load %struct.nix_mark_format_cfg*, %struct.nix_mark_format_cfg** %6, align 8
  %47 = getelementptr inbounds %struct.nix_mark_format_cfg, %struct.nix_mark_format_cfg* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = and i32 %49, 7
  %51 = shl i32 %50, 16
  %52 = load %struct.nix_mark_format_cfg*, %struct.nix_mark_format_cfg** %6, align 8
  %53 = getelementptr inbounds %struct.nix_mark_format_cfg, %struct.nix_mark_format_cfg* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = and i32 %55, 15
  %57 = shl i32 %56, 12
  %58 = or i32 %51, %57
  %59 = load %struct.nix_mark_format_cfg*, %struct.nix_mark_format_cfg** %6, align 8
  %60 = getelementptr inbounds %struct.nix_mark_format_cfg, %struct.nix_mark_format_cfg* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = and i32 %62, 15
  %64 = shl i32 %63, 8
  %65 = or i32 %58, %64
  %66 = load %struct.nix_mark_format_cfg*, %struct.nix_mark_format_cfg** %6, align 8
  %67 = getelementptr inbounds %struct.nix_mark_format_cfg, %struct.nix_mark_format_cfg* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = and i32 %69, 15
  %71 = shl i32 %70, 4
  %72 = or i32 %65, %71
  %73 = load %struct.nix_mark_format_cfg*, %struct.nix_mark_format_cfg** %6, align 8
  %74 = getelementptr inbounds %struct.nix_mark_format_cfg, %struct.nix_mark_format_cfg* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = and i32 %76, 15
  %78 = or i32 %72, %77
  store i32 %78, i32* %13, align 4
  %79 = load %struct.rvu*, %struct.rvu** %5, align 8
  %80 = load %struct.nix_hw*, %struct.nix_hw** %9, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @rvu_nix_reserve_mark_format(%struct.rvu* %79, %struct.nix_hw* %80, i32 %81, i32 %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %45
  %87 = load %struct.rvu*, %struct.rvu** %5, align 8
  %88 = getelementptr inbounds %struct.rvu, %struct.rvu* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @rvu_get_pf(i32 %90)
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @RVU_PFVF_FUNC_MASK, align 4
  %94 = and i32 %92, %93
  %95 = call i32 @dev_err(i32 %89, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %94)
  %96 = load i32, i32* @NIX_AF_ERR_MARK_CFG_FAIL, align 4
  store i32 %96, i32* %4, align 4
  br label %101

97:                                               ; preds = %45
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.nix_mark_format_cfg_rsp*, %struct.nix_mark_format_cfg_rsp** %7, align 8
  %100 = getelementptr inbounds %struct.nix_mark_format_cfg_rsp, %struct.nix_mark_format_cfg_rsp* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %97, %86, %42, %32
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu*, i32) #1

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local %struct.nix_hw* @get_nix_hw(i32, i32) #1

declare dso_local i32 @rvu_nix_reserve_mark_format(%struct.rvu*, %struct.nix_hw*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @rvu_get_pf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
