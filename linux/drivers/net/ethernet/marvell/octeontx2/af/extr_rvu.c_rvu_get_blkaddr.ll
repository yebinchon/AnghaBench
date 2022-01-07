; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_get_blkaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_get_blkaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@BLKADDR_NPC = common dso_local global i32 0, align 4
@BLKADDR_NPA = common dso_local global i32 0, align 4
@BLKADDR_NIX0 = common dso_local global i32 0, align 4
@BLKADDR_SSO = common dso_local global i32 0, align 4
@BLKADDR_SSOW = common dso_local global i32 0, align 4
@BLKADDR_TIM = common dso_local global i32 0, align 4
@BLKADDR_CPT0 = common dso_local global i32 0, align 4
@RVU_PFVF_FUNC_MASK = common dso_local global i32 0, align 4
@RVU_PRIV_PFX_NIX0_CFG = common dso_local global i32 0, align 4
@RVU_PRIV_HWVFX_NIX0_CFG = common dso_local global i32 0, align 4
@BLKADDR_RVUM = common dso_local global i32 0, align 4
@RVU_PRIV_PFX_CPT0_CFG = common dso_local global i32 0, align 4
@RVU_PRIV_HWVFX_CPT0_CFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_get_blkaddr(%struct.rvu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %38 [
    i32 131, label %16
    i32 132, label %18
    i32 133, label %20
    i32 130, label %26
    i32 129, label %28
    i32 128, label %30
    i32 134, label %32
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* @BLKADDR_NPC, align 4
  store i32 %17, i32* %9, align 4
  br label %99

18:                                               ; preds = %3
  %19 = load i32, i32* @BLKADDR_NPA, align 4
  store i32 %19, i32* %9, align 4
  br label %99

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @BLKADDR_NIX0, align 4
  store i32 %24, i32* %9, align 4
  br label %99

25:                                               ; preds = %20
  br label %38

26:                                               ; preds = %3
  %27 = load i32, i32* @BLKADDR_SSO, align 4
  store i32 %27, i32* %9, align 4
  br label %99

28:                                               ; preds = %3
  %29 = load i32, i32* @BLKADDR_SSOW, align 4
  store i32 %29, i32* %9, align 4
  br label %99

30:                                               ; preds = %3
  %31 = load i32, i32* @BLKADDR_TIM, align 4
  store i32 %31, i32* %9, align 4
  br label %99

32:                                               ; preds = %3
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @BLKADDR_CPT0, align 4
  store i32 %36, i32* %9, align 4
  br label %99

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %3, %37, %25
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @RVU_PFVF_FUNC_MASK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  store i32 0, i32* %12, align 4
  %44 = load %struct.rvu*, %struct.rvu** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @rvu_get_hwvf(%struct.rvu* %44, i32 %45)
  store i32 %46, i32* %8, align 4
  br label %50

47:                                               ; preds = %38
  store i32 1, i32* %12, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @rvu_get_pf(i32 %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %47, %43
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %51, 133
  br i1 %52, label %53, label %74

53:                                               ; preds = %50
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* @RVU_PRIV_PFX_NIX0_CFG, align 4
  br label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @RVU_PRIV_HWVFX_NIX0_CFG, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  store i32 %61, i32* %11, align 4
  %62 = load %struct.rvu*, %struct.rvu** %5, align 8
  %63 = load i32, i32* @BLKADDR_RVUM, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %8, align 4
  %66 = shl i32 %65, 16
  %67 = or i32 %64, %66
  %68 = call i32 @rvu_read64(%struct.rvu* %62, i32 %63, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i32, i32* @BLKADDR_NIX0, align 4
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %71, %60
  br label %74

74:                                               ; preds = %73, %50
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %75, 134
  br i1 %76, label %77, label %98

77:                                               ; preds = %74
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* @RVU_PRIV_PFX_CPT0_CFG, align 4
  br label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @RVU_PRIV_HWVFX_CPT0_CFG, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  store i32 %85, i32* %11, align 4
  %86 = load %struct.rvu*, %struct.rvu** %5, align 8
  %87 = load i32, i32* @BLKADDR_RVUM, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %8, align 4
  %90 = shl i32 %89, 16
  %91 = or i32 %88, %90
  %92 = call i32 @rvu_read64(%struct.rvu* %86, i32 %87, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %84
  %96 = load i32, i32* @BLKADDR_CPT0, align 4
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %95, %84
  br label %98

98:                                               ; preds = %97, %74
  br label %99

99:                                               ; preds = %98, %35, %30, %28, %26, %23, %18, %16
  %100 = load %struct.rvu*, %struct.rvu** %5, align 8
  %101 = getelementptr inbounds %struct.rvu, %struct.rvu* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i64 @is_block_implemented(i32 %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %4, align 4
  br label %111

108:                                              ; preds = %99
  %109 = load i32, i32* @ENODEV, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %108, %106
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @rvu_get_hwvf(%struct.rvu*, i32) #1

declare dso_local i32 @rvu_get_pf(i32) #1

declare dso_local i32 @rvu_read64(%struct.rvu*, i32, i32) #1

declare dso_local i64 @is_block_implemented(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
