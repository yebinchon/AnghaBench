; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_hw_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_hw_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i32 }
%struct.mvpp2_prs_entry = type { i32, i32*, i32* }

@MVPP2_PRS_TCAM_SRAM_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MVPP2_PRS_TCAM_INV_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_TCAM_INV_WORD = common dso_local global i64 0, align 8
@MVPP2_PRS_TCAM_IDX_REG = common dso_local global i32 0, align 4
@MVPP2_PRS_TCAM_WORDS = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_IDX_REG = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_WORDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2*, %struct.mvpp2_prs_entry*)* @mvpp2_prs_hw_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_prs_hw_write(%struct.mvpp2* %0, %struct.mvpp2_prs_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvpp2*, align 8
  %5 = alloca %struct.mvpp2_prs_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %4, align 8
  store %struct.mvpp2_prs_entry* %1, %struct.mvpp2_prs_entry** %5, align 8
  %7 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %5, align 8
  %8 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @MVPP2_PRS_TCAM_SRAM_SIZE, align 4
  %11 = sub nsw i32 %10, 1
  %12 = icmp sgt i32 %9, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %78

16:                                               ; preds = %2
  %17 = load i32, i32* @MVPP2_PRS_TCAM_INV_MASK, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %5, align 8
  %20 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @MVPP2_PRS_TCAM_INV_WORD, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %18
  store i32 %25, i32* %23, align 4
  %26 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %27 = load i32, i32* @MVPP2_PRS_TCAM_IDX_REG, align 4
  %28 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %5, align 8
  %29 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @mvpp2_write(%struct.mvpp2* %26, i32 %27, i32 %30)
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %48, %16
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @MVPP2_PRS_TCAM_WORDS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @MVPP2_PRS_TCAM_DATA_REG(i32 %38)
  %40 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %5, align 8
  %41 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @mvpp2_write(%struct.mvpp2* %37, i32 %39, i32 %46)
  br label %48

48:                                               ; preds = %36
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %32

51:                                               ; preds = %32
  %52 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %53 = load i32, i32* @MVPP2_PRS_SRAM_IDX_REG, align 4
  %54 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %5, align 8
  %55 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @mvpp2_write(%struct.mvpp2* %52, i32 %53, i32 %56)
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %74, %51
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @MVPP2_PRS_SRAM_WORDS, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %58
  %63 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @MVPP2_PRS_SRAM_DATA_REG(i32 %64)
  %66 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %5, align 8
  %67 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @mvpp2_write(%struct.mvpp2* %63, i32 %65, i32 %72)
  br label %74

74:                                               ; preds = %62
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %58

77:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %13
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @mvpp2_write(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @MVPP2_PRS_TCAM_DATA_REG(i32) #1

declare dso_local i32 @MVPP2_PRS_SRAM_DATA_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
