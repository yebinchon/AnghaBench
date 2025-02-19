; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/nxp/extr_lpc_eth.c___lpc_set_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/nxp/extr_lpc_eth.c___lpc_set_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdata_local = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Ethernet MAC address %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netdata_local*, i32*)* @__lpc_set_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__lpc_set_mac(%struct.netdata_local* %0, i32* %1) #0 {
  %3 = alloca %struct.netdata_local*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.netdata_local* %0, %struct.netdata_local** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 %11, 8
  %13 = or i32 %8, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %16 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @LPC_ENET_SA2(i32 %17)
  %19 = call i32 @writel(i32 %14, i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 8
  %27 = or i32 %22, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %30 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @LPC_ENET_SA1(i32 %31)
  %33 = call i32 @writel(i32 %28, i32 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 5
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 8
  %41 = or i32 %36, %40
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %44 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @LPC_ENET_SA0(i32 %45)
  %47 = call i32 @writel(i32 %42, i32 %46)
  %48 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %49 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @netdev_dbg(i32 %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %51)
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @LPC_ENET_SA2(i32) #1

declare dso_local i32 @LPC_ENET_SA1(i32) #1

declare dso_local i32 @LPC_ENET_SA0(i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
