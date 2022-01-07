; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_keys.c_mlxsw_afk_key_info_elinst_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_keys.c_mlxsw_afk_key_info_elinst_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afk_element_inst = type { i32 }
%struct.mlxsw_afk_key_info = type { i32*, %struct.mlxsw_afk_block**, %struct.TYPE_2__ }
%struct.mlxsw_afk_block = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_afk_element_inst* (%struct.mlxsw_afk_key_info*, i32, i32*)* @mlxsw_afk_key_info_elinst_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_afk_element_inst* @mlxsw_afk_key_info_elinst_get(%struct.mlxsw_afk_key_info* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.mlxsw_afk_element_inst*, align 8
  %5 = alloca %struct.mlxsw_afk_key_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mlxsw_afk_element_inst*, align 8
  %9 = alloca %struct.mlxsw_afk_block*, align 8
  %10 = alloca i32, align 4
  store %struct.mlxsw_afk_key_info* %0, %struct.mlxsw_afk_key_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %5, align 8
  %13 = getelementptr inbounds %struct.mlxsw_afk_key_info, %struct.mlxsw_afk_key_info* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @test_bit(i32 %11, i32 %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store %struct.mlxsw_afk_element_inst* null, %struct.mlxsw_afk_element_inst** %4, align 8
  br label %52

23:                                               ; preds = %3
  %24 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %5, align 8
  %25 = getelementptr inbounds %struct.mlxsw_afk_key_info, %struct.mlxsw_afk_key_info* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %5, align 8
  %32 = getelementptr inbounds %struct.mlxsw_afk_key_info, %struct.mlxsw_afk_key_info* %31, i32 0, i32 1
  %33 = load %struct.mlxsw_afk_block**, %struct.mlxsw_afk_block*** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.mlxsw_afk_block*, %struct.mlxsw_afk_block** %33, i64 %35
  %37 = load %struct.mlxsw_afk_block*, %struct.mlxsw_afk_block** %36, align 8
  store %struct.mlxsw_afk_block* %37, %struct.mlxsw_afk_block** %9, align 8
  %38 = load %struct.mlxsw_afk_block*, %struct.mlxsw_afk_block** %9, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call %struct.mlxsw_afk_element_inst* @mlxsw_afk_block_elinst_get(%struct.mlxsw_afk_block* %38, i32 %39)
  store %struct.mlxsw_afk_element_inst* %40, %struct.mlxsw_afk_element_inst** %8, align 8
  %41 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %8, align 8
  %42 = icmp ne %struct.mlxsw_afk_element_inst* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @WARN_ON(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %23
  store %struct.mlxsw_afk_element_inst* null, %struct.mlxsw_afk_element_inst** %4, align 8
  br label %52

48:                                               ; preds = %23
  %49 = load i32, i32* %10, align 4
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  %51 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %8, align 8
  store %struct.mlxsw_afk_element_inst* %51, %struct.mlxsw_afk_element_inst** %4, align 8
  br label %52

52:                                               ; preds = %48, %47, %22
  %53 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %4, align 8
  ret %struct.mlxsw_afk_element_inst* %53
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local %struct.mlxsw_afk_element_inst* @mlxsw_afk_block_elinst_get(%struct.mlxsw_afk_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
