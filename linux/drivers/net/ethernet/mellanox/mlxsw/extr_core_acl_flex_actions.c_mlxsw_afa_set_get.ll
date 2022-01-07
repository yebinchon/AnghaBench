; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_set_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_set_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afa = type { i32 }
%struct.mlxsw_afa_set = type { i32, i32 }

@mlxsw_afa_set_ht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_afa_set* (%struct.mlxsw_afa*, %struct.mlxsw_afa_set*)* @mlxsw_afa_set_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_afa_set* @mlxsw_afa_set_get(%struct.mlxsw_afa* %0, %struct.mlxsw_afa_set* %1) #0 {
  %3 = alloca %struct.mlxsw_afa_set*, align 8
  %4 = alloca %struct.mlxsw_afa*, align 8
  %5 = alloca %struct.mlxsw_afa_set*, align 8
  %6 = alloca %struct.mlxsw_afa_set*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_afa* %0, %struct.mlxsw_afa** %4, align 8
  store %struct.mlxsw_afa_set* %1, %struct.mlxsw_afa_set** %5, align 8
  %8 = load %struct.mlxsw_afa*, %struct.mlxsw_afa** %4, align 8
  %9 = getelementptr inbounds %struct.mlxsw_afa, %struct.mlxsw_afa* %8, i32 0, i32 0
  %10 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %5, align 8
  %11 = getelementptr inbounds %struct.mlxsw_afa_set, %struct.mlxsw_afa_set* %10, i32 0, i32 1
  %12 = load i32, i32* @mlxsw_afa_set_ht_params, align 4
  %13 = call %struct.mlxsw_afa_set* @rhashtable_lookup_fast(i32* %9, i32* %11, i32 %12)
  store %struct.mlxsw_afa_set* %13, %struct.mlxsw_afa_set** %6, align 8
  %14 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %6, align 8
  %15 = icmp ne %struct.mlxsw_afa_set* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %6, align 8
  %18 = getelementptr inbounds %struct.mlxsw_afa_set, %struct.mlxsw_afa_set* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.mlxsw_afa*, %struct.mlxsw_afa** %4, align 8
  %22 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %5, align 8
  %23 = call i32 @mlxsw_afa_set_put(%struct.mlxsw_afa* %21, %struct.mlxsw_afa_set* %22)
  br label %35

24:                                               ; preds = %2
  %25 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %5, align 8
  store %struct.mlxsw_afa_set* %25, %struct.mlxsw_afa_set** %6, align 8
  %26 = load %struct.mlxsw_afa*, %struct.mlxsw_afa** %4, align 8
  %27 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %6, align 8
  %28 = call i32 @mlxsw_afa_set_share(%struct.mlxsw_afa* %26, %struct.mlxsw_afa_set* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* %7, align 4
  %33 = call %struct.mlxsw_afa_set* @ERR_PTR(i32 %32)
  store %struct.mlxsw_afa_set* %33, %struct.mlxsw_afa_set** %3, align 8
  br label %37

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %16
  %36 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %6, align 8
  store %struct.mlxsw_afa_set* %36, %struct.mlxsw_afa_set** %3, align 8
  br label %37

37:                                               ; preds = %35, %31
  %38 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %3, align 8
  ret %struct.mlxsw_afa_set* %38
}

declare dso_local %struct.mlxsw_afa_set* @rhashtable_lookup_fast(i32*, i32*, i32) #1

declare dso_local i32 @mlxsw_afa_set_put(%struct.mlxsw_afa*, %struct.mlxsw_afa_set*) #1

declare dso_local i32 @mlxsw_afa_set_share(%struct.mlxsw_afa*, %struct.mlxsw_afa_set*) #1

declare dso_local %struct.mlxsw_afa_set* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
