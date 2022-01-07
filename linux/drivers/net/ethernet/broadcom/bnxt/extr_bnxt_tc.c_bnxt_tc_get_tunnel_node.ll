; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_get_tunnel_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_get_tunnel_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_tc_tunnel_node = type { i32, i32, i32, %struct.ip_tunnel_key }
%struct.ip_tunnel_key = type { i32 }
%struct.bnxt = type { i32 }
%struct.rhashtable = type { i32 }
%struct.rhashtable_params = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INVALID_TUNNEL_HANDLE = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"error rc=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bnxt_tc_tunnel_node* (%struct.bnxt*, %struct.rhashtable*, %struct.rhashtable_params*, %struct.ip_tunnel_key*)* @bnxt_tc_get_tunnel_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bnxt_tc_tunnel_node* @bnxt_tc_get_tunnel_node(%struct.bnxt* %0, %struct.rhashtable* %1, %struct.rhashtable_params* %2, %struct.ip_tunnel_key* %3) #0 {
  %5 = alloca %struct.bnxt_tc_tunnel_node*, align 8
  %6 = alloca %struct.bnxt*, align 8
  %7 = alloca %struct.rhashtable*, align 8
  %8 = alloca %struct.rhashtable_params*, align 8
  %9 = alloca %struct.ip_tunnel_key*, align 8
  %10 = alloca %struct.bnxt_tc_tunnel_node*, align 8
  %11 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %6, align 8
  store %struct.rhashtable* %1, %struct.rhashtable** %7, align 8
  store %struct.rhashtable_params* %2, %struct.rhashtable_params** %8, align 8
  store %struct.ip_tunnel_key* %3, %struct.ip_tunnel_key** %9, align 8
  %12 = load %struct.rhashtable*, %struct.rhashtable** %7, align 8
  %13 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %14 = load %struct.rhashtable_params*, %struct.rhashtable_params** %8, align 8
  %15 = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.bnxt_tc_tunnel_node* @rhashtable_lookup_fast(%struct.rhashtable* %12, %struct.ip_tunnel_key* %13, i32 %16)
  store %struct.bnxt_tc_tunnel_node* %17, %struct.bnxt_tc_tunnel_node** %10, align 8
  %18 = load %struct.bnxt_tc_tunnel_node*, %struct.bnxt_tc_tunnel_node** %10, align 8
  %19 = icmp ne %struct.bnxt_tc_tunnel_node* %18, null
  br i1 %19, label %51, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.bnxt_tc_tunnel_node* @kzalloc(i32 16, i32 %21)
  store %struct.bnxt_tc_tunnel_node* %22, %struct.bnxt_tc_tunnel_node** %10, align 8
  %23 = load %struct.bnxt_tc_tunnel_node*, %struct.bnxt_tc_tunnel_node** %10, align 8
  %24 = icmp ne %struct.bnxt_tc_tunnel_node* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %11, align 4
  br label %57

28:                                               ; preds = %20
  %29 = load %struct.bnxt_tc_tunnel_node*, %struct.bnxt_tc_tunnel_node** %10, align 8
  %30 = getelementptr inbounds %struct.bnxt_tc_tunnel_node, %struct.bnxt_tc_tunnel_node* %29, i32 0, i32 3
  %31 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %9, align 8
  %32 = bitcast %struct.ip_tunnel_key* %30 to i8*
  %33 = bitcast %struct.ip_tunnel_key* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 4, i1 false)
  %34 = load i32, i32* @INVALID_TUNNEL_HANDLE, align 4
  %35 = load %struct.bnxt_tc_tunnel_node*, %struct.bnxt_tc_tunnel_node** %10, align 8
  %36 = getelementptr inbounds %struct.bnxt_tc_tunnel_node, %struct.bnxt_tc_tunnel_node* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.rhashtable*, %struct.rhashtable** %7, align 8
  %38 = load %struct.bnxt_tc_tunnel_node*, %struct.bnxt_tc_tunnel_node** %10, align 8
  %39 = getelementptr inbounds %struct.bnxt_tc_tunnel_node, %struct.bnxt_tc_tunnel_node* %38, i32 0, i32 1
  %40 = load %struct.rhashtable_params*, %struct.rhashtable_params** %8, align 8
  %41 = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @rhashtable_insert_fast(%struct.rhashtable* %37, i32* %39, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %28
  %47 = load %struct.bnxt_tc_tunnel_node*, %struct.bnxt_tc_tunnel_node** %10, align 8
  %48 = load i32, i32* @rcu, align 4
  %49 = call i32 @kfree_rcu(%struct.bnxt_tc_tunnel_node* %47, i32 %48)
  br label %57

50:                                               ; preds = %28
  br label %51

51:                                               ; preds = %50, %4
  %52 = load %struct.bnxt_tc_tunnel_node*, %struct.bnxt_tc_tunnel_node** %10, align 8
  %53 = getelementptr inbounds %struct.bnxt_tc_tunnel_node, %struct.bnxt_tc_tunnel_node* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.bnxt_tc_tunnel_node*, %struct.bnxt_tc_tunnel_node** %10, align 8
  store %struct.bnxt_tc_tunnel_node* %56, %struct.bnxt_tc_tunnel_node** %5, align 8
  br label %63

57:                                               ; preds = %46, %25
  %58 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %59 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @netdev_info(i32 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %61)
  store %struct.bnxt_tc_tunnel_node* null, %struct.bnxt_tc_tunnel_node** %5, align 8
  br label %63

63:                                               ; preds = %57, %51
  %64 = load %struct.bnxt_tc_tunnel_node*, %struct.bnxt_tc_tunnel_node** %5, align 8
  ret %struct.bnxt_tc_tunnel_node* %64
}

declare dso_local %struct.bnxt_tc_tunnel_node* @rhashtable_lookup_fast(%struct.rhashtable*, %struct.ip_tunnel_key*, i32) #1

declare dso_local %struct.bnxt_tc_tunnel_node* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rhashtable_insert_fast(%struct.rhashtable*, i32*, i32) #1

declare dso_local i32 @kfree_rcu(%struct.bnxt_tc_tunnel_node*, i32) #1

declare dso_local i32 @netdev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
