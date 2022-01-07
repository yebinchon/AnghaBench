; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_keys.c_mlxsw_afk_values_add_u32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_keys.c_mlxsw_afk_values_add_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afk_element_info = type { i64, %struct.mlxsw_item }
%struct.mlxsw_item = type { i32 }
%struct.mlxsw_afk_element_values = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@mlxsw_afk_element_infos = common dso_local global %struct.mlxsw_afk_element_info* null, align 8
@MLXSW_AFK_ELEMENT_TYPE_U32 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_afk_values_add_u32(%struct.mlxsw_afk_element_values* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlxsw_afk_element_values*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_afk_element_info*, align 8
  %10 = alloca %struct.mlxsw_item*, align 8
  store %struct.mlxsw_afk_element_values* %0, %struct.mlxsw_afk_element_values** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.mlxsw_afk_element_info*, %struct.mlxsw_afk_element_info** @mlxsw_afk_element_infos, align 8
  %12 = load i32, i32* %6, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.mlxsw_afk_element_info, %struct.mlxsw_afk_element_info* %11, i64 %13
  store %struct.mlxsw_afk_element_info* %14, %struct.mlxsw_afk_element_info** %9, align 8
  %15 = load %struct.mlxsw_afk_element_info*, %struct.mlxsw_afk_element_info** %9, align 8
  %16 = getelementptr inbounds %struct.mlxsw_afk_element_info, %struct.mlxsw_afk_element_info* %15, i32 0, i32 1
  store %struct.mlxsw_item* %16, %struct.mlxsw_item** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %49

20:                                               ; preds = %4
  %21 = load %struct.mlxsw_afk_element_info*, %struct.mlxsw_afk_element_info** %9, align 8
  %22 = getelementptr inbounds %struct.mlxsw_afk_element_info, %struct.mlxsw_afk_element_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MLXSW_AFK_ELEMENT_TYPE_U32, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %49

30:                                               ; preds = %20
  %31 = load %struct.mlxsw_afk_element_values*, %struct.mlxsw_afk_element_values** %5, align 8
  %32 = getelementptr inbounds %struct.mlxsw_afk_element_values, %struct.mlxsw_afk_element_values* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mlxsw_item*, %struct.mlxsw_item** %10, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @__mlxsw_item_set32(i32 %34, %struct.mlxsw_item* %35, i32 0, i32 %36)
  %38 = load %struct.mlxsw_afk_element_values*, %struct.mlxsw_afk_element_values** %5, align 8
  %39 = getelementptr inbounds %struct.mlxsw_afk_element_values, %struct.mlxsw_afk_element_values* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mlxsw_item*, %struct.mlxsw_item** %10, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @__mlxsw_item_set32(i32 %41, %struct.mlxsw_item* %42, i32 0, i32 %43)
  %45 = load %struct.mlxsw_afk_element_values*, %struct.mlxsw_afk_element_values** %5, align 8
  %46 = getelementptr inbounds %struct.mlxsw_afk_element_values, %struct.mlxsw_afk_element_values* %45, i32 0, i32 0
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @mlxsw_afk_element_usage_add(i32* %46, i32 %47)
  br label %49

49:                                               ; preds = %30, %29, %19
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @__mlxsw_item_set32(i32, %struct.mlxsw_item*, i32, i32) #1

declare dso_local i32 @mlxsw_afk_element_usage_add(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
