; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_sw_cfg_port_base_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_sw_cfg_port_base_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@KS8842_PORT_CTRL_2_OFFSET = common dso_local global i64 0, align 8
@PORT_VLAN_MEMBERSHIP = common dso_local global i32 0, align 4
@PORT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*, i32, i32)* @sw_cfg_port_base_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sw_cfg_port_base_vlan(%struct.ksz_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ksz_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ksz_hw* %0, %struct.ksz_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @PORT_CTRL_ADDR(i32 %9, i64 %10)
  %12 = load i64, i64* @KS8842_PORT_CTRL_2_OFFSET, align 8
  %13 = load i64, i64* %7, align 8
  %14 = add nsw i64 %13, %12
  store i64 %14, i64* %7, align 8
  %15 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %16 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readb(i64 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @PORT_VLAN_MEMBERSHIP, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @PORT_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %32 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writeb(i32 %30, i64 %35)
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %39 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %37, i32* %46, align 4
  ret void
}

declare dso_local i32 @PORT_CTRL_ADDR(i32, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
