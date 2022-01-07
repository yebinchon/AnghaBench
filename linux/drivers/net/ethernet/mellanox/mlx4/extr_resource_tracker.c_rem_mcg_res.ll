; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_rem_mcg_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_rem_mcg_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.res_qp = type { i32 }
%struct.res_gid = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, %struct.res_qp*, i32*, i32, i32, i32*)* @rem_mcg_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rem_mcg_res(%struct.mlx4_dev* %0, i32 %1, %struct.res_qp* %2, i32* %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.res_qp*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.res_gid*, align 8
  %16 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.res_qp* %2, %struct.res_qp** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %17 = load %struct.res_qp*, %struct.res_qp** %10, align 8
  %18 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.res_qp*, %struct.res_qp** %10, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = call %struct.res_gid* @find_gid(%struct.mlx4_dev* %20, i32 %21, %struct.res_qp* %22, i32* %23)
  store %struct.res_gid* %24, %struct.res_gid** %15, align 8
  %25 = load %struct.res_gid*, %struct.res_gid** %15, align 8
  %26 = icmp ne %struct.res_gid* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %7
  %28 = load %struct.res_gid*, %struct.res_gid** %15, align 8
  %29 = getelementptr inbounds %struct.res_gid, %struct.res_gid* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.res_gid*, %struct.res_gid** %15, align 8
  %35 = getelementptr inbounds %struct.res_gid, %struct.res_gid* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33, %27, %7
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %16, align 4
  br label %52

42:                                               ; preds = %33
  %43 = load %struct.res_gid*, %struct.res_gid** %15, align 8
  %44 = getelementptr inbounds %struct.res_gid, %struct.res_gid* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %14, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.res_gid*, %struct.res_gid** %15, align 8
  %48 = getelementptr inbounds %struct.res_gid, %struct.res_gid* %47, i32 0, i32 2
  %49 = call i32 @list_del(i32* %48)
  %50 = load %struct.res_gid*, %struct.res_gid** %15, align 8
  %51 = call i32 @kfree(%struct.res_gid* %50)
  store i32 0, i32* %16, align 4
  br label %52

52:                                               ; preds = %42, %39
  %53 = load %struct.res_qp*, %struct.res_qp** %10, align 8
  %54 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock_irq(i32* %54)
  %56 = load i32, i32* %16, align 4
  ret i32 %56
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.res_gid* @find_gid(%struct.mlx4_dev*, i32, %struct.res_qp*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.res_gid*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
