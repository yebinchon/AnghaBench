; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_fifo_shp_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_fifo_shp_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_priv = type { %struct.cpsw_common* }
%struct.cpsw_common = type { %struct.TYPE_2__*, %struct.cpsw_slave* }
%struct.TYPE_2__ = type { i32 }
%struct.cpsw_slave = type { i32 }

@CPSW_FIFO_SHAPE_EN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpsw_priv*, i32, i32)* @cpsw_fifo_shp_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_fifo_shp_on(%struct.cpsw_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cpsw_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpsw_common*, align 8
  %8 = alloca %struct.cpsw_slave*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cpsw_priv* %0, %struct.cpsw_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %13 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %12, i32 0, i32 0
  %14 = load %struct.cpsw_common*, %struct.cpsw_common** %13, align 8
  store %struct.cpsw_common* %14, %struct.cpsw_common** %7, align 8
  %15 = load %struct.cpsw_common*, %struct.cpsw_common** %7, align 8
  %16 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @readl_relaxed(i32* %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.cpsw_common*, %struct.cpsw_common** %7, align 8
  %21 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %20, i32 0, i32 1
  %22 = load %struct.cpsw_slave*, %struct.cpsw_slave** %21, align 8
  %23 = load %struct.cpsw_common*, %struct.cpsw_common** %7, align 8
  %24 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %25 = call i64 @cpsw_slave_index(%struct.cpsw_common* %23, %struct.cpsw_priv* %24)
  %26 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %22, i64 %25
  store %struct.cpsw_slave* %26, %struct.cpsw_slave** %8, align 8
  %27 = load i32, i32* @CPSW_FIFO_SHAPE_EN_SHIFT, align 4
  %28 = load %struct.cpsw_slave*, %struct.cpsw_slave** %8, align 8
  %29 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 3, %30
  %32 = add nsw i32 %27, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %5, align 4
  %35 = shl i32 1, %34
  %36 = load i32, i32* %9, align 4
  %37 = shl i32 %35, %36
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %3
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = or i32 %41, %42
  br label %49

44:                                               ; preds = %3
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  br label %49

49:                                               ; preds = %44, %40
  %50 = phi i32 [ %43, %40 ], [ %48, %44 ]
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.cpsw_common*, %struct.cpsw_common** %7, align 8
  %53 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @writel_relaxed(i32 %51, i32* %55)
  ret void
}

declare dso_local i32 @readl_relaxed(i32*) #1

declare dso_local i64 @cpsw_slave_index(%struct.cpsw_common*, %struct.cpsw_priv*) #1

declare dso_local i32 @writel_relaxed(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
