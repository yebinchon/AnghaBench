; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_crc32.c_mlx5dr_crc32_slice8_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_crc32.c_mlx5dr_crc32_slice8_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dr_ste_crc_tab32 = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5dr_crc32_slice8_calc(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %146

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %20, %16
  %18 = load i64, i64* %5, align 8
  %19 = icmp uge i64 %18, 8
  br i1 %19, label %20, label %108

20:                                               ; preds = %17
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %6, align 8
  %23 = load i32, i32* %21, align 4
  %24 = load i32, i32* %8, align 4
  %25 = xor i32 %23, %24
  store i32 %25, i32* %9, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %6, align 8
  %28 = load i32, i32* %26, align 4
  store i32 %28, i32* %10, align 4
  %29 = load i32**, i32*** @dr_ste_crc_tab32, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = ashr i32 %32, 24
  %34 = and i32 %33, 255
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32**, i32*** @dr_ste_crc_tab32, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = ashr i32 %41, 16
  %43 = and i32 %42, 255
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = xor i32 %37, %46
  %48 = load i32**, i32*** @dr_ste_crc_tab32, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = ashr i32 %51, 8
  %53 = and i32 %52, 255
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = xor i32 %47, %56
  %58 = load i32**, i32*** @dr_ste_crc_tab32, align 8
  %59 = getelementptr inbounds i32*, i32** %58, i64 3
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %61, 255
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = xor i32 %57, %65
  %67 = load i32**, i32*** @dr_ste_crc_tab32, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 4
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = ashr i32 %70, 24
  %72 = and i32 %71, 255
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = xor i32 %66, %75
  %77 = load i32**, i32*** @dr_ste_crc_tab32, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i64 5
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = ashr i32 %80, 16
  %82 = and i32 %81, 255
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = xor i32 %76, %85
  %87 = load i32**, i32*** @dr_ste_crc_tab32, align 8
  %88 = getelementptr inbounds i32*, i32** %87, i64 6
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = ashr i32 %90, 8
  %92 = and i32 %91, 255
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %89, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = xor i32 %86, %95
  %97 = load i32**, i32*** @dr_ste_crc_tab32, align 8
  %98 = getelementptr inbounds i32*, i32** %97, i64 7
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = and i32 %100, 255
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = xor i32 %96, %104
  store i32 %105, i32* %8, align 4
  %106 = load i64, i64* %5, align 8
  %107 = sub i64 %106, 8
  store i64 %107, i64* %5, align 8
  br label %17

108:                                              ; preds = %17
  %109 = load i32*, i32** %6, align 8
  store i32* %109, i32** %7, align 8
  br label %110

110:                                              ; preds = %114, %108
  %111 = load i64, i64* %5, align 8
  %112 = add i64 %111, -1
  store i64 %112, i64* %5, align 8
  %113 = icmp ne i64 %111, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %110
  %115 = load i32, i32* %8, align 4
  %116 = ashr i32 %115, 8
  %117 = load i32**, i32*** @dr_ste_crc_tab32, align 8
  %118 = getelementptr inbounds i32*, i32** %117, i64 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = and i32 %120, 255
  %122 = load i32*, i32** %7, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %7, align 8
  %124 = load i32, i32* %122, align 4
  %125 = xor i32 %121, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %119, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = xor i32 %116, %128
  store i32 %129, i32* %8, align 4
  br label %110

130:                                              ; preds = %110
  %131 = load i32, i32* %8, align 4
  %132 = ashr i32 %131, 24
  %133 = and i32 %132, 255
  %134 = load i32, i32* %8, align 4
  %135 = shl i32 %134, 8
  %136 = and i32 %135, 16711680
  %137 = or i32 %133, %136
  %138 = load i32, i32* %8, align 4
  %139 = ashr i32 %138, 8
  %140 = and i32 %139, 65280
  %141 = or i32 %137, %140
  %142 = load i32, i32* %8, align 4
  %143 = shl i32 %142, 24
  %144 = and i32 %143, -16777216
  %145 = or i32 %141, %144
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %130, %15
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
