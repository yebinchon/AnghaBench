; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_qp.c_mlx4_cleanup_qp_zones.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_qp.c_mlx4_cleanup_qp_zones.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_qp_table = type { i32*, i32*, i32* }
%struct.mlx4_bitmap = type { i32 }
%struct.TYPE_2__ = type { %struct.mlx4_qp_table }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_dev*)* @mlx4_cleanup_qp_zones to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_cleanup_qp_zones(%struct.mlx4_dev* %0) #0 {
  %2 = alloca %struct.mlx4_dev*, align 8
  %3 = alloca %struct.mlx4_qp_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_bitmap*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %2, align 8
  %6 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %7 = call %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.mlx4_qp_table* %8, %struct.mlx4_qp_table** %3, align 8
  %9 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %3, align 8
  %10 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %63

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %47, %13
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 2
  br i1 %17, label %18, label %50

18:                                               ; preds = %14
  %19 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %3, align 8
  %20 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %3, align 8
  %23 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.mlx4_bitmap* @mlx4_zone_get_bitmap(i32* %21, i32 %28)
  store %struct.mlx4_bitmap* %29, %struct.mlx4_bitmap** %5, align 8
  %30 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %3, align 8
  %31 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %3, align 8
  %34 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @mlx4_zone_remove_one(i32* %32, i32 %39)
  %41 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %42 = icmp eq %struct.mlx4_bitmap* null, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %18
  br label %47

44:                                               ; preds = %18
  %45 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %46 = call i32 @mlx4_bitmap_cleanup(%struct.mlx4_bitmap* %45)
  br label %47

47:                                               ; preds = %44, %43
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %14

50:                                               ; preds = %14
  %51 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %3, align 8
  %52 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @mlx4_zone_allocator_destroy(i32* %53)
  %55 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %3, align 8
  %56 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @kfree(i32* %57)
  %59 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %3, align 8
  %60 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %59, i32 0, i32 1
  store i32* null, i32** %60, align 8
  %61 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %3, align 8
  %62 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %61, i32 0, i32 0
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %50, %1
  ret void
}

declare dso_local %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local %struct.mlx4_bitmap* @mlx4_zone_get_bitmap(i32*, i32) #1

declare dso_local i32 @mlx4_zone_remove_one(i32*, i32) #1

declare dso_local i32 @mlx4_bitmap_cleanup(%struct.mlx4_bitmap*) #1

declare dso_local i32 @mlx4_zone_allocator_destroy(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
