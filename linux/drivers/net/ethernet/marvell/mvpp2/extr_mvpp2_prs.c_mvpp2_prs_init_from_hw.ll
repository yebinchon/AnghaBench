; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_init_from_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_init_from_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i32 }
%struct.mvpp2_prs_entry = type { i32, i32*, i8** }

@MVPP2_PRS_TCAM_SRAM_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MVPP2_PRS_TCAM_IDX_REG = common dso_local global i32 0, align 4
@MVPP2_PRS_TCAM_INV_WORD = common dso_local global i64 0, align 8
@MVPP2_PRS_TCAM_INV_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_TCAM_ENTRY_INVALID = common dso_local global i32 0, align 4
@MVPP2_PRS_TCAM_WORDS = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_IDX_REG = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_WORDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mvpp2_prs_init_from_hw(%struct.mvpp2* %0, %struct.mvpp2_prs_entry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvpp2*, align 8
  %6 = alloca %struct.mvpp2_prs_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %5, align 8
  store %struct.mvpp2_prs_entry* %1, %struct.mvpp2_prs_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @MVPP2_PRS_TCAM_SRAM_SIZE, align 4
  %11 = sub nsw i32 %10, 1
  %12 = icmp sgt i32 %9, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %96

16:                                               ; preds = %3
  %17 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %6, align 8
  %18 = call i32 @memset(%struct.mvpp2_prs_entry* %17, i32 0, i32 24)
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %6, align 8
  %21 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %23 = load i32, i32* @MVPP2_PRS_TCAM_IDX_REG, align 4
  %24 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %6, align 8
  %25 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @mvpp2_write(%struct.mvpp2* %22, i32 %23, i32 %26)
  %28 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %29 = load i64, i64* @MVPP2_PRS_TCAM_INV_WORD, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @MVPP2_PRS_TCAM_DATA_REG(i32 %30)
  %32 = call i8* @mvpp2_read(%struct.mvpp2* %28, i32 %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %6, align 8
  %35 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @MVPP2_PRS_TCAM_INV_WORD, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 %33, i32* %38, align 4
  %39 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %6, align 8
  %40 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @MVPP2_PRS_TCAM_INV_WORD, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MVPP2_PRS_TCAM_INV_MASK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %16
  %49 = load i32, i32* @MVPP2_PRS_TCAM_ENTRY_INVALID, align 4
  store i32 %49, i32* %4, align 4
  br label %96

50:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %67, %50
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @MVPP2_PRS_TCAM_WORDS, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %51
  %56 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @MVPP2_PRS_TCAM_DATA_REG(i32 %57)
  %59 = call i8* @mvpp2_read(%struct.mvpp2* %56, i32 %58)
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %6, align 8
  %62 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %60, i32* %66, align 4
  br label %67

67:                                               ; preds = %55
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %51

70:                                               ; preds = %51
  %71 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %72 = load i32, i32* @MVPP2_PRS_SRAM_IDX_REG, align 4
  %73 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %6, align 8
  %74 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @mvpp2_write(%struct.mvpp2* %71, i32 %72, i32 %75)
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %92, %70
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @MVPP2_PRS_SRAM_WORDS, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %77
  %82 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @MVPP2_PRS_SRAM_DATA_REG(i32 %83)
  %85 = call i8* @mvpp2_read(%struct.mvpp2* %82, i32 %84)
  %86 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %6, align 8
  %87 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %86, i32 0, i32 2
  %88 = load i8**, i8*** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  store i8* %85, i8** %91, align 8
  br label %92

92:                                               ; preds = %81
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %77

95:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %48, %13
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @memset(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_write(%struct.mvpp2*, i32, i32) #1

declare dso_local i8* @mvpp2_read(%struct.mvpp2*, i32) #1

declare dso_local i32 @MVPP2_PRS_TCAM_DATA_REG(i32) #1

declare dso_local i32 @MVPP2_PRS_SRAM_DATA_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
