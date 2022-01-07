; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_rfe_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_rfe_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { i32 }

@RFE_RSS_CFG = common dso_local global i32 0, align 4
@RFE_RSS_CFG_UDP_IPV6_EX_ = common dso_local global i32 0, align 4
@RFE_RSS_CFG_TCP_IPV6_EX_ = common dso_local global i32 0, align 4
@RFE_RSS_CFG_IPV6_EX_ = common dso_local global i32 0, align 4
@RFE_RSS_CFG_UDP_IPV6_ = common dso_local global i32 0, align 4
@RFE_RSS_CFG_TCP_IPV6_ = common dso_local global i32 0, align 4
@RFE_RSS_CFG_IPV6_ = common dso_local global i32 0, align 4
@RFE_RSS_CFG_UDP_IPV4_ = common dso_local global i32 0, align 4
@RFE_RSS_CFG_TCP_IPV4_ = common dso_local global i32 0, align 4
@RFE_RSS_CFG_IPV4_ = common dso_local global i32 0, align 4
@RFE_RSS_CFG_VALID_HASH_BITS_ = common dso_local global i32 0, align 4
@RFE_RSS_CFG_RSS_QUEUE_ENABLE_ = common dso_local global i32 0, align 4
@RFE_RSS_CFG_RSS_HASH_STORE_ = common dso_local global i32 0, align 4
@RFE_RSS_CFG_RSS_ENABLE_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lan743x_adapter*)* @lan743x_rfe_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan743x_rfe_open(%struct.lan743x_adapter* %0) #0 {
  %2 = alloca %struct.lan743x_adapter*, align 8
  store %struct.lan743x_adapter* %0, %struct.lan743x_adapter** %2, align 8
  %3 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %4 = load i32, i32* @RFE_RSS_CFG, align 4
  %5 = load i32, i32* @RFE_RSS_CFG_UDP_IPV6_EX_, align 4
  %6 = load i32, i32* @RFE_RSS_CFG_TCP_IPV6_EX_, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @RFE_RSS_CFG_IPV6_EX_, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @RFE_RSS_CFG_UDP_IPV6_, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @RFE_RSS_CFG_TCP_IPV6_, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @RFE_RSS_CFG_IPV6_, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @RFE_RSS_CFG_UDP_IPV4_, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @RFE_RSS_CFG_TCP_IPV4_, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @RFE_RSS_CFG_IPV4_, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @RFE_RSS_CFG_VALID_HASH_BITS_, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @RFE_RSS_CFG_RSS_QUEUE_ENABLE_, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @RFE_RSS_CFG_RSS_HASH_STORE_, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @RFE_RSS_CFG_RSS_ENABLE_, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %3, i32 %4, i32 %29)
  ret void
}

declare dso_local i32 @lan743x_csr_write(%struct.lan743x_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
