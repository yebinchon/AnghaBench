; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cq.c_mlx4_cq_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cq.c_mlx4_cq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_cq = type { i32, i32, i32, i32 }
%struct.mlx4_priv = type { %struct.TYPE_4__, %struct.mlx4_cq_table }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.mlx4_cq_table = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"HW2SW_CQ failed (%d) for CQN %06x\0A\00", align 1
@MLX4_EQ_ASYNC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_cq_free(%struct.mlx4_dev* %0, %struct.mlx4_cq* %1) #0 {
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_cq*, align 8
  %5 = alloca %struct.mlx4_priv*, align 8
  %6 = alloca %struct.mlx4_cq_table*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  store %struct.mlx4_cq* %1, %struct.mlx4_cq** %4, align 8
  %8 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %9 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %8)
  store %struct.mlx4_priv* %9, %struct.mlx4_priv** %5, align 8
  %10 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %11 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %10, i32 0, i32 1
  store %struct.mlx4_cq_table* %11, %struct.mlx4_cq_table** %6, align 8
  %12 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %13 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %14 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @mlx4_HW2SW_CQ(%struct.mlx4_dev* %12, i32* null, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %23 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mlx4_warn(%struct.mlx4_dev* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %19, %2
  %27 = load %struct.mlx4_cq_table*, %struct.mlx4_cq_table** %6, align 8
  %28 = getelementptr inbounds %struct.mlx4_cq_table, %struct.mlx4_cq_table* %27, i32 0, i32 0
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.mlx4_cq_table*, %struct.mlx4_cq_table** %6, align 8
  %31 = getelementptr inbounds %struct.mlx4_cq_table, %struct.mlx4_cq_table* %30, i32 0, i32 1
  %32 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %33 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @radix_tree_delete(i32* %31, i32 %34)
  %36 = load %struct.mlx4_cq_table*, %struct.mlx4_cq_table** %6, align 8
  %37 = getelementptr inbounds %struct.mlx4_cq_table, %struct.mlx4_cq_table* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %40 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %44 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @MLX4_CQ_TO_EQ_VECTOR(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @synchronize_irq(i64 %49)
  %51 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %52 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %56 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @MLX4_CQ_TO_EQ_VECTOR(i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %63 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load i64, i64* @MLX4_EQ_ASYNC, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %61, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %26
  %72 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %73 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i64, i64* @MLX4_EQ_ASYNC, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @synchronize_irq(i64 %79)
  br label %81

81:                                               ; preds = %71, %26
  %82 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %83 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %82, i32 0, i32 2
  %84 = call i64 @refcount_dec_and_test(i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %88 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %87, i32 0, i32 1
  %89 = call i32 @complete(i32* %88)
  br label %90

90:                                               ; preds = %86, %81
  %91 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %92 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %91, i32 0, i32 1
  %93 = call i32 @wait_for_completion(i32* %92)
  %94 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %95 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %96 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @mlx4_cq_free_icm(%struct.mlx4_dev* %94, i32 %97)
  ret void
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_HW2SW_CQ(%struct.mlx4_dev*, i32*, i32) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @radix_tree_delete(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @synchronize_irq(i64) #1

declare dso_local i64 @MLX4_CQ_TO_EQ_VECTOR(i32) #1

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @mlx4_cq_free_icm(%struct.mlx4_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
