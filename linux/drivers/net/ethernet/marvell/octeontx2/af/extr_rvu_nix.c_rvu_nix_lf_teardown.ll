; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_nix_lf_teardown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_nix_lf_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.rvu_pfvf = type { i64, i64, i64 }
%struct.hwctx_disable_req = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NIX_AQ_CTYPE_SQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"SQ ctx disable failed\0A\00", align 1
@NIX_AQ_CTYPE_RQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"RQ ctx disable failed\0A\00", align 1
@NIX_AQ_CTYPE_CQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"CQ ctx disable failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rvu_nix_lf_teardown(%struct.rvu* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rvu_pfvf*, align 8
  %10 = alloca %struct.hwctx_disable_req, align 4
  %11 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.rvu*, %struct.rvu** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu* %12, i32 %13)
  store %struct.rvu_pfvf* %14, %struct.rvu_pfvf** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = getelementptr inbounds %struct.hwctx_disable_req, %struct.hwctx_disable_req* %10, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.rvu*, %struct.rvu** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @nix_interface_deinit(%struct.rvu* %18, i32 %19, i32 %20)
  %22 = load %struct.rvu*, %struct.rvu** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @nix_rx_sync(%struct.rvu* %22, i32 %23)
  %25 = load %struct.rvu*, %struct.rvu** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @nix_txschq_free(%struct.rvu* %25, i32 %26)
  %28 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %9, align 8
  %29 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %4
  %33 = load i32, i32* @NIX_AQ_CTYPE_SQ, align 4
  %34 = getelementptr inbounds %struct.hwctx_disable_req, %struct.hwctx_disable_req* %10, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load %struct.rvu*, %struct.rvu** %5, align 8
  %36 = call i32 @nix_lf_hwctx_disable(%struct.rvu* %35, %struct.hwctx_disable_req* %10)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.rvu*, %struct.rvu** %5, align 8
  %41 = getelementptr inbounds %struct.rvu, %struct.rvu* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %32
  br label %45

45:                                               ; preds = %44, %4
  %46 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %9, align 8
  %47 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load i32, i32* @NIX_AQ_CTYPE_RQ, align 4
  %52 = getelementptr inbounds %struct.hwctx_disable_req, %struct.hwctx_disable_req* %10, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = load %struct.rvu*, %struct.rvu** %5, align 8
  %54 = call i32 @nix_lf_hwctx_disable(%struct.rvu* %53, %struct.hwctx_disable_req* %10)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.rvu*, %struct.rvu** %5, align 8
  %59 = getelementptr inbounds %struct.rvu, %struct.rvu* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %57, %50
  br label %63

63:                                               ; preds = %62, %45
  %64 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %9, align 8
  %65 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %63
  %69 = load i32, i32* @NIX_AQ_CTYPE_CQ, align 4
  %70 = getelementptr inbounds %struct.hwctx_disable_req, %struct.hwctx_disable_req* %10, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = load %struct.rvu*, %struct.rvu** %5, align 8
  %72 = call i32 @nix_lf_hwctx_disable(%struct.rvu* %71, %struct.hwctx_disable_req* %10)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load %struct.rvu*, %struct.rvu** %5, align 8
  %77 = getelementptr inbounds %struct.rvu, %struct.rvu* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %75, %68
  br label %81

81:                                               ; preds = %80, %63
  %82 = load %struct.rvu*, %struct.rvu** %5, align 8
  %83 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %9, align 8
  %84 = call i32 @nix_ctx_free(%struct.rvu* %82, %struct.rvu_pfvf* %83)
  ret void
}

declare dso_local %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu*, i32) #1

declare dso_local i32 @nix_interface_deinit(%struct.rvu*, i32, i32) #1

declare dso_local i32 @nix_rx_sync(%struct.rvu*, i32) #1

declare dso_local i32 @nix_txschq_free(%struct.rvu*, i32) #1

declare dso_local i32 @nix_lf_hwctx_disable(%struct.rvu*, %struct.hwctx_disable_req*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @nix_ctx_free(%struct.rvu*, %struct.rvu_pfvf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
