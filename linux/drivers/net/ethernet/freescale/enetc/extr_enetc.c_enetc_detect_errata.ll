; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_detect_errata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_detect_errata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_si = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ENETC_REV1 = common dso_local global i64 0, align 8
@ENETC_ERR_TXCSUM = common dso_local global i32 0, align 4
@ENETC_ERR_VLAN_ISOL = common dso_local global i32 0, align 4
@ENETC_ERR_UCMCSWP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enetc_si*)* @enetc_detect_errata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enetc_detect_errata(%struct.enetc_si* %0) #0 {
  %2 = alloca %struct.enetc_si*, align 8
  store %struct.enetc_si* %0, %struct.enetc_si** %2, align 8
  %3 = load %struct.enetc_si*, %struct.enetc_si** %2, align 8
  %4 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ENETC_REV1, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load i32, i32* @ENETC_ERR_TXCSUM, align 4
  %12 = load i32, i32* @ENETC_ERR_VLAN_ISOL, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @ENETC_ERR_UCMCSWP, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.enetc_si*, %struct.enetc_si** %2, align 8
  %17 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  br label %18

18:                                               ; preds = %10, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
