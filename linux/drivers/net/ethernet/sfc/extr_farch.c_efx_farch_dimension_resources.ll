; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_dimension_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_dimension_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, %struct.siena_nic_data* }
%struct.TYPE_2__ = type { i64 (%struct.efx_nic*)* }
%struct.siena_nic_data = type { i32 }

@EFX_MAX_DMAQ_SIZE = common dso_local global i32 0, align 4
@EFX_TXQ_TYPES = common dso_local global i32 0, align 4
@EFX_MAX_EVQ_SIZE = common dso_local global i32 0, align 4
@EFX_BUF_SIZE = common dso_local global i32 0, align 4
@TX_DC_ENTRIES = common dso_local global i32 0, align 4
@RX_DC_ENTRIES = common dso_local global i32 0, align 4
@EFX_VF_BUFTBL_PER_VI = common dso_local global i32 0, align 4
@EFX_VI_BASE = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_farch_dimension_resources(%struct.efx_nic* %0, i32 %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %9 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %12 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %10, %13
  store i32 %14, i32* %7, align 4
  %15 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %16 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @EFX_MAX_DMAQ_SIZE, align 4
  %19 = mul i32 %17, %18
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @EFX_TXQ_TYPES, align 4
  %22 = mul i32 %20, %21
  %23 = load i32, i32* @EFX_MAX_DMAQ_SIZE, align 4
  %24 = mul i32 %22, %23
  %25 = add i32 %19, %24
  %26 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %27 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @EFX_MAX_EVQ_SIZE, align 4
  %30 = mul i32 %28, %29
  %31 = add i32 %25, %30
  %32 = zext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = load i32, i32* @EFX_BUF_SIZE, align 4
  %35 = zext i32 %34 to i64
  %36 = udiv i64 %33, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %6, align 4
  %38 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %39 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @EFX_TXQ_TYPES, align 4
  %43 = mul i32 %41, %42
  %44 = call i32 @max(i32 %40, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @TX_DC_ENTRIES, align 4
  %48 = mul i32 %46, %47
  %49 = sub i32 %45, %48
  %50 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %51 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %53 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @RX_DC_ENTRIES, align 4
  %57 = mul i32 %55, %56
  %58 = sub i32 %54, %57
  %59 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %60 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 4
  ret void
}

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
