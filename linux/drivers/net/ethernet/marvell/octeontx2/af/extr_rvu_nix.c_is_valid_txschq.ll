; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_is_valid_txschq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_is_valid_txschq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32, i32 }
%struct.nix_txsch = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.nix_hw = type { %struct.nix_txsch* }

@NIX_TXSCH_LVL_TL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*, i32, i32, i64, i64)* @is_valid_txschq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_valid_txschq(%struct.rvu* %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rvu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.nix_txsch*, align 8
  %13 = alloca %struct.nix_hw*, align 8
  %14 = alloca i64, align 8
  store %struct.rvu* %0, %struct.rvu** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.rvu*, %struct.rvu** %7, align 8
  %16 = getelementptr inbounds %struct.rvu, %struct.rvu* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.nix_hw* @get_nix_hw(i32 %17, i32 %18)
  store %struct.nix_hw* %19, %struct.nix_hw** %13, align 8
  %20 = load %struct.nix_hw*, %struct.nix_hw** %13, align 8
  %21 = icmp ne %struct.nix_hw* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %71

23:                                               ; preds = %5
  %24 = load %struct.nix_hw*, %struct.nix_hw** %13, align 8
  %25 = getelementptr inbounds %struct.nix_hw, %struct.nix_hw* %24, i32 0, i32 0
  %26 = load %struct.nix_txsch*, %struct.nix_txsch** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %26, i64 %28
  store %struct.nix_txsch* %29, %struct.nix_txsch** %12, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load %struct.nix_txsch*, %struct.nix_txsch** %12, align 8
  %32 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp uge i64 %30, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %71

37:                                               ; preds = %23
  %38 = load %struct.rvu*, %struct.rvu** %7, align 8
  %39 = getelementptr inbounds %struct.rvu, %struct.rvu* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.nix_txsch*, %struct.nix_txsch** %12, align 8
  %42 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @TXSCH_MAP_FUNC(i32 %46)
  store i64 %47, i64* %14, align 8
  %48 = load %struct.rvu*, %struct.rvu** %7, align 8
  %49 = getelementptr inbounds %struct.rvu, %struct.rvu* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @NIX_TXSCH_LVL_TL1, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %37
  %55 = load i64, i64* %14, align 8
  %56 = call i64 @rvu_get_pf(i64 %55)
  %57 = load i64, i64* %10, align 8
  %58 = call i64 @rvu_get_pf(i64 %57)
  %59 = icmp ne i64 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 0, i32* %6, align 4
  br label %71

61:                                               ; preds = %54, %37
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @NIX_TXSCH_LVL_TL1, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* %10, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 0, i32* %6, align 4
  br label %71

70:                                               ; preds = %65, %61
  store i32 1, i32* %6, align 4
  br label %71

71:                                               ; preds = %70, %69, %60, %36, %22
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local %struct.nix_hw* @get_nix_hw(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @TXSCH_MAP_FUNC(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @rvu_get_pf(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
