; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_mdio.c_sxgbe_mdio_c22.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_mdio.c_sxgbe_mdio_c22.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sxgbe_priv_data = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@SXGBE_MDIO_CLAUSE22_PORT_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sxgbe_priv_data*, i32, i32, i32, i32)* @sxgbe_mdio_c22 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sxgbe_mdio_c22(%struct.sxgbe_priv_data* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sxgbe_priv_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sxgbe_priv_data* %0, %struct.sxgbe_priv_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %8, align 4
  %13 = shl i32 1, %12
  %14 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %6, align 8
  %15 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SXGBE_MDIO_CLAUSE22_PORT_REG, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 %13, i64 %18)
  %20 = load i32, i32* %8, align 4
  %21 = shl i32 %20, 16
  %22 = load i32, i32* %9, align 4
  %23 = and i32 %22, 31
  %24 = or i32 %21, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %6, align 8
  %27 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %6, align 8
  %30 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %28, %34
  %36 = call i32 @writel(i32 %25, i64 %35)
  %37 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @sxgbe_mdio_ctrl_data(%struct.sxgbe_priv_data* %37, i32 %38, i32 %39)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @sxgbe_mdio_ctrl_data(%struct.sxgbe_priv_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
