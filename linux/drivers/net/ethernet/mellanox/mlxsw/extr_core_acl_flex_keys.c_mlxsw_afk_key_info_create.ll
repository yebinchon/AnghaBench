; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_keys.c_mlxsw_afk_key_info_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_keys.c_mlxsw_afk_key_info_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afk_key_info = type { i32, i32 }
%struct.mlxsw_afk = type { i32, i32 }
%struct.mlxsw_afk_element_usage = type { i32 }

@blocks = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_afk_key_info* (%struct.mlxsw_afk*, %struct.mlxsw_afk_element_usage*)* @mlxsw_afk_key_info_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_afk_key_info* @mlxsw_afk_key_info_create(%struct.mlxsw_afk* %0, %struct.mlxsw_afk_element_usage* %1) #0 {
  %3 = alloca %struct.mlxsw_afk_key_info*, align 8
  %4 = alloca %struct.mlxsw_afk*, align 8
  %5 = alloca %struct.mlxsw_afk_element_usage*, align 8
  %6 = alloca %struct.mlxsw_afk_key_info*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_afk* %0, %struct.mlxsw_afk** %4, align 8
  store %struct.mlxsw_afk_element_usage* %1, %struct.mlxsw_afk_element_usage** %5, align 8
  %8 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %6, align 8
  %9 = load i32, i32* @blocks, align 4
  %10 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %4, align 8
  %11 = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @struct_size(%struct.mlxsw_afk_key_info* %8, i32 %9, i32 %12)
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.mlxsw_afk_key_info* @kzalloc(i32 %13, i32 %14)
  store %struct.mlxsw_afk_key_info* %15, %struct.mlxsw_afk_key_info** %6, align 8
  %16 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %6, align 8
  %17 = icmp ne %struct.mlxsw_afk_key_info* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.mlxsw_afk_key_info* @ERR_PTR(i32 %20)
  store %struct.mlxsw_afk_key_info* %21, %struct.mlxsw_afk_key_info** %3, align 8
  br label %44

22:                                               ; preds = %2
  %23 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %4, align 8
  %24 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %6, align 8
  %25 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %5, align 8
  %26 = call i32 @mlxsw_afk_picker(%struct.mlxsw_afk* %23, %struct.mlxsw_afk_key_info* %24, %struct.mlxsw_afk_element_usage* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %39

30:                                               ; preds = %22
  %31 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %6, align 8
  %32 = getelementptr inbounds %struct.mlxsw_afk_key_info, %struct.mlxsw_afk_key_info* %31, i32 0, i32 1
  %33 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %4, align 8
  %34 = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %33, i32 0, i32 0
  %35 = call i32 @list_add(i32* %32, i32* %34)
  %36 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %6, align 8
  %37 = getelementptr inbounds %struct.mlxsw_afk_key_info, %struct.mlxsw_afk_key_info* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %6, align 8
  store %struct.mlxsw_afk_key_info* %38, %struct.mlxsw_afk_key_info** %3, align 8
  br label %44

39:                                               ; preds = %29
  %40 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %6, align 8
  %41 = call i32 @kfree(%struct.mlxsw_afk_key_info* %40)
  %42 = load i32, i32* %7, align 4
  %43 = call %struct.mlxsw_afk_key_info* @ERR_PTR(i32 %42)
  store %struct.mlxsw_afk_key_info* %43, %struct.mlxsw_afk_key_info** %3, align 8
  br label %44

44:                                               ; preds = %39, %30, %18
  %45 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %3, align 8
  ret %struct.mlxsw_afk_key_info* %45
}

declare dso_local %struct.mlxsw_afk_key_info* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.mlxsw_afk_key_info*, i32, i32) #1

declare dso_local %struct.mlxsw_afk_key_info* @ERR_PTR(i32) #1

declare dso_local i32 @mlxsw_afk_picker(%struct.mlxsw_afk*, %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_element_usage*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.mlxsw_afk_key_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
