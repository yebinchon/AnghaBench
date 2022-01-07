; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_mr.c_mlx4_buf_write_mtt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_mr.c_mlx4_buf_write_mtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_mtt = type { i32 }
%struct.mlx4_buf = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_buf_write_mtt(%struct.mlx4_dev* %0, %struct.mlx4_mtt* %1, %struct.mlx4_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca %struct.mlx4_mtt*, align 8
  %7 = alloca %struct.mlx4_buf*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store %struct.mlx4_mtt* %1, %struct.mlx4_mtt** %6, align 8
  store %struct.mlx4_buf* %2, %struct.mlx4_buf** %7, align 8
  %11 = load %struct.mlx4_buf*, %struct.mlx4_buf** %7, align 8
  %12 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i64* @kcalloc(i32 %13, i32 8, i32 %14)
  store i64* %15, i64** %8, align 8
  %16 = load i64*, i64** %8, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %77

21:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %63, %21
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.mlx4_buf*, %struct.mlx4_buf** %7, align 8
  %25 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %66

28:                                               ; preds = %22
  %29 = load %struct.mlx4_buf*, %struct.mlx4_buf** %7, align 8
  %30 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %49

33:                                               ; preds = %28
  %34 = load %struct.mlx4_buf*, %struct.mlx4_buf** %7, align 8
  %35 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.mlx4_buf*, %struct.mlx4_buf** %7, align 8
  %40 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = shl i32 %38, %41
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %37, %43
  %45 = load i64*, i64** %8, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  store i64 %44, i64* %48, align 8
  br label %62

49:                                               ; preds = %28
  %50 = load %struct.mlx4_buf*, %struct.mlx4_buf** %7, align 8
  %51 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %50, i32 0, i32 3
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %8, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  store i64 %57, i64* %61, align 8
  br label %62

62:                                               ; preds = %49, %33
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %22

66:                                               ; preds = %22
  %67 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %68 = load %struct.mlx4_mtt*, %struct.mlx4_mtt** %6, align 8
  %69 = load %struct.mlx4_buf*, %struct.mlx4_buf** %7, align 8
  %70 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i64*, i64** %8, align 8
  %73 = call i32 @mlx4_write_mtt(%struct.mlx4_dev* %67, %struct.mlx4_mtt* %68, i32 0, i32 %71, i64* %72)
  store i32 %73, i32* %9, align 4
  %74 = load i64*, i64** %8, align 8
  %75 = call i32 @kfree(i64* %74)
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %66, %18
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i64* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @mlx4_write_mtt(%struct.mlx4_dev*, %struct.mlx4_mtt*, i32, i32, i64*) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
