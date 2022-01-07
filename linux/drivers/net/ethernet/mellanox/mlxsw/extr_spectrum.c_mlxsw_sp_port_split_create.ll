; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_split_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_split_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }

@MLXSW_PORT_MODULE_MAX_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i32, i32, i32, i32)* @mlxsw_sp_port_split_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_split_create(%struct.mlxsw_sp* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @MLXSW_PORT_MODULE_MAX_WIDTH, align 4
  %16 = load i32, i32* %10, align 4
  %17 = udiv i32 %15, %16
  store i32 %17, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %18

18:                                               ; preds = %39, %5
  %19 = load i32, i32* %14, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %11, align 4
  %27 = mul nsw i32 %25, %26
  %28 = add nsw i32 %24, %27
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %12, align 4
  %33 = mul nsw i32 %31, %32
  %34 = call i32 @mlxsw_sp_port_create(%struct.mlxsw_sp* %23, i32 %28, i32 1, i32 %29, i32 %30, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  br label %43

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %14, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %14, align 4
  br label %18

42:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %72

43:                                               ; preds = %37
  %44 = load i32, i32* %14, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %14, align 4
  br label %46

46:                                               ; preds = %67, %43
  %47 = load i32, i32* %14, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %46
  %50 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %11, align 4
  %54 = mul nsw i32 %52, %53
  %55 = add nsw i32 %51, %54
  %56 = call i64 @mlxsw_sp_port_created(%struct.mlxsw_sp* %50, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %49
  %59 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %11, align 4
  %63 = mul nsw i32 %61, %62
  %64 = add nsw i32 %60, %63
  %65 = call i32 @mlxsw_sp_port_remove(%struct.mlxsw_sp* %59, i32 %64)
  br label %66

66:                                               ; preds = %58, %49
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %14, align 4
  br label %46

70:                                               ; preds = %46
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %70, %42
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @mlxsw_sp_port_create(%struct.mlxsw_sp*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @mlxsw_sp_port_created(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @mlxsw_sp_port_remove(%struct.mlxsw_sp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
