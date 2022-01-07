; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_init_quotas.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_init_quotas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlx4_priv = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64* }

@RES_QP = common dso_local global i64 0, align 8
@RES_CQ = common dso_local global i64 0, align 8
@RES_SRQ = common dso_local global i64 0, align 8
@RES_MTT = common dso_local global i64 0, align 8
@RES_MPT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_init_quotas(%struct.mlx4_dev* %0) #0 {
  %2 = alloca %struct.mlx4_dev*, align 8
  %3 = alloca %struct.mlx4_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %2, align 8
  %5 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %6 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %5)
  store %struct.mlx4_priv* %6, %struct.mlx4_priv** %3, align 8
  %7 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %8 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %167

11:                                               ; preds = %1
  %12 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %13 = call i32 @mlx4_is_mfunc(%struct.mlx4_dev* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %79, label %15

15:                                               ; preds = %11
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %17 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 9
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %21 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 8
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %19, %23
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %26 = call i64 @mlx4_num_reserved_sqps(%struct.mlx4_dev* %25)
  %27 = sub nsw i64 %24, %26
  %28 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %29 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 4
  store i64 %27, i64* %30, align 8
  %31 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %32 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 7
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %36 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %34, %38
  %40 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %41 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  store i64 %39, i64* %42, align 8
  %43 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %44 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %48 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %46, %50
  %52 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %53 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  store i64 %51, i64* %54, align 8
  %55 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %56 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %60 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %58, %62
  %64 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %65 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  store i64 %63, i64* %66, align 8
  %67 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %68 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %72 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %70, %74
  %76 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %77 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  store i64 %75, i64* %78, align 8
  br label %167

79:                                               ; preds = %11
  %80 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %81 = call i32 @mlx4_master_func_num(%struct.mlx4_dev* %80)
  store i32 %81, i32* %4, align 4
  %82 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %83 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = load i64, i64* @RES_QP, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %97 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 4
  store i64 %95, i64* %98, align 8
  %99 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %100 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = load i64, i64* @RES_CQ, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %114 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 3
  store i64 %112, i64* %115, align 8
  %116 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %117 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = load i64, i64* @RES_SRQ, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %131 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  store i64 %129, i64* %132, align 8
  %133 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %134 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = load i64, i64* @RES_MTT, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i64*, i64** %141, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %148 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  store i64 %146, i64* %149, align 8
  %150 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %151 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %154, align 8
  %156 = load i64, i64* @RES_MPT, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i64*, i64** %158, align 8
  %160 = load i32, i32* %4, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %165 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  store i64 %163, i64* %166, align 8
  br label %167

167:                                              ; preds = %79, %15, %10
  ret void
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i64 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i64 @mlx4_num_reserved_sqps(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_master_func_num(%struct.mlx4_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
