; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_kvdl.c_mlxsw_sp2_kvdl_part_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_kvdl.c_mlxsw_sp2_kvdl_part_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp2_kvdl_part = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp2_kvdl_part*, i32, i32)* @mlxsw_sp2_kvdl_part_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp2_kvdl_part_free(%struct.mlxsw_sp* %0, %struct.mlxsw_sp2_kvdl_part* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp2_kvdl_part*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp2_kvdl_part* %1, %struct.mlxsw_sp2_kvdl_part** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %14 = load %struct.mlxsw_sp2_kvdl_part*, %struct.mlxsw_sp2_kvdl_part** %6, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part, %struct.mlxsw_sp2_kvdl_part* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @mlxsw_sp2_kvdl_rec_del(%struct.mlxsw_sp* %13, i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %51

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.mlxsw_sp2_kvdl_part*, %struct.mlxsw_sp2_kvdl_part** %6, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part, %struct.mlxsw_sp2_kvdl_part* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @DIV_ROUND_UP(i32 %26, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.mlxsw_sp2_kvdl_part*, %struct.mlxsw_sp2_kvdl_part** %6, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part, %struct.mlxsw_sp2_kvdl_part* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = udiv i32 %31, %34
  store i32 %35, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %48, %25
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = add i32 %41, %42
  %44 = load %struct.mlxsw_sp2_kvdl_part*, %struct.mlxsw_sp2_kvdl_part** %6, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part, %struct.mlxsw_sp2_kvdl_part* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @__clear_bit(i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %11, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %36

51:                                               ; preds = %24, %36
  ret void
}

declare dso_local i32 @mlxsw_sp2_kvdl_rec_del(%struct.mlxsw_sp*, i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
