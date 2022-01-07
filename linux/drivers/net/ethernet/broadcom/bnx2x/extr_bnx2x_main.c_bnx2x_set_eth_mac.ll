; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_set_eth_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_set_eth_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_4__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Adding Eth MAC\0A\00", align 1
@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4
@BNX2X_ETH_MAC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_set_eth_mac(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %8 = call i64 @IS_PF(%struct.bnx2x* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  %11 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %12 = call i32 @DP(i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %14 = call i32 @__set_bit(i32 %13, i64* %6)
  %15 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %16 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %17 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %22 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @BNX2X_ETH_MAC, align 4
  %27 = call i32 @bnx2x_set_mac_one(%struct.bnx2x* %15, i32 %20, i32* %24, i32 %25, i32 %26, i64* %6)
  store i32 %27, i32* %3, align 4
  br label %42

28:                                               ; preds = %2
  %29 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %30 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %31 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %36 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @bnx2x_vfpf_config_mac(%struct.bnx2x* %29, i32 %34, i32 %39, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %28, %10
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @IS_PF(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i32 @bnx2x_set_mac_one(%struct.bnx2x*, i32, i32*, i32, i32, i64*) #1

declare dso_local i32 @bnx2x_vfpf_config_mac(%struct.bnx2x*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
