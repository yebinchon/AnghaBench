; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_reserve_flowkey_alg_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_reserve_flowkey_alg_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.nix_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }
%struct.nix_rx_flowkey_alg = type { i32 }

@FIELDS_PER_ALG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NIX_FLOW_KEY_ALG_MAX = common dso_local global i32 0, align 4
@NIX_AF_ERR_RSS_NOSPC_ALGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*, i32, i32)* @reserve_flowkey_alg_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reserve_flowkey_alg_idx(%struct.rvu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nix_hw*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @FIELDS_PER_ALG, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load %struct.rvu*, %struct.rvu** %5, align 8
  %19 = getelementptr inbounds %struct.rvu, %struct.rvu* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.nix_hw* @get_nix_hw(i32 %20, i32 %21)
  store %struct.nix_hw* %22, %struct.nix_hw** %10, align 8
  %23 = load %struct.nix_hw*, %struct.nix_hw** %10, align 8
  %24 = icmp ne %struct.nix_hw* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %86

28:                                               ; preds = %3
  %29 = load %struct.nix_hw*, %struct.nix_hw** %10, align 8
  %30 = getelementptr inbounds %struct.nix_hw, %struct.nix_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @NIX_FLOW_KEY_ALG_MAX, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @NIX_AF_ERR_RSS_NOSPC_ALGO, align 4
  store i32 %36, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %86

37:                                               ; preds = %28
  %38 = bitcast i32* %17 to %struct.nix_rx_flowkey_alg*
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @set_flowkey_fields(%struct.nix_rx_flowkey_alg* %38, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %86

45:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %64, %45
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @FIELDS_PER_ALG, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = load %struct.rvu*, %struct.rvu** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.nix_hw*, %struct.nix_hw** %10, align 8
  %54 = getelementptr inbounds %struct.nix_hw, %struct.nix_hw* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @NIX_AF_RX_FLOW_KEY_ALGX_FIELDX(i32 %56, i32 %57)
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %17, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @rvu_write64(%struct.rvu* %51, i32 %52, i32 %58, i32 %62)
  br label %64

64:                                               ; preds = %50
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %46

67:                                               ; preds = %46
  %68 = load %struct.nix_hw*, %struct.nix_hw** %10, align 8
  %69 = getelementptr inbounds %struct.nix_hw, %struct.nix_hw* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.nix_hw*, %struct.nix_hw** %10, align 8
  %74 = getelementptr inbounds %struct.nix_hw, %struct.nix_hw* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %72, i32* %79, align 4
  %80 = load %struct.nix_hw*, %struct.nix_hw** %10, align 8
  %81 = getelementptr inbounds %struct.nix_hw, %struct.nix_hw* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %86

86:                                               ; preds = %67, %43, %35, %25
  %87 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.nix_hw* @get_nix_hw(i32, i32) #2

declare dso_local i32 @set_flowkey_fields(%struct.nix_rx_flowkey_alg*, i32) #2

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #2

declare dso_local i32 @NIX_AF_RX_FLOW_KEY_ALGX_FIELDX(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
