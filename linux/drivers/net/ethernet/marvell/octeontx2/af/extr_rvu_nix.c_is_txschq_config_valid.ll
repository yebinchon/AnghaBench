; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_is_txschq_config_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_is_txschq_config_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }

@TXSCHQ_HWREGMAP = common dso_local global i32 0, align 4
@TXSCHQ_IDX_SHIFT = common dso_local global i32 0, align 4
@NIX_TXSCH_LVL_TL4 = common dso_local global i32 0, align 4
@NIX_TXSCH_LVL_TL3 = common dso_local global i32 0, align 4
@NIX_TXSCH_LVL_TL2 = common dso_local global i32 0, align 4
@NIX_TXSCH_LVL_TL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*, i32, i32, i32, i32, i32)* @is_txschq_config_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_txschq_config_valid(%struct.rvu* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rvu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %12, align 4
  %18 = and i32 %17, 65535
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* @TXSCHQ_HWREGMAP, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @rvu_check_valid_reg(i32 %19, i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %93

25:                                               ; preds = %6
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @TXSCHQ_IDX_SHIFT, align 4
  %28 = call i32 @TXSCHQ_IDX(i32 %26, i32 %27)
  store i32 %28, i32* %15, align 4
  %29 = load %struct.rvu*, %struct.rvu** %8, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %15, align 4
  %34 = call i32 @is_valid_txschq(%struct.rvu* %29, i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %93

37:                                               ; preds = %25
  %38 = load i32, i32* %13, align 4
  %39 = ashr i32 %38, 16
  %40 = and i32 %39, 511
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @NIX_AF_MDQX_PARENT(i32 0)
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = load %struct.rvu*, %struct.rvu** %8, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @NIX_TXSCH_LVL_TL4, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %16, align 4
  %50 = call i32 @is_valid_txschq(%struct.rvu* %45, i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  br label %93

53:                                               ; preds = %44, %37
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @NIX_AF_TL4X_PARENT(i32 0)
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load %struct.rvu*, %struct.rvu** %8, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @NIX_TXSCH_LVL_TL3, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %16, align 4
  %63 = call i32 @is_valid_txschq(%struct.rvu* %58, i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %57
  store i32 0, i32* %7, align 4
  br label %93

66:                                               ; preds = %57, %53
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @NIX_AF_TL3X_PARENT(i32 0)
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load %struct.rvu*, %struct.rvu** %8, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @NIX_TXSCH_LVL_TL2, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @is_valid_txschq(%struct.rvu* %71, i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %70
  store i32 0, i32* %7, align 4
  br label %93

79:                                               ; preds = %70, %66
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @NIX_AF_TL2X_PARENT(i32 0)
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load %struct.rvu*, %struct.rvu** %8, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @NIX_TXSCH_LVL_TL1, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %16, align 4
  %89 = call i32 @is_valid_txschq(%struct.rvu* %84, i32 %85, i32 %86, i32 %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %83
  store i32 0, i32* %7, align 4
  br label %93

92:                                               ; preds = %83, %79
  store i32 1, i32* %7, align 4
  br label %93

93:                                               ; preds = %92, %91, %78, %65, %52, %36, %24
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i32 @rvu_check_valid_reg(i32, i32, i32) #1

declare dso_local i32 @TXSCHQ_IDX(i32, i32) #1

declare dso_local i32 @is_valid_txschq(%struct.rvu*, i32, i32, i32, i32) #1

declare dso_local i32 @NIX_AF_MDQX_PARENT(i32) #1

declare dso_local i32 @NIX_AF_TL4X_PARENT(i32) #1

declare dso_local i32 @NIX_AF_TL3X_PARENT(i32) #1

declare dso_local i32 @NIX_AF_TL2X_PARENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
