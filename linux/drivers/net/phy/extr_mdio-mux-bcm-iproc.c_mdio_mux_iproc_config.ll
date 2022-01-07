; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mux-bcm-iproc.c_mdio_mux_iproc_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mux-bcm-iproc.c_mdio_mux_iproc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_mdiomux_desc = type { i64, i64 }

@MDIO_SCAN_CTRL_OFFSET = common dso_local global i64 0, align 8
@MDIO_SCAN_CTRL_OVRIDE_EXT_MSTR = common dso_local global i32 0, align 4
@MDIO_OPERATING_FREQUENCY = common dso_local global i32 0, align 4
@MDIO_RATE_ADJ_DIVIDENT = common dso_local global i32 0, align 4
@MDIO_RATE_ADJ_DIVIDENT_SHIFT = common dso_local global i32 0, align 4
@MDIO_RATE_ADJ_EXT_OFFSET = common dso_local global i64 0, align 8
@MDIO_RATE_ADJ_INT_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iproc_mdiomux_desc*)* @mdio_mux_iproc_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdio_mux_iproc_config(%struct.iproc_mdiomux_desc* %0) #0 {
  %2 = alloca %struct.iproc_mdiomux_desc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.iproc_mdiomux_desc* %0, %struct.iproc_mdiomux_desc** %2, align 8
  %5 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %2, align 8
  %6 = getelementptr inbounds %struct.iproc_mdiomux_desc, %struct.iproc_mdiomux_desc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MDIO_SCAN_CTRL_OFFSET, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl(i64 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @MDIO_SCAN_CTRL_OVRIDE_EXT_MSTR, align 4
  %12 = call i32 @BIT(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %2, align 8
  %17 = getelementptr inbounds %struct.iproc_mdiomux_desc, %struct.iproc_mdiomux_desc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MDIO_SCAN_CTRL_OFFSET, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 %15, i64 %20)
  %22 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %2, align 8
  %23 = getelementptr inbounds %struct.iproc_mdiomux_desc, %struct.iproc_mdiomux_desc* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %1
  %27 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %2, align 8
  %28 = getelementptr inbounds %struct.iproc_mdiomux_desc, %struct.iproc_mdiomux_desc* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @clk_get_rate(i64 %29)
  %31 = load i32, i32* @MDIO_OPERATING_FREQUENCY, align 4
  %32 = sdiv i32 %30, %31
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @MDIO_RATE_ADJ_DIVIDENT, align 4
  %35 = add nsw i32 %34, 1
  %36 = sdiv i32 %33, %35
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @MDIO_RATE_ADJ_DIVIDENT, align 4
  %39 = load i32, i32* @MDIO_RATE_ADJ_DIVIDENT_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %2, align 8
  %45 = getelementptr inbounds %struct.iproc_mdiomux_desc, %struct.iproc_mdiomux_desc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MDIO_RATE_ADJ_EXT_OFFSET, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 %43, i64 %48)
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.iproc_mdiomux_desc*, %struct.iproc_mdiomux_desc** %2, align 8
  %52 = getelementptr inbounds %struct.iproc_mdiomux_desc, %struct.iproc_mdiomux_desc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MDIO_RATE_ADJ_INT_OFFSET, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  br label %57

57:                                               ; preds = %26, %1
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clk_get_rate(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
