; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_set_desc_depth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_set_desc_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hix5hd2_priv = type { i64 }

@BITS_RX_FQ_DEPTH_EN = common dso_local global i32 0, align 4
@RX_FQ_REG_EN = common dso_local global i64 0, align 8
@RX_FQ_DEPTH = common dso_local global i64 0, align 8
@BITS_RX_BQ_DEPTH_EN = common dso_local global i32 0, align 4
@RX_BQ_REG_EN = common dso_local global i64 0, align 8
@RX_BQ_DEPTH = common dso_local global i64 0, align 8
@BITS_TX_BQ_DEPTH_EN = common dso_local global i32 0, align 4
@TX_BQ_REG_EN = common dso_local global i64 0, align 8
@TX_BQ_DEPTH = common dso_local global i64 0, align 8
@BITS_TX_RQ_DEPTH_EN = common dso_local global i32 0, align 4
@TX_RQ_REG_EN = common dso_local global i64 0, align 8
@TX_RQ_DEPTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hix5hd2_priv*, i32, i32)* @hix5hd2_set_desc_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hix5hd2_set_desc_depth(%struct.hix5hd2_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hix5hd2_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hix5hd2_priv* %0, %struct.hix5hd2_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @BITS_RX_FQ_DEPTH_EN, align 4
  %8 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %9 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @RX_FQ_REG_EN, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel_relaxed(i32 %7, i64 %12)
  %14 = load i32, i32* %5, align 4
  %15 = shl i32 %14, 3
  %16 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %17 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @RX_FQ_DEPTH, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel_relaxed(i32 %15, i64 %20)
  %22 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %23 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RX_FQ_REG_EN, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel_relaxed(i32 0, i64 %26)
  %28 = load i32, i32* @BITS_RX_BQ_DEPTH_EN, align 4
  %29 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %30 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RX_BQ_REG_EN, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel_relaxed(i32 %28, i64 %33)
  %35 = load i32, i32* %5, align 4
  %36 = shl i32 %35, 3
  %37 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %38 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @RX_BQ_DEPTH, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel_relaxed(i32 %36, i64 %41)
  %43 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %44 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @RX_BQ_REG_EN, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel_relaxed(i32 0, i64 %47)
  %49 = load i32, i32* @BITS_TX_BQ_DEPTH_EN, align 4
  %50 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %51 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TX_BQ_REG_EN, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel_relaxed(i32 %49, i64 %54)
  %56 = load i32, i32* %6, align 4
  %57 = shl i32 %56, 3
  %58 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %59 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @TX_BQ_DEPTH, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel_relaxed(i32 %57, i64 %62)
  %64 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %65 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @TX_BQ_REG_EN, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel_relaxed(i32 0, i64 %68)
  %70 = load i32, i32* @BITS_TX_RQ_DEPTH_EN, align 4
  %71 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %72 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @TX_RQ_REG_EN, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel_relaxed(i32 %70, i64 %75)
  %77 = load i32, i32* %6, align 4
  %78 = shl i32 %77, 3
  %79 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %80 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @TX_RQ_DEPTH, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writel_relaxed(i32 %78, i64 %83)
  %85 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %86 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @TX_RQ_REG_EN, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @writel_relaxed(i32 0, i64 %89)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
