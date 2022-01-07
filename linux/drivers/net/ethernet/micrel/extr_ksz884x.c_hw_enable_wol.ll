; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_hw_enable_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_hw_enable_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i32 }

@KS8841_WOL_MAGIC_ENABLE = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@KS8841_WOL_FRAME0_ENABLE = common dso_local global i32 0, align 4
@WAKE_UCAST = common dso_local global i32 0, align 4
@KS8841_WOL_FRAME1_ENABLE = common dso_local global i32 0, align 4
@WAKE_MCAST = common dso_local global i32 0, align 4
@KS8841_WOL_FRAME2_ENABLE = common dso_local global i32 0, align 4
@WAKE_BCAST = common dso_local global i32 0, align 4
@KS8841_WOL_FRAME3_ENABLE = common dso_local global i32 0, align 4
@WAKE_ARP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*, i32, i32*)* @hw_enable_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_enable_wol(%struct.ksz_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ksz_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.ksz_hw* %0, %struct.ksz_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %8 = load i32, i32* @KS8841_WOL_MAGIC_ENABLE, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @WAKE_MAGIC, align 4
  %11 = and i32 %9, %10
  %12 = call i32 @hw_cfg_wol(%struct.ksz_hw* %7, i32 %8, i32 %11)
  %13 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %14 = load i32, i32* @KS8841_WOL_FRAME0_ENABLE, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @WAKE_UCAST, align 4
  %17 = and i32 %15, %16
  %18 = call i32 @hw_cfg_wol(%struct.ksz_hw* %13, i32 %14, i32 %17)
  %19 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %20 = call i32 @hw_add_wol_ucast(%struct.ksz_hw* %19)
  %21 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %22 = load i32, i32* @KS8841_WOL_FRAME1_ENABLE, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @WAKE_MCAST, align 4
  %25 = and i32 %23, %24
  %26 = call i32 @hw_cfg_wol(%struct.ksz_hw* %21, i32 %22, i32 %25)
  %27 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %28 = call i32 @hw_add_wol_mcast(%struct.ksz_hw* %27)
  %29 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %30 = load i32, i32* @KS8841_WOL_FRAME2_ENABLE, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @WAKE_BCAST, align 4
  %33 = and i32 %31, %32
  %34 = call i32 @hw_cfg_wol(%struct.ksz_hw* %29, i32 %30, i32 %33)
  %35 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %36 = load i32, i32* @KS8841_WOL_FRAME3_ENABLE, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @WAKE_ARP, align 4
  %39 = and i32 %37, %38
  %40 = call i32 @hw_cfg_wol(%struct.ksz_hw* %35, i32 %36, i32 %39)
  %41 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @hw_add_wol_arp(%struct.ksz_hw* %41, i32* %42)
  ret void
}

declare dso_local i32 @hw_cfg_wol(%struct.ksz_hw*, i32, i32) #1

declare dso_local i32 @hw_add_wol_ucast(%struct.ksz_hw*) #1

declare dso_local i32 @hw_add_wol_mcast(%struct.ksz_hw*) #1

declare dso_local i32 @hw_add_wol_arp(%struct.ksz_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
