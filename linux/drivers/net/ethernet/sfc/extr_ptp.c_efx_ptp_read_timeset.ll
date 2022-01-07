; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_read_timeset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_read_timeset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_ptp_timeset = type { i32, i32, i32, i8*, i8*, i8* }

@PTP_OUT_SYNCHRONIZE_HOSTSTART = common dso_local global i32 0, align 4
@PTP_OUT_SYNCHRONIZE_MAJOR = common dso_local global i32 0, align 4
@PTP_OUT_SYNCHRONIZE_MINOR = common dso_local global i32 0, align 4
@PTP_OUT_SYNCHRONIZE_HOSTEND = common dso_local global i32 0, align 4
@PTP_OUT_SYNCHRONIZE_WAITNS = common dso_local global i32 0, align 4
@MC_NANOSECOND_MASK = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.efx_ptp_timeset*)* @efx_ptp_read_timeset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_ptp_read_timeset(i32 %0, %struct.efx_ptp_timeset* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_ptp_timeset*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.efx_ptp_timeset* %1, %struct.efx_ptp_timeset** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @PTP_OUT_SYNCHRONIZE_HOSTSTART, align 4
  %9 = call i8* @MCDI_DWORD(i32 %7, i32 %8)
  %10 = ptrtoint i8* %9 to i32
  %11 = load %struct.efx_ptp_timeset*, %struct.efx_ptp_timeset** %4, align 8
  %12 = getelementptr inbounds %struct.efx_ptp_timeset, %struct.efx_ptp_timeset* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @PTP_OUT_SYNCHRONIZE_MAJOR, align 4
  %15 = call i8* @MCDI_DWORD(i32 %13, i32 %14)
  %16 = load %struct.efx_ptp_timeset*, %struct.efx_ptp_timeset** %4, align 8
  %17 = getelementptr inbounds %struct.efx_ptp_timeset, %struct.efx_ptp_timeset* %16, i32 0, i32 5
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @PTP_OUT_SYNCHRONIZE_MINOR, align 4
  %20 = call i8* @MCDI_DWORD(i32 %18, i32 %19)
  %21 = load %struct.efx_ptp_timeset*, %struct.efx_ptp_timeset** %4, align 8
  %22 = getelementptr inbounds %struct.efx_ptp_timeset, %struct.efx_ptp_timeset* %21, i32 0, i32 4
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @PTP_OUT_SYNCHRONIZE_HOSTEND, align 4
  %25 = call i8* @MCDI_DWORD(i32 %23, i32 %24)
  %26 = ptrtoint i8* %25 to i32
  %27 = load %struct.efx_ptp_timeset*, %struct.efx_ptp_timeset** %4, align 8
  %28 = getelementptr inbounds %struct.efx_ptp_timeset, %struct.efx_ptp_timeset* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @PTP_OUT_SYNCHRONIZE_WAITNS, align 4
  %31 = call i8* @MCDI_DWORD(i32 %29, i32 %30)
  %32 = load %struct.efx_ptp_timeset*, %struct.efx_ptp_timeset** %4, align 8
  %33 = getelementptr inbounds %struct.efx_ptp_timeset, %struct.efx_ptp_timeset* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load %struct.efx_ptp_timeset*, %struct.efx_ptp_timeset** %4, align 8
  %35 = getelementptr inbounds %struct.efx_ptp_timeset, %struct.efx_ptp_timeset* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MC_NANOSECOND_MASK, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %5, align 4
  %39 = load %struct.efx_ptp_timeset*, %struct.efx_ptp_timeset** %4, align 8
  %40 = getelementptr inbounds %struct.efx_ptp_timeset, %struct.efx_ptp_timeset* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MC_NANOSECOND_MASK, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %2
  %48 = load i64, i64* @NSEC_PER_SEC, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %47, %2
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %5, align 4
  %56 = sub i32 %54, %55
  %57 = load %struct.efx_ptp_timeset*, %struct.efx_ptp_timeset** %4, align 8
  %58 = getelementptr inbounds %struct.efx_ptp_timeset, %struct.efx_ptp_timeset* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  ret void
}

declare dso_local i8* @MCDI_DWORD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
