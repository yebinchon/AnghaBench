; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_tree_put_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_tree_put_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_node = type { i32 (%struct.fs_node*)*, i32, i32 (%struct.fs_node*)*, i32, %struct.fs_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fs_node*, i32)* @tree_put_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_put_node(%struct.fs_node* %0, i32 %1) #0 {
  %3 = alloca %struct.fs_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fs_node*, align 8
  store %struct.fs_node* %0, %struct.fs_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fs_node*, %struct.fs_node** %3, align 8
  %7 = getelementptr inbounds %struct.fs_node, %struct.fs_node* %6, i32 0, i32 4
  %8 = load %struct.fs_node*, %struct.fs_node** %7, align 8
  store %struct.fs_node* %8, %struct.fs_node** %5, align 8
  %9 = load %struct.fs_node*, %struct.fs_node** %3, align 8
  %10 = getelementptr inbounds %struct.fs_node, %struct.fs_node* %9, i32 0, i32 3
  %11 = call i64 @refcount_dec_and_test(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %52

13:                                               ; preds = %2
  %14 = load %struct.fs_node*, %struct.fs_node** %3, align 8
  %15 = getelementptr inbounds %struct.fs_node, %struct.fs_node* %14, i32 0, i32 2
  %16 = load i32 (%struct.fs_node*)*, i32 (%struct.fs_node*)** %15, align 8
  %17 = icmp ne i32 (%struct.fs_node*)* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.fs_node*, %struct.fs_node** %3, align 8
  %20 = getelementptr inbounds %struct.fs_node, %struct.fs_node* %19, i32 0, i32 2
  %21 = load i32 (%struct.fs_node*)*, i32 (%struct.fs_node*)** %20, align 8
  %22 = load %struct.fs_node*, %struct.fs_node** %3, align 8
  %23 = call i32 %21(%struct.fs_node* %22)
  br label %24

24:                                               ; preds = %18, %13
  %25 = load %struct.fs_node*, %struct.fs_node** %5, align 8
  %26 = icmp ne %struct.fs_node* %25, null
  br i1 %26, label %27, label %48

27:                                               ; preds = %24
  %28 = load %struct.fs_node*, %struct.fs_node** %5, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @down_write_ref_node(%struct.fs_node* %28, i32 %29)
  %31 = load %struct.fs_node*, %struct.fs_node** %3, align 8
  %32 = getelementptr inbounds %struct.fs_node, %struct.fs_node* %31, i32 0, i32 1
  %33 = call i32 @list_del_init(i32* %32)
  %34 = load %struct.fs_node*, %struct.fs_node** %3, align 8
  %35 = getelementptr inbounds %struct.fs_node, %struct.fs_node* %34, i32 0, i32 0
  %36 = load i32 (%struct.fs_node*)*, i32 (%struct.fs_node*)** %35, align 8
  %37 = icmp ne i32 (%struct.fs_node*)* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load %struct.fs_node*, %struct.fs_node** %3, align 8
  %40 = getelementptr inbounds %struct.fs_node, %struct.fs_node* %39, i32 0, i32 0
  %41 = load i32 (%struct.fs_node*)*, i32 (%struct.fs_node*)** %40, align 8
  %42 = load %struct.fs_node*, %struct.fs_node** %3, align 8
  %43 = call i32 %41(%struct.fs_node* %42)
  br label %44

44:                                               ; preds = %38, %27
  %45 = load %struct.fs_node*, %struct.fs_node** %5, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @up_write_ref_node(%struct.fs_node* %45, i32 %46)
  br label %51

48:                                               ; preds = %24
  %49 = load %struct.fs_node*, %struct.fs_node** %3, align 8
  %50 = call i32 @kfree(%struct.fs_node* %49)
  br label %51

51:                                               ; preds = %48, %44
  store %struct.fs_node* null, %struct.fs_node** %3, align 8
  br label %52

52:                                               ; preds = %51, %2
  %53 = load %struct.fs_node*, %struct.fs_node** %3, align 8
  %54 = icmp ne %struct.fs_node* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load %struct.fs_node*, %struct.fs_node** %5, align 8
  %57 = icmp ne %struct.fs_node* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.fs_node*, %struct.fs_node** %5, align 8
  %60 = load i32, i32* %4, align 4
  call void @tree_put_node(%struct.fs_node* %59, i32 %60)
  br label %61

61:                                               ; preds = %58, %55, %52
  ret void
}

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @down_write_ref_node(%struct.fs_node*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @up_write_ref_node(%struct.fs_node*, i32) #1

declare dso_local i32 @kfree(%struct.fs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
