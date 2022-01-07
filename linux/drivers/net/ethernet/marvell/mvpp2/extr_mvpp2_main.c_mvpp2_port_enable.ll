; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_port_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_port_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i64, i64, i32 }

@MVPP22_XLG_CTRL0_REG = common dso_local global i64 0, align 8
@MVPP22_XLG_CTRL0_PORT_EN = common dso_local global i32 0, align 4
@MVPP22_XLG_CTRL0_MIB_CNT_DIS = common dso_local global i32 0, align 4
@MVPP2_GMAC_CTRL_0_REG = common dso_local global i64 0, align 8
@MVPP2_GMAC_PORT_EN_MASK = common dso_local global i32 0, align 4
@MVPP2_GMAC_MIB_CNTR_EN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*)* @mvpp2_port_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_port_enable(%struct.mvpp2_port* %0) #0 {
  %2 = alloca %struct.mvpp2_port*, align 8
  %3 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %2, align 8
  %4 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %5 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %35

8:                                                ; preds = %1
  %9 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %10 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @mvpp2_is_xlg(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %8
  %15 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %16 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MVPP22_XLG_CTRL0_REG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @MVPP22_XLG_CTRL0_PORT_EN, align 4
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @MVPP22_XLG_CTRL0_MIB_CNT_DIS, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %30 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MVPP22_XLG_CTRL0_REG, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %28, i64 %33)
  br label %55

35:                                               ; preds = %8, %1
  %36 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %37 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MVPP2_GMAC_CTRL_0_REG, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @readl(i64 %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* @MVPP2_GMAC_PORT_EN_MASK, align 4
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* @MVPP2_GMAC_MIB_CNTR_EN_MASK, align 4
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %50 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MVPP2_GMAC_CTRL_0_REG, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %48, i64 %53)
  br label %55

55:                                               ; preds = %35, %14
  ret void
}

declare dso_local i64 @mvpp2_is_xlg(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
