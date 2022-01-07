; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_kvdl.c_mlxsw_sp2_kvdl_part_find_zero_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_kvdl.c_mlxsw_sp2_kvdl_part_find_zero_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp2_kvdl_part = type { i32, i32, i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp2_kvdl_part*, i32, i32*)* @mlxsw_sp2_kvdl_part_find_zero_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp2_kvdl_part_find_zero_bits(%struct.mlxsw_sp2_kvdl_part* %0, i32 %1, i32* %2) #0 {
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
  store i32 0, i32* %11, align 4
  %12 = load %struct.mlxsw_sp2_kvdl_part*, %struct.mlxsw_sp2_kvdl_part** %5, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part, %struct.mlxsw_sp2_kvdl_part* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.mlxsw_sp2_kvdl_part*, %struct.mlxsw_sp2_kvdl_part** %5, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part, %struct.mlxsw_sp2_kvdl_part* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %21, %3
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %70, %43, %22
  %25 = load %struct.mlxsw_sp2_kvdl_part*, %struct.mlxsw_sp2_kvdl_part** %5, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part, %struct.mlxsw_sp2_kvdl_part* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mlxsw_sp2_kvdl_part*, %struct.mlxsw_sp2_kvdl_part** %5, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part, %struct.mlxsw_sp2_kvdl_part* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @find_next_zero_bit(i32 %27, i32 %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %24
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add i32 %36, %37
  %39 = load %struct.mlxsw_sp2_kvdl_part*, %struct.mlxsw_sp2_kvdl_part** %5, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part, %struct.mlxsw_sp2_kvdl_part* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp uge i32 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 1, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %24

44:                                               ; preds = %35, %24
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %6, align 4
  %50 = add i32 %48, %49
  %51 = load i32, i32* %8, align 4
  %52 = icmp uge i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @ENOBUFS, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %81

56:                                               ; preds = %47, %44
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %75, %56
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %57
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = add i32 %62, %63
  %65 = load %struct.mlxsw_sp2_kvdl_part*, %struct.mlxsw_sp2_kvdl_part** %5, align 8
  %66 = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part, %struct.mlxsw_sp2_kvdl_part* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @test_bit(i32 %64, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %61
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %9, align 4
  %73 = add i32 %72, %71
  store i32 %73, i32* %9, align 4
  br label %24

74:                                               ; preds = %61
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %10, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %57

78:                                               ; preds = %57
  %79 = load i32, i32* %9, align 4
  %80 = load i32*, i32** %7, align 8
  store i32 %79, i32* %80, align 4
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %78, %53
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
