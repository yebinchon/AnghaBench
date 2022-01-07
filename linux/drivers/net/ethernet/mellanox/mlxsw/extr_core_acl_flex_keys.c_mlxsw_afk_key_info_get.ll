; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_keys.c_mlxsw_afk_key_info_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_keys.c_mlxsw_afk_key_info_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afk_key_info = type { i32 }
%struct.mlxsw_afk = type { i32 }
%struct.mlxsw_afk_element_usage = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlxsw_afk_key_info* @mlxsw_afk_key_info_get(%struct.mlxsw_afk* %0, %struct.mlxsw_afk_element_usage* %1) #0 {
  %3 = alloca %struct.mlxsw_afk_key_info*, align 8
  %4 = alloca %struct.mlxsw_afk*, align 8
  %5 = alloca %struct.mlxsw_afk_element_usage*, align 8
  %6 = alloca %struct.mlxsw_afk_key_info*, align 8
  store %struct.mlxsw_afk* %0, %struct.mlxsw_afk** %4, align 8
  store %struct.mlxsw_afk_element_usage* %1, %struct.mlxsw_afk_element_usage** %5, align 8
  %7 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %4, align 8
  %8 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %5, align 8
  %9 = call %struct.mlxsw_afk_key_info* @mlxsw_afk_key_info_find(%struct.mlxsw_afk* %7, %struct.mlxsw_afk_element_usage* %8)
  store %struct.mlxsw_afk_key_info* %9, %struct.mlxsw_afk_key_info** %6, align 8
  %10 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %6, align 8
  %11 = icmp ne %struct.mlxsw_afk_key_info* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %6, align 8
  %14 = getelementptr inbounds %struct.mlxsw_afk_key_info, %struct.mlxsw_afk_key_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %6, align 8
  store %struct.mlxsw_afk_key_info* %17, %struct.mlxsw_afk_key_info** %3, align 8
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %4, align 8
  %20 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %5, align 8
  %21 = call %struct.mlxsw_afk_key_info* @mlxsw_afk_key_info_create(%struct.mlxsw_afk* %19, %struct.mlxsw_afk_element_usage* %20)
  store %struct.mlxsw_afk_key_info* %21, %struct.mlxsw_afk_key_info** %3, align 8
  br label %22

22:                                               ; preds = %18, %12
  %23 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %3, align 8
  ret %struct.mlxsw_afk_key_info* %23
}

declare dso_local %struct.mlxsw_afk_key_info* @mlxsw_afk_key_info_find(%struct.mlxsw_afk*, %struct.mlxsw_afk_element_usage*) #1

declare dso_local %struct.mlxsw_afk_key_info* @mlxsw_afk_key_info_create(%struct.mlxsw_afk*, %struct.mlxsw_afk_element_usage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
