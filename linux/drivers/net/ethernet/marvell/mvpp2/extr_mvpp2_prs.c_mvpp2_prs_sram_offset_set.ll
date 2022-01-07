; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_sram_offset_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_sram_offset_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_prs_entry = type { i32 }

@MVPP2_PRS_SRAM_UDF_SIGN_BIT = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_UDF_OFFS = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_UDF_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_UDF_TYPE_OFFS = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_UDF_TYPE_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_OP_SEL_UDF_OFFS = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_OP_SEL_UDF_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_OP_SEL_BASE_OFFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_prs_entry*, i32, i32, i32)* @mvpp2_prs_sram_offset_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_prs_sram_offset_set(%struct.mvpp2_prs_entry* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mvpp2_prs_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mvpp2_prs_entry* %0, %struct.mvpp2_prs_entry** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %4
  %12 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %5, align 8
  %13 = load i32, i32* @MVPP2_PRS_SRAM_UDF_SIGN_BIT, align 4
  %14 = call i32 @mvpp2_prs_sram_bits_set(%struct.mvpp2_prs_entry* %12, i32 %13, i32 1)
  %15 = load i32, i32* %7, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %7, align 4
  br label %21

17:                                               ; preds = %4
  %18 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %5, align 8
  %19 = load i32, i32* @MVPP2_PRS_SRAM_UDF_SIGN_BIT, align 4
  %20 = call i32 @mvpp2_prs_sram_bits_clear(%struct.mvpp2_prs_entry* %18, i32 %19, i32 1)
  br label %21

21:                                               ; preds = %17, %11
  %22 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %5, align 8
  %23 = load i32, i32* @MVPP2_PRS_SRAM_UDF_OFFS, align 4
  %24 = load i32, i32* @MVPP2_PRS_SRAM_UDF_MASK, align 4
  %25 = call i32 @mvpp2_prs_sram_bits_clear(%struct.mvpp2_prs_entry* %22, i32 %23, i32 %24)
  %26 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %5, align 8
  %27 = load i32, i32* @MVPP2_PRS_SRAM_UDF_OFFS, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @MVPP2_PRS_SRAM_UDF_MASK, align 4
  %30 = and i32 %28, %29
  %31 = call i32 @mvpp2_prs_sram_bits_set(%struct.mvpp2_prs_entry* %26, i32 %27, i32 %30)
  %32 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %5, align 8
  %33 = load i32, i32* @MVPP2_PRS_SRAM_UDF_TYPE_OFFS, align 4
  %34 = load i32, i32* @MVPP2_PRS_SRAM_UDF_TYPE_MASK, align 4
  %35 = call i32 @mvpp2_prs_sram_bits_clear(%struct.mvpp2_prs_entry* %32, i32 %33, i32 %34)
  %36 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %5, align 8
  %37 = load i32, i32* @MVPP2_PRS_SRAM_UDF_TYPE_OFFS, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @mvpp2_prs_sram_bits_set(%struct.mvpp2_prs_entry* %36, i32 %37, i32 %38)
  %40 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %5, align 8
  %41 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_UDF_OFFS, align 4
  %42 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_UDF_MASK, align 4
  %43 = call i32 @mvpp2_prs_sram_bits_clear(%struct.mvpp2_prs_entry* %40, i32 %41, i32 %42)
  %44 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %5, align 8
  %45 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_UDF_OFFS, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_UDF_MASK, align 4
  %48 = and i32 %46, %47
  %49 = call i32 @mvpp2_prs_sram_bits_set(%struct.mvpp2_prs_entry* %44, i32 %45, i32 %48)
  %50 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %5, align 8
  %51 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_BASE_OFFS, align 4
  %52 = call i32 @mvpp2_prs_sram_bits_clear(%struct.mvpp2_prs_entry* %50, i32 %51, i32 1)
  ret void
}

declare dso_local i32 @mvpp2_prs_sram_bits_set(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_bits_clear(%struct.mvpp2_prs_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
