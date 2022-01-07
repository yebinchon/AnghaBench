; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_setup_bcast_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_setup_bcast_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32, %struct.rvu_pfvf* }
%struct.rvu_pfvf = type { i64, i32 }
%struct.nix_hw = type { %struct.nix_mcast }
%struct.nix_mcast = type { i32 }

@BLKADDR_RVUM = common dso_local global i32 0, align 4
@RVU_PFVF_PF_SHIFT = common dso_local global i32 0, align 4
@NIX_AQ_INSTOP_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*, %struct.nix_hw*)* @nix_setup_bcast_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nix_setup_bcast_tables(%struct.rvu* %0, %struct.nix_hw* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rvu*, align 8
  %5 = alloca %struct.nix_hw*, align 8
  %6 = alloca %struct.nix_mcast*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rvu_pfvf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %4, align 8
  store %struct.nix_hw* %1, %struct.nix_hw** %5, align 8
  %14 = load %struct.nix_hw*, %struct.nix_hw** %5, align 8
  %15 = getelementptr inbounds %struct.nix_hw, %struct.nix_hw* %14, i32 0, i32 0
  store %struct.nix_mcast* %15, %struct.nix_mcast** %6, align 8
  store i32 1, i32* %8, align 4
  br label %16

16:                                               ; preds = %86, %2
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.rvu*, %struct.rvu** %4, align 8
  %19 = getelementptr inbounds %struct.rvu, %struct.rvu* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %89

23:                                               ; preds = %16
  %24 = load %struct.rvu*, %struct.rvu** %4, align 8
  %25 = load i32, i32* @BLKADDR_RVUM, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @RVU_PRIV_PFX_CFG(i32 %26)
  %28 = call i32 @rvu_read64(%struct.rvu* %24, i32 %25, i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = ashr i32 %29, 20
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  br label %86

34:                                               ; preds = %23
  %35 = load i32, i32* %13, align 4
  %36 = ashr i32 %35, 12
  %37 = and i32 %36, 255
  store i32 %37, i32* %9, align 4
  %38 = load %struct.rvu*, %struct.rvu** %4, align 8
  %39 = getelementptr inbounds %struct.rvu, %struct.rvu* %38, i32 0, i32 1
  %40 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %40, i64 %42
  store %struct.rvu_pfvf* %43, %struct.rvu_pfvf** %11, align 8
  %44 = load %struct.nix_mcast*, %struct.nix_mcast** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i64 @nix_alloc_mce_list(%struct.nix_mcast* %44, i32 %46)
  %48 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %11, align 8
  %49 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %11, align 8
  %51 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %50, i32 0, i32 1
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  %54 = call i32 @nix_mce_list_init(i32* %51, i32 %53)
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %82, %34
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %85

60:                                               ; preds = %55
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @RVU_PFVF_PF_SHIFT, align 4
  %63 = shl i32 %61, %62
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %12, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %12, align 4
  %67 = load %struct.rvu*, %struct.rvu** %4, align 8
  %68 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %11, align 8
  %69 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = load i32, i32* @NIX_AQ_INSTOP_INIT, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @nix_setup_mce(%struct.rvu* %67, i64 %73, i32 %74, i32 %75, i32 0, i32 1)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %60
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %90

81:                                               ; preds = %60
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %55

85:                                               ; preds = %55
  br label %86

86:                                               ; preds = %85, %33
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %16

89:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %79
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @rvu_read64(%struct.rvu*, i32, i32) #1

declare dso_local i32 @RVU_PRIV_PFX_CFG(i32) #1

declare dso_local i64 @nix_alloc_mce_list(%struct.nix_mcast*, i32) #1

declare dso_local i32 @nix_mce_list_init(i32*, i32) #1

declare dso_local i32 @nix_setup_mce(%struct.rvu*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
