; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eq.c_destroy_async_eqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eq.c_destroy_async_eqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.mlx5_eq_table* }
%struct.mlx5_eq_table = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"failed to destroy pages eq, err(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to destroy async eq, err(%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to destroy command eq, err(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*)* @destroy_async_eqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_async_eqs(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca %struct.mlx5_eq_table*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %5 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %6 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %7, align 8
  store %struct.mlx5_eq_table* %8, %struct.mlx5_eq_table** %3, align 8
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %10 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_eq_table, %struct.mlx5_eq_table* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5_eq_table, %struct.mlx5_eq_table* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = call i32 @mlx5_eq_disable(%struct.mlx5_core_dev* %9, i32* %12, i32* %15)
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %18 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5_eq_table, %struct.mlx5_eq_table* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = call i32 @destroy_async_eq(%struct.mlx5_core_dev* %17, i32* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %1
  %29 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %30 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %3, align 8
  %31 = getelementptr inbounds %struct.mlx5_eq_table, %struct.mlx5_eq_table* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %3, align 8
  %34 = getelementptr inbounds %struct.mlx5_eq_table, %struct.mlx5_eq_table* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = call i32 @mlx5_eq_disable(%struct.mlx5_core_dev* %29, i32* %32, i32* %35)
  %37 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %38 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %3, align 8
  %39 = getelementptr inbounds %struct.mlx5_eq_table, %struct.mlx5_eq_table* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = call i32 @destroy_async_eq(%struct.mlx5_core_dev* %37, i32* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %28
  %45 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %28
  %49 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %50 = call i32 @mlx5_cmd_use_polling(%struct.mlx5_core_dev* %49)
  %51 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %52 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %3, align 8
  %53 = getelementptr inbounds %struct.mlx5_eq_table, %struct.mlx5_eq_table* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %3, align 8
  %56 = getelementptr inbounds %struct.mlx5_eq_table, %struct.mlx5_eq_table* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = call i32 @mlx5_eq_disable(%struct.mlx5_core_dev* %51, i32* %54, i32* %57)
  %59 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %60 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %3, align 8
  %61 = getelementptr inbounds %struct.mlx5_eq_table, %struct.mlx5_eq_table* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = call i32 @destroy_async_eq(%struct.mlx5_core_dev* %59, i32* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %48
  %67 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %67, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %66, %48
  %71 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %72 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %3, align 8
  %73 = getelementptr inbounds %struct.mlx5_eq_table, %struct.mlx5_eq_table* %72, i32 0, i32 0
  %74 = call i32 @mlx5_eq_notifier_unregister(%struct.mlx5_core_dev* %71, i32* %73)
  ret void
}

declare dso_local i32 @mlx5_eq_disable(%struct.mlx5_core_dev*, i32*, i32*) #1

declare dso_local i32 @destroy_async_eq(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @mlx5_cmd_use_polling(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_eq_notifier_unregister(%struct.mlx5_core_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
