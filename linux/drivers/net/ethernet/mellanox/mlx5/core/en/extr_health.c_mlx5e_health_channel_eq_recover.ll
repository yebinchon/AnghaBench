; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_health.c_mlx5e_health_channel_eq_recover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_health.c_mlx5e_health_channel_eq_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eq_comp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.mlx5e_channel = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"EQ 0x%x: Cons = 0x%x, irqn = 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Recovered %d eqes on EQ 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_health_channel_eq_recover(%struct.mlx5_eq_comp* %0, %struct.mlx5e_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_eq_comp*, align 8
  %5 = alloca %struct.mlx5e_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5_eq_comp* %0, %struct.mlx5_eq_comp** %4, align 8
  store %struct.mlx5e_channel* %1, %struct.mlx5e_channel** %5, align 8
  %7 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %8 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.mlx5_eq_comp*, %struct.mlx5_eq_comp** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5_eq_comp, %struct.mlx5_eq_comp* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mlx5_eq_comp*, %struct.mlx5_eq_comp** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5_eq_comp, %struct.mlx5_eq_comp* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mlx5_eq_comp*, %struct.mlx5_eq_comp** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5_eq_comp, %struct.mlx5_eq_comp* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, i32, i32, ...) @netdev_err(i32 %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %17, i32 %21)
  %23 = load %struct.mlx5_eq_comp*, %struct.mlx5_eq_comp** %4, align 8
  %24 = call i32 @mlx5_eq_poll_irq_disabled(%struct.mlx5_eq_comp* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %46

30:                                               ; preds = %2
  %31 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %32 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.mlx5_eq_comp*, %struct.mlx5_eq_comp** %4, align 8
  %36 = getelementptr inbounds %struct.mlx5_eq_comp, %struct.mlx5_eq_comp* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, i32, i32, ...) @netdev_err(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %38)
  %40 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %41 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %30, %27
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @netdev_err(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @mlx5_eq_poll_irq_disabled(%struct.mlx5_eq_comp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
