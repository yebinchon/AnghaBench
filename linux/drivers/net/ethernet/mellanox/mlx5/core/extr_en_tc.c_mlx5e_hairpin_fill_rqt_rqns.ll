; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_hairpin_fill_rqt_rqns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_hairpin_fill_rqt_rqns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_hairpin = type { %struct.TYPE_4__*, i32, %struct.mlx5e_priv* }
%struct.TYPE_4__ = type { i32* }
%struct.mlx5e_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@MLX5E_INDIR_RQT_SIZE = common dso_local global i32 0, align 4
@ETH_RSS_HASH_XOR = common dso_local global i64 0, align 8
@rq_num = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_hairpin*, i8*)* @mlx5e_hairpin_fill_rqt_rqns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_hairpin_fill_rqt_rqns(%struct.mlx5e_hairpin* %0, i8* %1) #0 {
  %3 = alloca %struct.mlx5e_hairpin*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5e_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx5e_hairpin* %0, %struct.mlx5e_hairpin** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i32, i32* @MLX5E_INDIR_RQT_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %3, align 8
  %17 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %16, i32 0, i32 2
  %18 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %17, align 8
  store %struct.mlx5e_priv* %18, %struct.mlx5e_priv** %8, align 8
  %19 = load i32, i32* @MLX5E_INDIR_RQT_SIZE, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %3, align 8
  %22 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @mlx5e_build_default_indir_rqt(i32* %15, i32 %20, i32 %23)
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %65, %2
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %68

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %10, align 4
  %31 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %32 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ETH_RSS_HASH_XOR, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @ilog2(i32 %39)
  %41 = call i32 @mlx5e_bits_invert(i32 %38, i32 %40)
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %37, %29
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %15, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %3, align 8
  %48 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %7, align 4
  %56 = load i8*, i8** %4, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = load i32*, i32** @rq_num, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @MLX5_SET(i8* %56, i8* %57, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %42
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %25

68:                                               ; preds = %25
  %69 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %69)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlx5e_build_default_indir_rqt(i32*, i32, i32) #2

declare dso_local i32 @mlx5e_bits_invert(i32, i32) #2

declare dso_local i32 @ilog2(i32) #2

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
