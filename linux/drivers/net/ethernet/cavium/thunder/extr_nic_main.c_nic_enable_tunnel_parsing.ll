; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_enable_tunnel_parsing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_enable_tunnel_parsing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { i32 }

@IPV6_PROT = common dso_local global i32 0, align 4
@IPV4_PROT = common dso_local global i32 0, align 4
@ET_PROT = common dso_local global i32 0, align 4
@IPV6_PROT_DEF = common dso_local global i32 0, align 4
@IPV4_PROT_DEF = common dso_local global i32 0, align 4
@ET_PROT_DEF = common dso_local global i32 0, align 4
@NIC_PF_RX_GENEVE_DEF = common dso_local global i32 0, align 4
@UDP_GENEVE_PORT_NUM = common dso_local global i64 0, align 8
@NIC_PF_RX_GENEVE_PROT_DEF = common dso_local global i32 0, align 4
@NIC_PF_RX_NVGRE_PROT_DEF = common dso_local global i32 0, align 4
@NIC_PF_RX_VXLAN_DEF_0_1 = common dso_local global i32 0, align 4
@UDP_VXLAN_PORT_NUM = common dso_local global i64 0, align 8
@NIC_PF_RX_VXLAN_PROT_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicpf*, i32)* @nic_enable_tunnel_parsing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nic_enable_tunnel_parsing(%struct.nicpf* %0, i32 %1) #0 {
  %3 = alloca %struct.nicpf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.nicpf* %0, %struct.nicpf** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @IPV6_PROT, align 4
  %8 = shl i32 %7, 32
  %9 = load i32, i32* @IPV4_PROT, align 4
  %10 = shl i32 %9, 16
  %11 = or i32 %8, %10
  %12 = load i32, i32* @ET_PROT, align 4
  %13 = or i32 %11, %12
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %5, align 8
  %15 = load i32, i32* @IPV6_PROT_DEF, align 4
  %16 = shl i32 %15, 32
  %17 = load i32, i32* @IPV4_PROT_DEF, align 4
  %18 = shl i32 %17, 16
  %19 = or i32 %16, %18
  %20 = load i32, i32* @ET_PROT_DEF, align 4
  %21 = or i32 %19, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %6, align 8
  %23 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %24 = load i32, i32* @NIC_PF_RX_GENEVE_DEF, align 4
  %25 = load i64, i64* @UDP_GENEVE_PORT_NUM, align 8
  %26 = or i64 -9223372036854775808, %25
  %27 = trunc i64 %26 to i32
  %28 = call i32 @nic_reg_write(%struct.nicpf* %23, i32 %24, i32 %27)
  %29 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %30 = load i32, i32* @NIC_PF_RX_GENEVE_PROT_DEF, align 4
  %31 = load i64, i64* %5, align 8
  %32 = or i64 -2305843009213693952, %31
  %33 = trunc i64 %32 to i32
  %34 = call i32 @nic_reg_write(%struct.nicpf* %29, i32 %30, i32 %33)
  %35 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %36 = load i32, i32* @NIC_PF_RX_NVGRE_PROT_DEF, align 4
  %37 = load i64, i64* %5, align 8
  %38 = or i64 -2305843009213693952, %37
  %39 = trunc i64 %38 to i32
  %40 = call i32 @nic_reg_write(%struct.nicpf* %35, i32 %36, i32 %39)
  %41 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %42 = load i32, i32* @NIC_PF_RX_VXLAN_DEF_0_1, align 4
  %43 = load i64, i64* @UDP_VXLAN_PORT_NUM, align 8
  %44 = or i64 -9223372036854775808, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @nic_reg_write(%struct.nicpf* %41, i32 %42, i32 %45)
  %47 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %48 = load i32, i32* @NIC_PF_RX_VXLAN_PROT_DEF, align 4
  %49 = load i64, i64* %6, align 8
  %50 = or i64 -1152921504606846976, %49
  %51 = trunc i64 %50 to i32
  %52 = call i32 @nic_reg_write(%struct.nicpf* %47, i32 %48, i32 %51)
  ret void
}

declare dso_local i32 @nic_reg_write(%struct.nicpf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
