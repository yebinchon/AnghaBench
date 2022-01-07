; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_sram_ri_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_sram_ri_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_prs_entry = type { i32 }

@MVPP2_PRS_SRAM_RI_CTRL_BITS = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_RI_OFFS = common dso_local global i64 0, align 8
@MVPP2_PRS_SRAM_RI_CTRL_OFFS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_prs_entry*, i32, i32)* @mvpp2_prs_sram_ri_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mvpp2_prs_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mvpp2_prs_entry* %0, %struct.mvpp2_prs_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %46, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @MVPP2_PRS_SRAM_RI_CTRL_BITS, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %49

12:                                               ; preds = %8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @BIT(i32 %14)
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %46

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %4, align 8
  %27 = load i64, i64* @MVPP2_PRS_SRAM_RI_OFFS, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = call i32 @mvpp2_prs_sram_bits_set(%struct.mvpp2_prs_entry* %26, i64 %30, i32 1)
  br label %39

32:                                               ; preds = %19
  %33 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %4, align 8
  %34 = load i64, i64* @MVPP2_PRS_SRAM_RI_OFFS, align 8
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = call i32 @mvpp2_prs_sram_bits_clear(%struct.mvpp2_prs_entry* %33, i64 %37, i32 1)
  br label %39

39:                                               ; preds = %32, %25
  %40 = load %struct.mvpp2_prs_entry*, %struct.mvpp2_prs_entry** %4, align 8
  %41 = load i64, i64* @MVPP2_PRS_SRAM_RI_CTRL_OFFS, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = call i32 @mvpp2_prs_sram_bits_set(%struct.mvpp2_prs_entry* %40, i64 %44, i32 1)
  br label %46

46:                                               ; preds = %39, %18
  %47 = load i32, i32* %7, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %8

49:                                               ; preds = %8
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mvpp2_prs_sram_bits_set(%struct.mvpp2_prs_entry*, i64, i32) #1

declare dso_local i32 @mvpp2_prs_sram_bits_clear(%struct.mvpp2_prs_entry*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
