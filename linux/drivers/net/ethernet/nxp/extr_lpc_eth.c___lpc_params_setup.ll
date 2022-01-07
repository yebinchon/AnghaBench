; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/nxp/extr_lpc_eth.c___lpc_params_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/nxp/extr_lpc_eth.c___lpc_params_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdata_local = type { i64, i64, i32 }

@DUPLEX_FULL = common dso_local global i64 0, align 8
@LPC_MAC2_FULL_DUPLEX = common dso_local global i32 0, align 4
@LPC_COMMAND_FULLDUPLEX = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@LPC_SUPP_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netdata_local*)* @__lpc_params_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__lpc_params_setup(%struct.netdata_local* %0) #0 {
  %2 = alloca %struct.netdata_local*, align 8
  %3 = alloca i32, align 4
  store %struct.netdata_local* %0, %struct.netdata_local** %2, align 8
  %4 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %5 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @DUPLEX_FULL, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %44

9:                                                ; preds = %1
  %10 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %11 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @LPC_ENET_MAC2(i32 %12)
  %14 = call i32 @readl(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @LPC_MAC2_FULL_DUPLEX, align 4
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %20 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @LPC_ENET_MAC2(i32 %21)
  %23 = call i32 @writel(i32 %18, i32 %22)
  %24 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %25 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @LPC_ENET_COMMAND(i32 %26)
  %28 = call i32 @readl(i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @LPC_COMMAND_FULLDUPLEX, align 4
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %34 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @LPC_ENET_COMMAND(i32 %35)
  %37 = call i32 @writel(i32 %32, i32 %36)
  %38 = call i32 @LPC_IPGT_LOAD(i32 21)
  %39 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %40 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @LPC_ENET_IPGT(i32 %41)
  %43 = call i32 @writel(i32 %38, i32 %42)
  br label %81

44:                                               ; preds = %1
  %45 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %46 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @LPC_ENET_MAC2(i32 %47)
  %49 = call i32 @readl(i32 %48)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* @LPC_MAC2_FULL_DUPLEX, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %3, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %56 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @LPC_ENET_MAC2(i32 %57)
  %59 = call i32 @writel(i32 %54, i32 %58)
  %60 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %61 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @LPC_ENET_COMMAND(i32 %62)
  %64 = call i32 @readl(i32 %63)
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* @LPC_COMMAND_FULLDUPLEX, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %3, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %3, align 4
  %70 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %71 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @LPC_ENET_COMMAND(i32 %72)
  %74 = call i32 @writel(i32 %69, i32 %73)
  %75 = call i32 @LPC_IPGT_LOAD(i32 18)
  %76 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %77 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @LPC_ENET_IPGT(i32 %78)
  %80 = call i32 @writel(i32 %75, i32 %79)
  br label %81

81:                                               ; preds = %44, %9
  %82 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %83 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SPEED_100, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load i32, i32* @LPC_SUPP_SPEED, align 4
  %89 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %90 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @LPC_ENET_SUPP(i32 %91)
  %93 = call i32 @writel(i32 %88, i32 %92)
  br label %100

94:                                               ; preds = %81
  %95 = load %struct.netdata_local*, %struct.netdata_local** %2, align 8
  %96 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @LPC_ENET_SUPP(i32 %97)
  %99 = call i32 @writel(i32 0, i32 %98)
  br label %100

100:                                              ; preds = %94, %87
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @LPC_ENET_MAC2(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @LPC_ENET_COMMAND(i32) #1

declare dso_local i32 @LPC_IPGT_LOAD(i32) #1

declare dso_local i32 @LPC_ENET_IPGT(i32) #1

declare dso_local i32 @LPC_ENET_SUPP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
