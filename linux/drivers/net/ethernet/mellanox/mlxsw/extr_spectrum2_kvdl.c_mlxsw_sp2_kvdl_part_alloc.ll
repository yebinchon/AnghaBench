; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_kvdl.c_mlxsw_sp2_kvdl_part_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_kvdl.c_mlxsw_sp2_kvdl_part_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp2_kvdl_part = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp2_kvdl_part*, i32, i32*)* @mlxsw_sp2_kvdl_part_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp2_kvdl_part_alloc(%struct.mlxsw_sp2_kvdl_part* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp2_kvdl_part*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlxsw_sp2_kvdl_part* %0, %struct.mlxsw_sp2_kvdl_part** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.mlxsw_sp2_kvdl_part*, %struct.mlxsw_sp2_kvdl_part** %5, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part, %struct.mlxsw_sp2_kvdl_part* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @DIV_ROUND_UP(i32 %12, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.mlxsw_sp2_kvdl_part*, %struct.mlxsw_sp2_kvdl_part** %5, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @mlxsw_sp2_kvdl_part_find_zero_bits(%struct.mlxsw_sp2_kvdl_part* %17, i32 %18, i32* %9)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %4, align 4
  br label %47

24:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %37, %24
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = add i32 %30, %31
  %33 = load %struct.mlxsw_sp2_kvdl_part*, %struct.mlxsw_sp2_kvdl_part** %5, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part, %struct.mlxsw_sp2_kvdl_part* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @__set_bit(i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %10, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %25

40:                                               ; preds = %25
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.mlxsw_sp2_kvdl_part*, %struct.mlxsw_sp2_kvdl_part** %5, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part, %struct.mlxsw_sp2_kvdl_part* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = mul i32 %41, %44
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %40, %22
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @mlxsw_sp2_kvdl_part_find_zero_bits(%struct.mlxsw_sp2_kvdl_part*, i32, i32*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
