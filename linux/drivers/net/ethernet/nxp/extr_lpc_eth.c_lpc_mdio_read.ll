; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/nxp/extr_lpc_eth.c_lpc_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/nxp/extr_lpc_eth.c_lpc_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.netdata_local* }
%struct.netdata_local = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@LPC_MCMD_READ = common dso_local global i32 0, align 4
@LPC_MIND_BUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @lpc_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc_mdio_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.netdata_local*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %12 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %11, i32 0, i32 0
  %13 = load %struct.netdata_local*, %struct.netdata_local** %12, align 8
  store %struct.netdata_local* %13, %struct.netdata_local** %8, align 8
  %14 = load i64, i64* @jiffies, align 8
  %15 = call i64 @msecs_to_jiffies(i32 100)
  %16 = add i64 %14, %15
  store i64 %16, i64* %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = shl i32 %17, 8
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.netdata_local*, %struct.netdata_local** %8, align 8
  %22 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @LPC_ENET_MADR(i32 %23)
  %25 = call i32 @writel(i32 %20, i32 %24)
  %26 = load i32, i32* @LPC_MCMD_READ, align 4
  %27 = load %struct.netdata_local*, %struct.netdata_local** %8, align 8
  %28 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @LPC_ENET_MCMD(i32 %29)
  %31 = call i32 @writel(i32 %26, i32 %30)
  br label %32

32:                                               ; preds = %49, %3
  %33 = load %struct.netdata_local*, %struct.netdata_local** %8, align 8
  %34 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @LPC_ENET_MIND(i32 %35)
  %37 = call i32 @readl(i32 %36)
  %38 = load i32, i32* @LPC_MIND_BUSY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %32
  %42 = load i64, i64* @jiffies, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @time_after(i64 %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %63

49:                                               ; preds = %41
  %50 = call i32 (...) @cpu_relax()
  br label %32

51:                                               ; preds = %32
  %52 = load %struct.netdata_local*, %struct.netdata_local** %8, align 8
  %53 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @LPC_ENET_MRDD(i32 %54)
  %56 = call i32 @readl(i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load %struct.netdata_local*, %struct.netdata_local** %8, align 8
  %58 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @LPC_ENET_MCMD(i32 %59)
  %61 = call i32 @writel(i32 0, i32 %60)
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %51, %46
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @LPC_ENET_MADR(i32) #1

declare dso_local i32 @LPC_ENET_MCMD(i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @LPC_ENET_MIND(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @LPC_ENET_MRDD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
