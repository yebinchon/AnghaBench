; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_detach_encap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_detach_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.mlx5_eswitch* }
%struct.mlx5_eswitch = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.mlx5e_tc_flow = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.mlx5e_encap_entry*, i32 }
%struct.mlx5e_encap_entry = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*, %struct.mlx5e_tc_flow*, i32)* @mlx5e_detach_encap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_detach_encap(%struct.mlx5e_priv* %0, %struct.mlx5e_tc_flow* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca %struct.mlx5e_tc_flow*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5e_encap_entry*, align 8
  %8 = alloca %struct.mlx5_eswitch*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store %struct.mlx5e_tc_flow* %1, %struct.mlx5e_tc_flow** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %5, align 8
  %10 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %15, align 8
  store %struct.mlx5e_encap_entry* %16, %struct.mlx5e_encap_entry** %7, align 8
  %17 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %21, align 8
  store %struct.mlx5_eswitch* %22, %struct.mlx5_eswitch** %8, align 8
  %23 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %24 = icmp ne %struct.mlx5e_encap_entry* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  br label %66

26:                                               ; preds = %3
  %27 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %8, align 8
  %28 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %5, align 8
  %32 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = call i32 @list_del(i32* %37)
  %39 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %5, align 8
  %40 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store %struct.mlx5e_encap_entry* null, %struct.mlx5e_encap_entry** %45, align 8
  %46 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %47 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %46, i32 0, i32 1
  %48 = call i32 @refcount_dec_and_test(i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %26
  %51 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %8, align 8
  %52 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  br label %66

55:                                               ; preds = %26
  %56 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %57 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %56, i32 0, i32 0
  %58 = call i32 @hash_del_rcu(i32* %57)
  %59 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %8, align 8
  %60 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %64 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %65 = call i32 @mlx5e_encap_dealloc(%struct.mlx5e_priv* %63, %struct.mlx5e_encap_entry* %64)
  br label %66

66:                                               ; preds = %55, %50, %25
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hash_del_rcu(i32*) #1

declare dso_local i32 @mlx5e_encap_dealloc(%struct.mlx5e_priv*, %struct.mlx5e_encap_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
