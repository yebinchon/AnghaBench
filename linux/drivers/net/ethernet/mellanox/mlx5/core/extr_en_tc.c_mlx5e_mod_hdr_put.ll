; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_mod_hdr_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_mod_hdr_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.mlx5e_mod_hdr_entry = type { i64, i32, i32, i32, i32 }
%struct.mod_hdr_tbl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*, %struct.mlx5e_mod_hdr_entry*, i32)* @mlx5e_mod_hdr_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_mod_hdr_put(%struct.mlx5e_priv* %0, %struct.mlx5e_mod_hdr_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca %struct.mlx5e_mod_hdr_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mod_hdr_tbl*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store %struct.mlx5e_mod_hdr_entry* %1, %struct.mlx5e_mod_hdr_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call %struct.mod_hdr_tbl* @get_mod_hdr_table(%struct.mlx5e_priv* %8, i32 %9)
  store %struct.mod_hdr_tbl* %10, %struct.mod_hdr_tbl** %7, align 8
  %11 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %5, align 8
  %12 = getelementptr inbounds %struct.mlx5e_mod_hdr_entry, %struct.mlx5e_mod_hdr_entry* %11, i32 0, i32 4
  %13 = load %struct.mod_hdr_tbl*, %struct.mod_hdr_tbl** %7, align 8
  %14 = getelementptr inbounds %struct.mod_hdr_tbl, %struct.mod_hdr_tbl* %13, i32 0, i32 0
  %15 = call i32 @refcount_dec_and_mutex_lock(i32* %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %47

18:                                               ; preds = %3
  %19 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %5, align 8
  %20 = getelementptr inbounds %struct.mlx5e_mod_hdr_entry, %struct.mlx5e_mod_hdr_entry* %19, i32 0, i32 3
  %21 = call i32 @hash_del(i32* %20)
  %22 = load %struct.mod_hdr_tbl*, %struct.mod_hdr_tbl** %7, align 8
  %23 = getelementptr inbounds %struct.mod_hdr_tbl, %struct.mod_hdr_tbl* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %5, align 8
  %26 = getelementptr inbounds %struct.mlx5e_mod_hdr_entry, %struct.mlx5e_mod_hdr_entry* %25, i32 0, i32 2
  %27 = call i32 @list_empty(i32* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @WARN_ON(i32 %30)
  %32 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %5, align 8
  %33 = getelementptr inbounds %struct.mlx5e_mod_hdr_entry, %struct.mlx5e_mod_hdr_entry* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %18
  %37 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %38 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %5, align 8
  %41 = getelementptr inbounds %struct.mlx5e_mod_hdr_entry, %struct.mlx5e_mod_hdr_entry* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @mlx5_modify_header_dealloc(i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %36, %18
  %45 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %5, align 8
  %46 = call i32 @kfree(%struct.mlx5e_mod_hdr_entry* %45)
  br label %47

47:                                               ; preds = %44, %17
  ret void
}

declare dso_local %struct.mod_hdr_tbl* @get_mod_hdr_table(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @refcount_dec_and_mutex_lock(i32*, i32*) #1

declare dso_local i32 @hash_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @mlx5_modify_header_dealloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.mlx5e_mod_hdr_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
