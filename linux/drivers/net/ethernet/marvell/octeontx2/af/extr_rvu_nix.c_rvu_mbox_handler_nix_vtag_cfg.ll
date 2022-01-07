; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_mbox_handler_nix_vtag_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_mbox_handler_nix_vtag_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.rvu_hwinfo* }
%struct.rvu_hwinfo = type { i32* }
%struct.nix_vtag_config = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.msg_rsp = type { i32 }

@BLKTYPE_NIX = common dso_local global i32 0, align 4
@NIX_AF_ERR_AF_LF_INVALID = common dso_local global i32 0, align 4
@NIX_AF_ERR_PARAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_mbox_handler_nix_vtag_cfg(%struct.rvu* %0, %struct.nix_vtag_config* %1, %struct.msg_rsp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.nix_vtag_config*, align 8
  %7 = alloca %struct.msg_rsp*, align 8
  %8 = alloca %struct.rvu_hwinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.nix_vtag_config* %1, %struct.nix_vtag_config** %6, align 8
  store %struct.msg_rsp* %2, %struct.msg_rsp** %7, align 8
  %13 = load %struct.rvu*, %struct.rvu** %5, align 8
  %14 = getelementptr inbounds %struct.rvu, %struct.rvu* %13, i32 0, i32 0
  %15 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %14, align 8
  store %struct.rvu_hwinfo* %15, %struct.rvu_hwinfo** %8, align 8
  %16 = load %struct.nix_vtag_config*, %struct.nix_vtag_config** %6, align 8
  %17 = getelementptr inbounds %struct.nix_vtag_config, %struct.nix_vtag_config* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load %struct.rvu*, %struct.rvu** %5, align 8
  %21 = load i32, i32* @BLKTYPE_NIX, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @rvu_get_blkaddr(%struct.rvu* %20, i32 %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @NIX_AF_ERR_AF_LF_INVALID, align 4
  store i32 %27, i32* %4, align 4
  br label %60

28:                                               ; preds = %3
  %29 = load %struct.rvu*, %struct.rvu** %5, align 8
  %30 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %8, align 8
  %31 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @rvu_get_lf(%struct.rvu* %29, i32* %35, i32 %36, i32 0)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* @NIX_AF_ERR_AF_LF_INVALID, align 4
  store i32 %41, i32* %4, align 4
  br label %60

42:                                               ; preds = %28
  %43 = load %struct.nix_vtag_config*, %struct.nix_vtag_config** %6, align 8
  %44 = getelementptr inbounds %struct.nix_vtag_config, %struct.nix_vtag_config* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load %struct.rvu*, %struct.rvu** %5, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.nix_vtag_config*, %struct.nix_vtag_config** %6, align 8
  %52 = call i32 @nix_rx_vtag_cfg(%struct.rvu* %48, i32 %49, i32 %50, %struct.nix_vtag_config* %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @NIX_AF_ERR_PARAM, align 4
  store i32 %56, i32* %4, align 4
  br label %60

57:                                               ; preds = %47
  br label %59

58:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %60

59:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %58, %55, %40, %26
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local i32 @rvu_get_lf(%struct.rvu*, i32*, i32, i32) #1

declare dso_local i32 @nix_rx_vtag_cfg(%struct.rvu*, i32, i32, %struct.nix_vtag_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
