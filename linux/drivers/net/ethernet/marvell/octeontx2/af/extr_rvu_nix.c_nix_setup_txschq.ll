; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_setup_txschq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_setup_txschq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.nix_hw = type { %struct.nix_txsch* }
%struct.nix_txsch = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@NIX_TXSCH_LVL_CNT = common dso_local global i32 0, align 4
@NIX_AF_MDQ_CONST = common dso_local global i32 0, align 4
@NIX_AF_TL4_CONST = common dso_local global i32 0, align 4
@NIX_AF_TL3_CONST = common dso_local global i32 0, align 4
@NIX_AF_TL2_CONST = common dso_local global i32 0, align 4
@NIX_AF_TL1_CONST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@U8_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*, %struct.nix_hw*, i32)* @nix_setup_txschq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nix_setup_txschq(%struct.rvu* %0, %struct.nix_hw* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.nix_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nix_txsch*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.nix_hw* %1, %struct.nix_hw** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %87, %3
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* @NIX_TXSCH_LVL_CNT, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %90

17:                                               ; preds = %13
  %18 = load %struct.nix_hw*, %struct.nix_hw** %6, align 8
  %19 = getelementptr inbounds %struct.nix_hw, %struct.nix_hw* %18, i32 0, i32 0
  %20 = load %struct.nix_txsch*, %struct.nix_txsch** %19, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %20, i64 %22
  store %struct.nix_txsch* %23, %struct.nix_txsch** %8, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.nix_txsch*, %struct.nix_txsch** %8, align 8
  %26 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %12, align 4
  switch i32 %27, label %38 [
    i32 132, label %28
    i32 128, label %30
    i32 129, label %32
    i32 130, label %34
    i32 131, label %36
  ]

28:                                               ; preds = %17
  %29 = load i32, i32* @NIX_AF_MDQ_CONST, align 4
  store i32 %29, i32* %10, align 4
  br label %38

30:                                               ; preds = %17
  %31 = load i32, i32* @NIX_AF_TL4_CONST, align 4
  store i32 %31, i32* %10, align 4
  br label %38

32:                                               ; preds = %17
  %33 = load i32, i32* @NIX_AF_TL3_CONST, align 4
  store i32 %33, i32* %10, align 4
  br label %38

34:                                               ; preds = %17
  %35 = load i32, i32* @NIX_AF_TL2_CONST, align 4
  store i32 %35, i32* %10, align 4
  br label %38

36:                                               ; preds = %17
  %37 = load i32, i32* @NIX_AF_TL1_CONST, align 4
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %17, %36, %34, %32, %30, %28
  %39 = load %struct.rvu*, %struct.rvu** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @rvu_read64(%struct.rvu* %39, i32 %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 65535
  %45 = load %struct.nix_txsch*, %struct.nix_txsch** %8, align 8
  %46 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.nix_txsch*, %struct.nix_txsch** %8, align 8
  %49 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %48, i32 0, i32 1
  %50 = call i32 @rvu_alloc_bitmap(%struct.TYPE_2__* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %38
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %4, align 4
  br label %91

55:                                               ; preds = %38
  %56 = load %struct.rvu*, %struct.rvu** %5, align 8
  %57 = getelementptr inbounds %struct.rvu, %struct.rvu* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.nix_txsch*, %struct.nix_txsch** %8, align 8
  %60 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i32 @devm_kcalloc(i32 %58, i32 %62, i32 4, i32 %63)
  %65 = load %struct.nix_txsch*, %struct.nix_txsch** %8, align 8
  %66 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.nix_txsch*, %struct.nix_txsch** %8, align 8
  %68 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %55
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %91

74:                                               ; preds = %55
  %75 = load %struct.nix_txsch*, %struct.nix_txsch** %8, align 8
  %76 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @U8_MAX, align 4
  %79 = load %struct.nix_txsch*, %struct.nix_txsch** %8, align 8
  %80 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 4
  %85 = trunc i64 %84 to i32
  %86 = call i32 @memset(i32 %77, i32 %78, i32 %85)
  br label %87

87:                                               ; preds = %74
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %12, align 4
  br label %13

90:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %71, %53
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @rvu_read64(%struct.rvu*, i32, i32) #1

declare dso_local i32 @rvu_alloc_bitmap(%struct.TYPE_2__*) #1

declare dso_local i32 @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
