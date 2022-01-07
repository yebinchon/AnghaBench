; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_destroy_legacy_fdb_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_destroy_legacy_fdb_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [19 x i8] c"Destroy FDB Table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_eswitch*)* @esw_destroy_legacy_fdb_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esw_destroy_legacy_fdb_table(%struct.mlx5_eswitch* %0) #0 {
  %2 = alloca %struct.mlx5_eswitch*, align 8
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %2, align 8
  %3 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %4 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @esw_debug(i32 %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %79

14:                                               ; preds = %1
  %15 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %16 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %23 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @mlx5_destroy_flow_group(i32* %26)
  br label %28

28:                                               ; preds = %21, %14
  %29 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %30 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %37 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @mlx5_destroy_flow_group(i32* %40)
  br label %42

42:                                               ; preds = %35, %28
  %43 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %44 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %51 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @mlx5_destroy_flow_group(i32* %54)
  br label %56

56:                                               ; preds = %49, %42
  %57 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %58 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @mlx5_destroy_flow_table(i32* %61)
  %63 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %64 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  store i32* null, i32** %66, align 8
  %67 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %68 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  store i32* null, i32** %70, align 8
  %71 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %72 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  store i32* null, i32** %74, align 8
  %75 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %76 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32* null, i32** %78, align 8
  br label %79

79:                                               ; preds = %56, %13
  ret void
}

declare dso_local i32 @esw_debug(i32, i8*) #1

declare dso_local i32 @mlx5_destroy_flow_group(i32*) #1

declare dso_local i32 @mlx5_destroy_flow_table(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
