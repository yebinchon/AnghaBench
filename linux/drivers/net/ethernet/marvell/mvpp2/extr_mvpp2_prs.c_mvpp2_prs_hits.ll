; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_hits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_hits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i32 }

@MVPP2_PRS_TCAM_SRAM_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MVPP2_PRS_TCAM_HIT_IDX_REG = common dso_local global i32 0, align 4
@MVPP2_PRS_TCAM_HIT_CNT_REG = common dso_local global i32 0, align 4
@MVPP2_PRS_TCAM_HIT_CNT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mvpp2_prs_hits(%struct.mvpp2* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvpp2*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @MVPP2_PRS_TCAM_SRAM_SIZE, align 4
  %9 = icmp sgt i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %25

13:                                               ; preds = %2
  %14 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %15 = load i32, i32* @MVPP2_PRS_TCAM_HIT_IDX_REG, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @mvpp2_write(%struct.mvpp2* %14, i32 %15, i32 %16)
  %18 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %19 = load i32, i32* @MVPP2_PRS_TCAM_HIT_CNT_REG, align 4
  %20 = call i32 @mvpp2_read(%struct.mvpp2* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @MVPP2_PRS_TCAM_HIT_CNT_MASK, align 4
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %13, %10
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @mvpp2_write(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @mvpp2_read(%struct.mvpp2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
