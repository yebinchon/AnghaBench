; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_vlan_mac_set_rdata_hdr_e2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_vlan_mac_set_rdata_hdr_e2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eth_classify_header = type { i64, i32 }

@BNX2X_SWCID_MASK = common dso_local global i32 0, align 4
@BNX2X_SWCID_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.eth_classify_header*, i32)* @bnx2x_vlan_mac_set_rdata_hdr_e2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vlan_mac_set_rdata_hdr_e2(i32 %0, i32 %1, %struct.eth_classify_header* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.eth_classify_header*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.eth_classify_header* %2, %struct.eth_classify_header** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @BNX2X_SWCID_MASK, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @BNX2X_SWCID_SHIFT, align 4
  %14 = shl i32 %12, %13
  %15 = or i32 %11, %14
  %16 = call i32 @cpu_to_le32(i32 %15)
  %17 = load %struct.eth_classify_header*, %struct.eth_classify_header** %7, align 8
  %18 = getelementptr inbounds %struct.eth_classify_header, %struct.eth_classify_header* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = load %struct.eth_classify_header*, %struct.eth_classify_header** %7, align 8
  %22 = getelementptr inbounds %struct.eth_classify_header, %struct.eth_classify_header* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
