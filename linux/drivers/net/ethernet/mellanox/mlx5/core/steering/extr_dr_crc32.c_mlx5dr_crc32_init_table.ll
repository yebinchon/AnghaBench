; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_crc32.c_mlx5dr_crc32_init_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_crc32.c_mlx5dr_crc32_init_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DR_STE_CRC_POLY = common dso_local global i32 0, align 4
@dr_ste_crc_tab32 = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5dr_crc32_init_table() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %37, %0
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 256
  br i1 %6, label %7, label %40

7:                                                ; preds = %4
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* %1, align 4
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %26, %7
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = and i64 %14, 1
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i32, i32* %1, align 4
  %19 = ashr i32 %18, 1
  %20 = load i32, i32* @DR_STE_CRC_POLY, align 4
  %21 = xor i32 %19, %20
  store i32 %21, i32* %1, align 4
  br label %25

22:                                               ; preds = %12
  %23 = load i32, i32* %1, align 4
  %24 = ashr i32 %23, 1
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %22, %17
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %9

29:                                               ; preds = %9
  %30 = load i32, i32* %1, align 4
  %31 = load i32**, i32*** @dr_ste_crc_tab32, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %30, i32* %36, align 4
  br label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %2, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %2, align 4
  br label %4

40:                                               ; preds = %4
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %66, %40
  %42 = load i32, i32* %2, align 4
  %43 = icmp slt i32 %42, 256
  br i1 %43, label %44, label %69

44:                                               ; preds = %41
  %45 = load i32**, i32*** @dr_ste_crc_tab32, align 8
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @dr_crc32_calc_lookup_entry(i32** %45, i32 1, i32 %46)
  %48 = load i32**, i32*** @dr_ste_crc_tab32, align 8
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @dr_crc32_calc_lookup_entry(i32** %48, i32 2, i32 %49)
  %51 = load i32**, i32*** @dr_ste_crc_tab32, align 8
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @dr_crc32_calc_lookup_entry(i32** %51, i32 3, i32 %52)
  %54 = load i32**, i32*** @dr_ste_crc_tab32, align 8
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @dr_crc32_calc_lookup_entry(i32** %54, i32 4, i32 %55)
  %57 = load i32**, i32*** @dr_ste_crc_tab32, align 8
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @dr_crc32_calc_lookup_entry(i32** %57, i32 5, i32 %58)
  %60 = load i32**, i32*** @dr_ste_crc_tab32, align 8
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @dr_crc32_calc_lookup_entry(i32** %60, i32 6, i32 %61)
  %63 = load i32**, i32*** @dr_ste_crc_tab32, align 8
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @dr_crc32_calc_lookup_entry(i32** %63, i32 7, i32 %64)
  br label %66

66:                                               ; preds = %44
  %67 = load i32, i32* %2, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %2, align 4
  br label %41

69:                                               ; preds = %41
  ret void
}

declare dso_local i32 @dr_crc32_calc_lookup_entry(i32**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
