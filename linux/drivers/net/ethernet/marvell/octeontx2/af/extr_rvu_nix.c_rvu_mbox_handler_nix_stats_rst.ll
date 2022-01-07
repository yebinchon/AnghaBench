; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_mbox_handler_nix_stats_rst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_mbox_handler_nix_stats_rst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.rvu_hwinfo* }
%struct.rvu_hwinfo = type { i32* }
%struct.msg_req = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.msg_rsp = type { i32 }

@BLKTYPE_NIX = common dso_local global i32 0, align 4
@NIX_AF_ERR_AF_LF_INVALID = common dso_local global i32 0, align 4
@NIX_AF_CONST1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_mbox_handler_nix_stats_rst(%struct.rvu* %0, %struct.msg_req* %1, %struct.msg_rsp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.msg_req*, align 8
  %7 = alloca %struct.msg_rsp*, align 8
  %8 = alloca %struct.rvu_hwinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.msg_req* %1, %struct.msg_req** %6, align 8
  store %struct.msg_rsp* %2, %struct.msg_rsp** %7, align 8
  %14 = load %struct.rvu*, %struct.rvu** %5, align 8
  %15 = getelementptr inbounds %struct.rvu, %struct.rvu* %14, i32 0, i32 0
  %16 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %15, align 8
  store %struct.rvu_hwinfo* %16, %struct.rvu_hwinfo** %8, align 8
  %17 = load %struct.msg_req*, %struct.msg_req** %6, align 8
  %18 = getelementptr inbounds %struct.msg_req, %struct.msg_req* %17, i32 0, i32 0
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
  br label %82

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
  br label %82

43:                                               ; preds = %29
  %44 = load %struct.rvu*, %struct.rvu** %5, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @NIX_AF_CONST1, align 4
  %47 = call i32 @rvu_read64(%struct.rvu* %44, i32 %45, i32 %46)
  store i32 %47, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %61, %43
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %13, align 4
  %51 = ashr i32 %50, 24
  %52 = and i32 %51, 255
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = load %struct.rvu*, %struct.rvu** %5, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @NIX_AF_LFX_TX_STATX(i32 %57, i32 %58)
  %60 = call i32 @rvu_write64(%struct.rvu* %55, i32 %56, i32 %59, i32 0)
  br label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %48

64:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %78, %64
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %13, align 4
  %68 = ashr i32 %67, 32
  %69 = and i32 %68, 255
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %65
  %72 = load %struct.rvu*, %struct.rvu** %5, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @NIX_AF_LFX_RX_STATX(i32 %74, i32 %75)
  %77 = call i32 @rvu_write64(%struct.rvu* %72, i32 %73, i32 %76, i32 0)
  br label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %65

81:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %41, %27
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local i32 @rvu_get_lf(%struct.rvu*, i32*, i32, i32) #1

declare dso_local i32 @rvu_read64(%struct.rvu*, i32, i32) #1

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

declare dso_local i32 @NIX_AF_LFX_TX_STATX(i32, i32) #1

declare dso_local i32 @NIX_AF_LFX_RX_STATX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
