; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/nxp/extr_lpc_eth.c_lpc_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/nxp/extr_lpc_eth.c_lpc_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.netdata_local* }
%struct.netdata_local = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@LPC_MIND_BUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @lpc_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc_mdio_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.netdata_local*, align 8
  %11 = alloca i64, align 8
  store %struct.mii_bus* %0, %struct.mii_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %13 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %12, i32 0, i32 0
  %14 = load %struct.netdata_local*, %struct.netdata_local** %13, align 8
  store %struct.netdata_local* %14, %struct.netdata_local** %10, align 8
  %15 = load i64, i64* @jiffies, align 8
  %16 = call i64 @msecs_to_jiffies(i32 100)
  %17 = add i64 %15, %16
  store i64 %17, i64* %11, align 8
  %18 = load i32, i32* %7, align 4
  %19 = shl i32 %18, 8
  %20 = load i32, i32* %8, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.netdata_local*, %struct.netdata_local** %10, align 8
  %23 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @LPC_ENET_MADR(i32 %24)
  %26 = call i32 @writel(i32 %21, i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.netdata_local*, %struct.netdata_local** %10, align 8
  %29 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @LPC_ENET_MWTD(i32 %30)
  %32 = call i32 @writel(i32 %27, i32 %31)
  br label %33

33:                                               ; preds = %50, %4
  %34 = load %struct.netdata_local*, %struct.netdata_local** %10, align 8
  %35 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @LPC_ENET_MIND(i32 %36)
  %38 = call i32 @readl(i32 %37)
  %39 = load i32, i32* @LPC_MIND_BUSY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %33
  %43 = load i64, i64* @jiffies, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i64 @time_after(i64 %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %53

50:                                               ; preds = %42
  %51 = call i32 (...) @cpu_relax()
  br label %33

52:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %47
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @LPC_ENET_MADR(i32) #1

declare dso_local i32 @LPC_ENET_MWTD(i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @LPC_ENET_MIND(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
