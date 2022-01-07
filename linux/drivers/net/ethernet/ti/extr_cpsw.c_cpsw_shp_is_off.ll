; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_shp_is_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_shp_is_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_priv = type { %struct.cpsw_common* }
%struct.cpsw_common = type { %struct.cpsw_slave*, %struct.TYPE_2__* }
%struct.cpsw_slave = type { i32 }
%struct.TYPE_2__ = type { i32 }

@CPSW_FIFO_SHAPE_EN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpsw_priv*)* @cpsw_shp_is_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_shp_is_off(%struct.cpsw_priv* %0) #0 {
  %2 = alloca %struct.cpsw_priv*, align 8
  %3 = alloca %struct.cpsw_common*, align 8
  %4 = alloca %struct.cpsw_slave*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cpsw_priv* %0, %struct.cpsw_priv** %2, align 8
  %8 = load %struct.cpsw_priv*, %struct.cpsw_priv** %2, align 8
  %9 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %8, i32 0, i32 0
  %10 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  store %struct.cpsw_common* %10, %struct.cpsw_common** %3, align 8
  %11 = load %struct.cpsw_common*, %struct.cpsw_common** %3, align 8
  %12 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @readl_relaxed(i32* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.cpsw_common*, %struct.cpsw_common** %3, align 8
  %17 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %16, i32 0, i32 0
  %18 = load %struct.cpsw_slave*, %struct.cpsw_slave** %17, align 8
  %19 = load %struct.cpsw_common*, %struct.cpsw_common** %3, align 8
  %20 = load %struct.cpsw_priv*, %struct.cpsw_priv** %2, align 8
  %21 = call i64 @cpsw_slave_index(%struct.cpsw_common* %19, %struct.cpsw_priv* %20)
  %22 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %18, i64 %21
  store %struct.cpsw_slave* %22, %struct.cpsw_slave** %4, align 8
  %23 = load i32, i32* @CPSW_FIFO_SHAPE_EN_SHIFT, align 4
  %24 = load %struct.cpsw_slave*, %struct.cpsw_slave** %4, align 8
  %25 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 3, %26
  %28 = add nsw i32 %23, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = shl i32 7, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  ret i32 %37
}

declare dso_local i32 @readl_relaxed(i32*) #1

declare dso_local i64 @cpsw_slave_index(%struct.cpsw_common*, %struct.cpsw_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
