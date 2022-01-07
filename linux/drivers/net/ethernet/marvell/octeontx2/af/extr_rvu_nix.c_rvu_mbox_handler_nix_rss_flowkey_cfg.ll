; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_mbox_handler_nix_rss_flowkey_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_mbox_handler_nix_rss_flowkey_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.rvu_hwinfo* }
%struct.rvu_hwinfo = type { i32* }
%struct.nix_rss_flowkey_cfg = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nix_rss_flowkey_cfg_rsp = type { i32 }
%struct.nix_hw = type { i32 }

@BLKTYPE_NIX = common dso_local global i32 0, align 4
@NIX_AF_ERR_AF_LF_INVALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_mbox_handler_nix_rss_flowkey_cfg(%struct.rvu* %0, %struct.nix_rss_flowkey_cfg* %1, %struct.nix_rss_flowkey_cfg_rsp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.nix_rss_flowkey_cfg*, align 8
  %7 = alloca %struct.nix_rss_flowkey_cfg_rsp*, align 8
  %8 = alloca %struct.rvu_hwinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nix_hw*, align 8
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.nix_rss_flowkey_cfg* %1, %struct.nix_rss_flowkey_cfg** %6, align 8
  store %struct.nix_rss_flowkey_cfg_rsp* %2, %struct.nix_rss_flowkey_cfg_rsp** %7, align 8
  %14 = load %struct.rvu*, %struct.rvu** %5, align 8
  %15 = getelementptr inbounds %struct.rvu, %struct.rvu* %14, i32 0, i32 0
  %16 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %15, align 8
  store %struct.rvu_hwinfo* %16, %struct.rvu_hwinfo** %8, align 8
  %17 = load %struct.nix_rss_flowkey_cfg*, %struct.nix_rss_flowkey_cfg** %6, align 8
  %18 = getelementptr inbounds %struct.nix_rss_flowkey_cfg, %struct.nix_rss_flowkey_cfg* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.rvu*, %struct.rvu** %5, align 8
  %22 = load i32, i32* @BLKTYPE_NIX, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @rvu_get_blkaddr(%struct.rvu* %21, i32 %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @NIX_AF_ERR_AF_LF_INVALID, align 4
  store i32 %28, i32* %4, align 4
  br label %89

29:                                               ; preds = %3
  %30 = load %struct.rvu*, %struct.rvu** %5, align 8
  %31 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %8, align 8
  %32 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @rvu_get_lf(%struct.rvu* %30, i32* %36, i32 %37, i32 0)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32, i32* @NIX_AF_ERR_AF_LF_INVALID, align 4
  store i32 %42, i32* %4, align 4
  br label %89

43:                                               ; preds = %29
  %44 = load %struct.rvu*, %struct.rvu** %5, align 8
  %45 = getelementptr inbounds %struct.rvu, %struct.rvu* %44, i32 0, i32 0
  %46 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call %struct.nix_hw* @get_nix_hw(%struct.rvu_hwinfo* %46, i32 %47)
  store %struct.nix_hw* %48, %struct.nix_hw** %13, align 8
  %49 = load %struct.nix_hw*, %struct.nix_hw** %13, align 8
  %50 = icmp ne %struct.nix_hw* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %89

54:                                               ; preds = %43
  %55 = load %struct.nix_hw*, %struct.nix_hw** %13, align 8
  %56 = load %struct.nix_rss_flowkey_cfg*, %struct.nix_rss_flowkey_cfg** %6, align 8
  %57 = getelementptr inbounds %struct.nix_rss_flowkey_cfg, %struct.nix_rss_flowkey_cfg* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @get_flowkey_alg_idx(%struct.nix_hw* %55, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %54
  %63 = load %struct.rvu*, %struct.rvu** %5, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.nix_rss_flowkey_cfg*, %struct.nix_rss_flowkey_cfg** %6, align 8
  %66 = getelementptr inbounds %struct.nix_rss_flowkey_cfg, %struct.nix_rss_flowkey_cfg* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @reserve_flowkey_alg_idx(%struct.rvu* %63, i32 %64, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %4, align 4
  br label %89

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %54
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.nix_rss_flowkey_cfg_rsp*, %struct.nix_rss_flowkey_cfg_rsp** %7, align 8
  %77 = getelementptr inbounds %struct.nix_rss_flowkey_cfg_rsp, %struct.nix_rss_flowkey_cfg_rsp* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.rvu*, %struct.rvu** %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.nix_rss_flowkey_cfg*, %struct.nix_rss_flowkey_cfg** %6, align 8
  %82 = getelementptr inbounds %struct.nix_rss_flowkey_cfg, %struct.nix_rss_flowkey_cfg* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.nix_rss_flowkey_cfg*, %struct.nix_rss_flowkey_cfg** %6, align 8
  %86 = getelementptr inbounds %struct.nix_rss_flowkey_cfg, %struct.nix_rss_flowkey_cfg* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @rvu_npc_update_flowkey_alg_idx(%struct.rvu* %78, i32 %79, i32 %80, i32 %83, i32 %84, i32 %87)
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %74, %71, %51, %41, %27
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local i32 @rvu_get_lf(%struct.rvu*, i32*, i32, i32) #1

declare dso_local %struct.nix_hw* @get_nix_hw(%struct.rvu_hwinfo*, i32) #1

declare dso_local i32 @get_flowkey_alg_idx(%struct.nix_hw*, i32) #1

declare dso_local i32 @reserve_flowkey_alg_idx(%struct.rvu*, i32, i32) #1

declare dso_local i32 @rvu_npc_update_flowkey_alg_idx(%struct.rvu*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
