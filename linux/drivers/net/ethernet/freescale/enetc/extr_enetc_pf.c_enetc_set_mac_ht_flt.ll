; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_set_mac_ht_flt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_set_mac_ht_flt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_si = type { i32, i32 }

@ENETC_ERR_UCMCSWP = common dso_local global i32 0, align 4
@UC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enetc_si*, i32, i32, i32*)* @enetc_set_mac_ht_flt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enetc_set_mac_ht_flt(%struct.enetc_si* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.enetc_si*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.enetc_si* %0, %struct.enetc_si** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load %struct.enetc_si*, %struct.enetc_si** %5, align 8
  %11 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ENETC_ERR_UCMCSWP, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @UC, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %4
  %19 = load %struct.enetc_si*, %struct.enetc_si** %5, align 8
  %20 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %19, i32 0, i32 1
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @ENETC_PSIUMHFR0(i32 %21, i32 %22)
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @enetc_port_wr(i32* %20, i32 %23, i32 %25)
  %27 = load %struct.enetc_si*, %struct.enetc_si** %5, align 8
  %28 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %27, i32 0, i32 1
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @ENETC_PSIUMHFR1(i32 %29)
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @enetc_port_wr(i32* %28, i32 %30, i32 %33)
  br label %52

35:                                               ; preds = %4
  %36 = load %struct.enetc_si*, %struct.enetc_si** %5, align 8
  %37 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %36, i32 0, i32 1
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @ENETC_PSIMMHFR0(i32 %38, i32 %39)
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @enetc_port_wr(i32* %37, i32 %40, i32 %42)
  %44 = load %struct.enetc_si*, %struct.enetc_si** %5, align 8
  %45 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %44, i32 0, i32 1
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @ENETC_PSIMMHFR1(i32 %46)
  %48 = load i32*, i32** %8, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @enetc_port_wr(i32* %45, i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %35, %18
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
