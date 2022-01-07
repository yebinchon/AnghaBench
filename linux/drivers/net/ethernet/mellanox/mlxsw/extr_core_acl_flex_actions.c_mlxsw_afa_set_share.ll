; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_set_share.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_set_share.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afa = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i32*, i32, i32)* }
%struct.mlxsw_afa_set = type { i32, i32, i32*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@mlxsw_afa_set_ht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_afa*, %struct.mlxsw_afa_set*)* @mlxsw_afa_set_share to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_afa_set_share(%struct.mlxsw_afa* %0, %struct.mlxsw_afa_set* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_afa*, align 8
  %5 = alloca %struct.mlxsw_afa_set*, align 8
  %6 = alloca i32, align 4
  store %struct.mlxsw_afa* %0, %struct.mlxsw_afa** %4, align 8
  store %struct.mlxsw_afa_set* %1, %struct.mlxsw_afa_set** %5, align 8
  %7 = load %struct.mlxsw_afa*, %struct.mlxsw_afa** %4, align 8
  %8 = getelementptr inbounds %struct.mlxsw_afa, %struct.mlxsw_afa* %7, i32 0, i32 0
  %9 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %5, align 8
  %10 = getelementptr inbounds %struct.mlxsw_afa_set, %struct.mlxsw_afa_set* %9, i32 0, i32 1
  %11 = load i32, i32* @mlxsw_afa_set_ht_params, align 4
  %12 = call i32 @rhashtable_insert_fast(i32* %8, i32* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %53

17:                                               ; preds = %2
  %18 = load %struct.mlxsw_afa*, %struct.mlxsw_afa** %4, align 8
  %19 = getelementptr inbounds %struct.mlxsw_afa, %struct.mlxsw_afa* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32 (i32, i32*, i32, i32)*, i32 (i32, i32*, i32, i32)** %21, align 8
  %23 = load %struct.mlxsw_afa*, %struct.mlxsw_afa** %4, align 8
  %24 = getelementptr inbounds %struct.mlxsw_afa, %struct.mlxsw_afa* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %5, align 8
  %27 = getelementptr inbounds %struct.mlxsw_afa_set, %struct.mlxsw_afa_set* %26, i32 0, i32 4
  %28 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %5, align 8
  %29 = getelementptr inbounds %struct.mlxsw_afa_set, %struct.mlxsw_afa_set* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %5, align 8
  %33 = getelementptr inbounds %struct.mlxsw_afa_set, %struct.mlxsw_afa_set* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 %22(i32 %25, i32* %27, i32 %31, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %17
  br label %45

40:                                               ; preds = %17
  %41 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %5, align 8
  %42 = getelementptr inbounds %struct.mlxsw_afa_set, %struct.mlxsw_afa_set* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %5, align 8
  %44 = getelementptr inbounds %struct.mlxsw_afa_set, %struct.mlxsw_afa_set* %43, i32 0, i32 2
  store i32* null, i32** %44, align 8
  store i32 0, i32* %3, align 4
  br label %53

45:                                               ; preds = %39
  %46 = load %struct.mlxsw_afa*, %struct.mlxsw_afa** %4, align 8
  %47 = getelementptr inbounds %struct.mlxsw_afa, %struct.mlxsw_afa* %46, i32 0, i32 0
  %48 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %5, align 8
  %49 = getelementptr inbounds %struct.mlxsw_afa_set, %struct.mlxsw_afa_set* %48, i32 0, i32 1
  %50 = load i32, i32* @mlxsw_afa_set_ht_params, align 4
  %51 = call i32 @rhashtable_remove_fast(i32* %47, i32* %49, i32 %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %45, %40, %15
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @rhashtable_insert_fast(i32*, i32*, i32) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
