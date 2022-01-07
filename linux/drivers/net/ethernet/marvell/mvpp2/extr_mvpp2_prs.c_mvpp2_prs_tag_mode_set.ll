; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_tag_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_tag_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i32 }

@MVPP2_PRS_TAGGED = common dso_local global i32 0, align 4
@MVPP2_PRS_EDSA = common dso_local global i32 0, align 4
@MVPP2_PRS_UNTAGGED = common dso_local global i32 0, align 4
@MVPP2_PRS_DSA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mvpp2_prs_tag_mode_set(%struct.mvpp2* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvpp2*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %72 [
    i32 130, label %9
    i32 131, label %30
    i32 129, label %51
    i32 128, label %51
  ]

9:                                                ; preds = %3
  %10 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MVPP2_PRS_TAGGED, align 4
  %13 = load i32, i32* @MVPP2_PRS_EDSA, align 4
  %14 = call i32 @mvpp2_prs_dsa_tag_set(%struct.mvpp2* %10, i32 %11, i32 1, i32 %12, i32 %13)
  %15 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @MVPP2_PRS_UNTAGGED, align 4
  %18 = load i32, i32* @MVPP2_PRS_EDSA, align 4
  %19 = call i32 @mvpp2_prs_dsa_tag_set(%struct.mvpp2* %15, i32 %16, i32 1, i32 %17, i32 %18)
  %20 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @MVPP2_PRS_TAGGED, align 4
  %23 = load i32, i32* @MVPP2_PRS_DSA, align 4
  %24 = call i32 @mvpp2_prs_dsa_tag_set(%struct.mvpp2* %20, i32 %21, i32 0, i32 %22, i32 %23)
  %25 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @MVPP2_PRS_UNTAGGED, align 4
  %28 = load i32, i32* @MVPP2_PRS_DSA, align 4
  %29 = call i32 @mvpp2_prs_dsa_tag_set(%struct.mvpp2* %25, i32 %26, i32 0, i32 %27, i32 %28)
  br label %82

30:                                               ; preds = %3
  %31 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @MVPP2_PRS_TAGGED, align 4
  %34 = load i32, i32* @MVPP2_PRS_DSA, align 4
  %35 = call i32 @mvpp2_prs_dsa_tag_set(%struct.mvpp2* %31, i32 %32, i32 1, i32 %33, i32 %34)
  %36 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @MVPP2_PRS_UNTAGGED, align 4
  %39 = load i32, i32* @MVPP2_PRS_DSA, align 4
  %40 = call i32 @mvpp2_prs_dsa_tag_set(%struct.mvpp2* %36, i32 %37, i32 1, i32 %38, i32 %39)
  %41 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @MVPP2_PRS_TAGGED, align 4
  %44 = load i32, i32* @MVPP2_PRS_EDSA, align 4
  %45 = call i32 @mvpp2_prs_dsa_tag_set(%struct.mvpp2* %41, i32 %42, i32 0, i32 %43, i32 %44)
  %46 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @MVPP2_PRS_UNTAGGED, align 4
  %49 = load i32, i32* @MVPP2_PRS_EDSA, align 4
  %50 = call i32 @mvpp2_prs_dsa_tag_set(%struct.mvpp2* %46, i32 %47, i32 0, i32 %48, i32 %49)
  br label %82

51:                                               ; preds = %3, %3
  %52 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @MVPP2_PRS_TAGGED, align 4
  %55 = load i32, i32* @MVPP2_PRS_DSA, align 4
  %56 = call i32 @mvpp2_prs_dsa_tag_set(%struct.mvpp2* %52, i32 %53, i32 0, i32 %54, i32 %55)
  %57 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @MVPP2_PRS_UNTAGGED, align 4
  %60 = load i32, i32* @MVPP2_PRS_DSA, align 4
  %61 = call i32 @mvpp2_prs_dsa_tag_set(%struct.mvpp2* %57, i32 %58, i32 0, i32 %59, i32 %60)
  %62 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @MVPP2_PRS_TAGGED, align 4
  %65 = load i32, i32* @MVPP2_PRS_EDSA, align 4
  %66 = call i32 @mvpp2_prs_dsa_tag_set(%struct.mvpp2* %62, i32 %63, i32 0, i32 %64, i32 %65)
  %67 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @MVPP2_PRS_UNTAGGED, align 4
  %70 = load i32, i32* @MVPP2_PRS_EDSA, align 4
  %71 = call i32 @mvpp2_prs_dsa_tag_set(%struct.mvpp2* %67, i32 %68, i32 0, i32 %69, i32 %70)
  br label %82

72:                                               ; preds = %3
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %7, align 4
  %77 = icmp sgt i32 %76, 130
  br i1 %77, label %78, label %81

78:                                               ; preds = %75, %72
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %83

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81, %51, %30, %9
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %78
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @mvpp2_prs_dsa_tag_set(%struct.mvpp2*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
