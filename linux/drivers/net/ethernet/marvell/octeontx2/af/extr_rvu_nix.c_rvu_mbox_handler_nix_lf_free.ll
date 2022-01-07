; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_mbox_handler_nix_lf_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_mbox_handler_nix_lf_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32, %struct.rvu_hwinfo* }
%struct.rvu_hwinfo = type { %struct.rvu_block* }
%struct.rvu_block = type { i64 }
%struct.msg_req = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.msg_rsp = type { i32 }
%struct.rvu_pfvf = type { i32 }

@BLKTYPE_NIX = common dso_local global i32 0, align 4
@NIX_AF_ERR_AF_LF_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to reset NIX%d LF%d\0A\00", align 1
@BLKADDR_NIX0 = common dso_local global i64 0, align 8
@NIX_AF_ERR_LF_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_mbox_handler_nix_lf_free(%struct.rvu* %0, %struct.msg_req* %1, %struct.msg_rsp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.msg_req*, align 8
  %7 = alloca %struct.msg_rsp*, align 8
  %8 = alloca %struct.rvu_hwinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rvu_block*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rvu_pfvf*, align 8
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.msg_req* %1, %struct.msg_req** %6, align 8
  store %struct.msg_rsp* %2, %struct.msg_rsp** %7, align 8
  %15 = load %struct.rvu*, %struct.rvu** %5, align 8
  %16 = getelementptr inbounds %struct.rvu, %struct.rvu* %15, i32 0, i32 1
  %17 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %16, align 8
  store %struct.rvu_hwinfo* %17, %struct.rvu_hwinfo** %8, align 8
  %18 = load %struct.msg_req*, %struct.msg_req** %6, align 8
  %19 = getelementptr inbounds %struct.msg_req, %struct.msg_req* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.rvu*, %struct.rvu** %5, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu* %22, i32 %23)
  store %struct.rvu_pfvf* %24, %struct.rvu_pfvf** %14, align 8
  %25 = load %struct.rvu*, %struct.rvu** %5, align 8
  %26 = load i32, i32* @BLKTYPE_NIX, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @rvu_get_blkaddr(%struct.rvu* %25, i32 %26, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %14, align 8
  %30 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %3
  %37 = load i32, i32* @NIX_AF_ERR_AF_LF_INVALID, align 4
  store i32 %37, i32* %4, align 4
  br label %80

38:                                               ; preds = %33
  %39 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %8, align 8
  %40 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %39, i32 0, i32 0
  %41 = load %struct.rvu_block*, %struct.rvu_block** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %41, i64 %43
  store %struct.rvu_block* %44, %struct.rvu_block** %10, align 8
  %45 = load %struct.rvu*, %struct.rvu** %5, align 8
  %46 = load %struct.rvu_block*, %struct.rvu_block** %10, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @rvu_get_lf(%struct.rvu* %45, %struct.rvu_block* %46, i32 %47, i32 0)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = load i32, i32* @NIX_AF_ERR_AF_LF_INVALID, align 4
  store i32 %52, i32* %4, align 4
  br label %80

53:                                               ; preds = %38
  %54 = load %struct.rvu*, %struct.rvu** %5, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @nix_interface_deinit(%struct.rvu* %54, i32 %55, i32 %56)
  %58 = load %struct.rvu*, %struct.rvu** %5, align 8
  %59 = load %struct.rvu_block*, %struct.rvu_block** %10, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @rvu_lf_reset(%struct.rvu* %58, %struct.rvu_block* %59, i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %53
  %65 = load %struct.rvu*, %struct.rvu** %5, align 8
  %66 = getelementptr inbounds %struct.rvu, %struct.rvu* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.rvu_block*, %struct.rvu_block** %10, align 8
  %69 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @BLKADDR_NIX0, align 8
  %72 = sub nsw i64 %70, %71
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %72, i32 %73)
  %75 = load i32, i32* @NIX_AF_ERR_LF_RESET, align 4
  store i32 %75, i32* %4, align 4
  br label %80

76:                                               ; preds = %53
  %77 = load %struct.rvu*, %struct.rvu** %5, align 8
  %78 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %14, align 8
  %79 = call i32 @nix_ctx_free(%struct.rvu* %77, %struct.rvu_pfvf* %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %76, %64, %51, %36
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu*, i32) #1

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local i32 @rvu_get_lf(%struct.rvu*, %struct.rvu_block*, i32, i32) #1

declare dso_local i32 @nix_interface_deinit(%struct.rvu*, i32, i32) #1

declare dso_local i32 @rvu_lf_reset(%struct.rvu*, %struct.rvu_block*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i32) #1

declare dso_local i32 @nix_ctx_free(%struct.rvu*, %struct.rvu_pfvf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
