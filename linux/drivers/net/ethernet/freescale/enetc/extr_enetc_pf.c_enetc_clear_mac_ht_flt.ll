; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_clear_mac_ht_flt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_clear_mac_ht_flt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_si = type { i32, i32 }

@ENETC_ERR_UCMCSWP = common dso_local global i32 0, align 4
@UC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enetc_si*, i32, i32)* @enetc_clear_mac_ht_flt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enetc_clear_mac_ht_flt(%struct.enetc_si* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.enetc_si*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.enetc_si* %0, %struct.enetc_si** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %9 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ENETC_ERR_UCMCSWP, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @UC, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %18 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %17, i32 0, i32 1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @ENETC_PSIUMHFR0(i32 %19, i32 %20)
  %22 = call i32 @enetc_port_wr(i32* %18, i32 %21, i32 0)
  %23 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %24 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %23, i32 0, i32 1
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @ENETC_PSIUMHFR1(i32 %25)
  %27 = call i32 @enetc_port_wr(i32* %24, i32 %26, i32 0)
  br label %40

28:                                               ; preds = %3
  %29 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %30 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %29, i32 0, i32 1
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @ENETC_PSIMMHFR0(i32 %31, i32 %32)
  %34 = call i32 @enetc_port_wr(i32* %30, i32 %33, i32 0)
  %35 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %36 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %35, i32 0, i32 1
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @ENETC_PSIMMHFR1(i32 %37)
  %39 = call i32 @enetc_port_wr(i32* %36, i32 %38, i32 0)
  br label %40

40:                                               ; preds = %28, %16
  ret void
}

declare dso_local i32 @enetc_port_wr(i32*, i32, i32) #1

declare dso_local i32 @ENETC_PSIUMHFR0(i32, i32) #1

declare dso_local i32 @ENETC_PSIUMHFR1(i32) #1

declare dso_local i32 @ENETC_PSIMMHFR0(i32, i32) #1

declare dso_local i32 @ENETC_PSIMMHFR1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
