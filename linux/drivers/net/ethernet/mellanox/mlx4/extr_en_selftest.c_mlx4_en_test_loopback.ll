; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_selftest.c_mlx4_en_test_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_selftest.c_mlx4_en_test_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Transmitting loopback packet failed\0A\00", align 1
@MLX4_EN_LOOPBACK_RETRIES = common dso_local global i32 0, align 4
@MLX4_EN_LOOPBACK_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Loopback packet didn't arrive\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*)* @mlx4_en_test_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_test_loopback(%struct.mlx4_en_priv* %0) #0 {
  %2 = alloca %struct.mlx4_en_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %6 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %5, i32 0, i32 2
  store i64 0, i64* %6, align 8
  %7 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %8 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %10 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mlx4_en_update_loopback_state(%struct.TYPE_2__* %11, i32 %16)
  %18 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %19 = call i64 @mlx4_en_test_loopback_xmit(%struct.mlx4_en_priv* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %23 = call i32 @en_err(%struct.mlx4_en_priv* %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %48

24:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %38, %24
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @MLX4_EN_LOOPBACK_RETRIES, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load i32, i32* @MLX4_EN_LOOPBACK_TIMEOUT, align 4
  %31 = call i32 @msleep(i32 %30)
  %32 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %33 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %41

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %25

41:                                               ; preds = %36, %25
  %42 = load i32, i32* %3, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %46 = call i32 @en_err(%struct.mlx4_en_priv* %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47, %21
  %49 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %50 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  %51 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %52 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %55 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @mlx4_en_update_loopback_state(%struct.TYPE_2__* %53, i32 %58)
  %60 = load i32, i32* %3, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  ret i32 %63
}

declare dso_local i32 @mlx4_en_update_loopback_state(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @mlx4_en_test_loopback_xmit(%struct.mlx4_en_priv*) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
