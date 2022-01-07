; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_tenxpress.c_tenxpress_ext_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_tenxpress.c_tenxpress_ext_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i64 }

@MDIO_MMD_PHYXS = common dso_local global i32 0, align 4
@PHYXS_TEST1 = common dso_local global i32 0, align 4
@LOOPBACK_NEAR_LBN = common dso_local global i32 0, align 4
@LOOPBACK_PHYXS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_nic*)* @tenxpress_ext_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tenxpress_ext_loopback(%struct.ef4_nic* %0) #0 {
  %2 = alloca %struct.ef4_nic*, align 8
  store %struct.ef4_nic* %0, %struct.ef4_nic** %2, align 8
  %3 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %4 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  %5 = load i32, i32* @PHYXS_TEST1, align 4
  %6 = load i32, i32* @LOOPBACK_NEAR_LBN, align 4
  %7 = shl i32 1, %6
  %8 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %9 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @LOOPBACK_PHYXS, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @ef4_mdio_set_flag(%struct.ef4_nic* %3, i32 %4, i32 %5, i32 %7, i32 %13)
  ret void
}

declare dso_local i32 @ef4_mdio_set_flag(%struct.ef4_nic*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
