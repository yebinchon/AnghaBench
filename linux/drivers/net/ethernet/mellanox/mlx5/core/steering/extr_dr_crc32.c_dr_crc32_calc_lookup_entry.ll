; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_crc32.c_dr_crc32_calc_lookup_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_crc32.c_dr_crc32_calc_lookup_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([256 x i32]*, i64, i64)* @dr_crc32_calc_lookup_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dr_crc32_calc_lookup_entry([256 x i32]* %0, i64 %1, i64 %2) #0 {
  %4 = alloca [256 x i32]*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store [256 x i32]* %0, [256 x i32]** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load [256 x i32]*, [256 x i32]** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = sub i64 %8, 1
  %10 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 %9
  %11 = load i64, i64* %6, align 8
  %12 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 8
  %15 = load [256 x i32]*, [256 x i32]** %4, align 8
  %16 = getelementptr inbounds [256 x i32], [256 x i32]* %15, i64 0
  %17 = load [256 x i32]*, [256 x i32]** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = sub i64 %18, 1
  %20 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 %19
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds [256 x i32], [256 x i32]* %20, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 255
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = xor i32 %14, %27
  %29 = load [256 x i32]*, [256 x i32]** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds [256 x i32], [256 x i32]* %29, i64 %30
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds [256 x i32], [256 x i32]* %31, i64 0, i64 %32
  store i32 %28, i32* %33, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
