; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_cq.c_mlx4_en_create_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_cq.c_mlx4_en_create_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.mlx4_en_cq = type { i32, i32, i32, i32, %struct.TYPE_14__, %struct.mlx4_cqe*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.mlx4_cqe = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to allocate CQ structure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_create_cq(%struct.mlx4_en_priv* %0, %struct.mlx4_en_cq** %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_en_priv*, align 8
  %9 = alloca %struct.mlx4_en_cq**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx4_en_dev*, align 8
  %15 = alloca %struct.mlx4_en_cq*, align 8
  %16 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %8, align 8
  store %struct.mlx4_en_cq** %1, %struct.mlx4_en_cq*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %18 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %17, i32 0, i32 0
  %19 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %18, align 8
  store %struct.mlx4_en_dev* %19, %struct.mlx4_en_dev** %14, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = load i32, i32* %13, align 4
  %22 = call %struct.mlx4_en_cq* @kzalloc_node(i32 40, i32 %20, i32 %21)
  store %struct.mlx4_en_cq* %22, %struct.mlx4_en_cq** %15, align 8
  %23 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %24 = icmp ne %struct.mlx4_en_cq* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %6
  %26 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %27 = call i32 @en_err(%struct.mlx4_en_priv* %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %113

30:                                               ; preds = %6
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %33 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %35 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %38 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %36, %42
  %44 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %45 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %48 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %51 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %53 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %52, i32 0, i32 0
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %59 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 8
  %60 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %61 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %60, i32 0, i32 0
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @set_dev_node(i32* %67, i32 %68)
  %70 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %71 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %70, i32 0, i32 0
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %74 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %73, i32 0, i32 4
  %75 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %76 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @mlx4_alloc_hwq_res(%struct.TYPE_13__* %72, %struct.TYPE_14__* %74, i32 %77)
  store i32 %78, i32* %16, align 4
  %79 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %80 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %79, i32 0, i32 0
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  %88 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %87, i32 0, i32 0
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @set_dev_node(i32* %86, i32 %91)
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %30
  br label %108

96:                                               ; preds = %30
  %97 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %98 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to %struct.mlx4_cqe*
  %104 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %105 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %104, i32 0, i32 5
  store %struct.mlx4_cqe* %103, %struct.mlx4_cqe** %105, align 8
  %106 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %107 = load %struct.mlx4_en_cq**, %struct.mlx4_en_cq*** %9, align 8
  store %struct.mlx4_en_cq* %106, %struct.mlx4_en_cq** %107, align 8
  store i32 0, i32* %7, align 4
  br label %113

108:                                              ; preds = %95
  %109 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %15, align 8
  %110 = call i32 @kfree(%struct.mlx4_en_cq* %109)
  %111 = load %struct.mlx4_en_cq**, %struct.mlx4_en_cq*** %9, align 8
  store %struct.mlx4_en_cq* null, %struct.mlx4_en_cq** %111, align 8
  %112 = load i32, i32* %16, align 4
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %108, %96, %25
  %114 = load i32, i32* %7, align 4
  ret i32 %114
}

declare dso_local %struct.mlx4_en_cq* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @set_dev_node(i32*, i32) #1

declare dso_local i32 @mlx4_alloc_hwq_res(%struct.TYPE_13__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @kfree(%struct.mlx4_en_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
