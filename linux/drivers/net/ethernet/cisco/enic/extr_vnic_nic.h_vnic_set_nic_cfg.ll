; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_nic.h_vnic_set_nic_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_nic.h_vnic_set_nic_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NIC_CFG_RSS_DEFAULT_CPU_MASK_FIELD = common dso_local global i32 0, align 4
@NIC_CFG_RSS_HASH_TYPE_MASK_FIELD = common dso_local global i32 0, align 4
@NIC_CFG_RSS_HASH_TYPE_SHIFT = common dso_local global i32 0, align 4
@NIC_CFG_RSS_HASH_BITS_MASK_FIELD = common dso_local global i32 0, align 4
@NIC_CFG_RSS_HASH_BITS_SHIFT = common dso_local global i32 0, align 4
@NIC_CFG_RSS_BASE_CPU_MASK_FIELD = common dso_local global i32 0, align 4
@NIC_CFG_RSS_BASE_CPU_SHIFT = common dso_local global i32 0, align 4
@NIC_CFG_RSS_ENABLE_MASK_FIELD = common dso_local global i32 0, align 4
@NIC_CFG_RSS_ENABLE_SHIFT = common dso_local global i32 0, align 4
@NIC_CFG_TSO_IPID_SPLIT_EN_MASK_FIELD = common dso_local global i32 0, align 4
@NIC_CFG_TSO_IPID_SPLIT_EN_SHIFT = common dso_local global i32 0, align 4
@NIC_CFG_IG_VLAN_STRIP_EN_MASK_FIELD = common dso_local global i32 0, align 4
@NIC_CFG_IG_VLAN_STRIP_EN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, i32, i32, i32)* @vnic_set_nic_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnic_set_nic_cfg(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @NIC_CFG_RSS_DEFAULT_CPU_MASK_FIELD, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @NIC_CFG_RSS_HASH_TYPE_MASK_FIELD, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @NIC_CFG_RSS_HASH_TYPE_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = or i32 %19, %24
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @NIC_CFG_RSS_HASH_BITS_MASK_FIELD, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @NIC_CFG_RSS_HASH_BITS_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = or i32 %25, %30
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @NIC_CFG_RSS_BASE_CPU_MASK_FIELD, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @NIC_CFG_RSS_BASE_CPU_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = or i32 %31, %36
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* @NIC_CFG_RSS_ENABLE_MASK_FIELD, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @NIC_CFG_RSS_ENABLE_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = or i32 %37, %42
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* @NIC_CFG_TSO_IPID_SPLIT_EN_MASK_FIELD, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @NIC_CFG_TSO_IPID_SPLIT_EN_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = or i32 %43, %48
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* @NIC_CFG_IG_VLAN_STRIP_EN_MASK_FIELD, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @NIC_CFG_IG_VLAN_STRIP_EN_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = or i32 %49, %54
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
