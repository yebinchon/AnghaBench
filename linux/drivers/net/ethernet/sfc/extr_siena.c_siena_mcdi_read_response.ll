; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena.c_siena_mcdi_read_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena.c_siena_mcdi_read_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }

@FR_CZ_MC_TREG_SMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, i32*, i64, i64)* @siena_mcdi_read_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siena_mcdi_read_response(%struct.efx_nic* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32, i32* @FR_CZ_MC_TREG_SMEM, align 4
  %13 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %14 = call i32 @MCDI_PDU(%struct.efx_nic* %13)
  %15 = add i32 %12, %14
  store i32 %15, i32* %9, align 4
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @DIV_ROUND_UP(i64 %16, i32 4)
  store i32 %17, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %38, %4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %9, align 4
  %29 = zext i32 %28 to i64
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %29, %30
  %32 = load i32, i32* %11, align 4
  %33 = mul nsw i32 4, %32
  %34 = sext i32 %33 to i64
  %35 = add i64 %31, %34
  %36 = trunc i64 %35 to i32
  %37 = call i32 @efx_readd(%struct.efx_nic* %23, i32* %27, i32 %36)
  br label %38

38:                                               ; preds = %22
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  br label %18

41:                                               ; preds = %18
  ret void
}

declare dso_local i32 @MCDI_PDU(%struct.efx_nic*) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @efx_readd(%struct.efx_nic*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
