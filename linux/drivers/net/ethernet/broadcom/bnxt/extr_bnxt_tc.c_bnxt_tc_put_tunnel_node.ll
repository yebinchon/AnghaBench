; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_put_tunnel_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_put_tunnel_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.rhashtable = type { i32 }
%struct.rhashtable_params = type { i32 }
%struct.bnxt_tc_tunnel_node = type { i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"rhashtable_remove_fast rc=%d\00", align 1
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.rhashtable*, %struct.rhashtable_params*, %struct.bnxt_tc_tunnel_node*)* @bnxt_tc_put_tunnel_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_tc_put_tunnel_node(%struct.bnxt* %0, %struct.rhashtable* %1, %struct.rhashtable_params* %2, %struct.bnxt_tc_tunnel_node* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnxt*, align 8
  %7 = alloca %struct.rhashtable*, align 8
  %8 = alloca %struct.rhashtable_params*, align 8
  %9 = alloca %struct.bnxt_tc_tunnel_node*, align 8
  %10 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %6, align 8
  store %struct.rhashtable* %1, %struct.rhashtable** %7, align 8
  store %struct.rhashtable_params* %2, %struct.rhashtable_params** %8, align 8
  store %struct.bnxt_tc_tunnel_node* %3, %struct.bnxt_tc_tunnel_node** %9, align 8
  %11 = load %struct.bnxt_tc_tunnel_node*, %struct.bnxt_tc_tunnel_node** %9, align 8
  %12 = getelementptr inbounds %struct.bnxt_tc_tunnel_node, %struct.bnxt_tc_tunnel_node* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %4
  %17 = load %struct.rhashtable*, %struct.rhashtable** %7, align 8
  %18 = load %struct.bnxt_tc_tunnel_node*, %struct.bnxt_tc_tunnel_node** %9, align 8
  %19 = getelementptr inbounds %struct.bnxt_tc_tunnel_node, %struct.bnxt_tc_tunnel_node* %18, i32 0, i32 1
  %20 = load %struct.rhashtable_params*, %struct.rhashtable_params** %8, align 8
  %21 = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @rhashtable_remove_fast(%struct.rhashtable* %17, i32* %19, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %16
  %27 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %28 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @netdev_err(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 -1, i32* %10, align 4
  br label %32

32:                                               ; preds = %26, %16
  %33 = load %struct.bnxt_tc_tunnel_node*, %struct.bnxt_tc_tunnel_node** %9, align 8
  %34 = load i32, i32* @rcu, align 4
  %35 = call i32 @kfree_rcu(%struct.bnxt_tc_tunnel_node* %33, i32 %34)
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %5, align 4
  br label %42

37:                                               ; preds = %4
  %38 = load %struct.bnxt_tc_tunnel_node*, %struct.bnxt_tc_tunnel_node** %9, align 8
  %39 = getelementptr inbounds %struct.bnxt_tc_tunnel_node, %struct.bnxt_tc_tunnel_node* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %37, %32
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @rhashtable_remove_fast(%struct.rhashtable*, i32*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @kfree_rcu(%struct.bnxt_tc_tunnel_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
