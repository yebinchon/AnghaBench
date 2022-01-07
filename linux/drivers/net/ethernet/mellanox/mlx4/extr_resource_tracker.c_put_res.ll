; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_put_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_put_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.res_common = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_dev*, i32, i32, i32)* @put_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_res(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.res_common*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %11 = call i32 @mlx4_tlock(%struct.mlx4_dev* %10)
  %12 = call i32 @spin_lock_irq(i32 %11)
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.res_common* @find_res(%struct.mlx4_dev* %13, i32 %14, i32 %15)
  store %struct.res_common* %16, %struct.res_common** %9, align 8
  %17 = load %struct.res_common*, %struct.res_common** %9, align 8
  %18 = icmp ne %struct.res_common* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %4
  %20 = load %struct.res_common*, %struct.res_common** %9, align 8
  %21 = getelementptr inbounds %struct.res_common, %struct.res_common* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.res_common*, %struct.res_common** %9, align 8
  %24 = getelementptr inbounds %struct.res_common, %struct.res_common* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.res_common*, %struct.res_common** %9, align 8
  %26 = getelementptr inbounds %struct.res_common, %struct.res_common* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %26, align 8
  br label %27

27:                                               ; preds = %19, %4
  %28 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %29 = call i32 @mlx4_tlock(%struct.mlx4_dev* %28)
  %30 = call i32 @spin_unlock_irq(i32 %29)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @mlx4_tlock(%struct.mlx4_dev*) #1

declare dso_local %struct.res_common* @find_res(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
