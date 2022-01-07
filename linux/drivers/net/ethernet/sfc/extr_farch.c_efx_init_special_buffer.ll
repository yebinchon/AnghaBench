; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_init_special_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_init_special_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.efx_special_buffer = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EFX_BUF_SIZE = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"mapping special buffer %d at %llx\0A\00", align 1
@FRF_AZ_BUF_ADR_REGION = common dso_local global i32 0, align 4
@FRF_AZ_BUF_ADR_FBUF = common dso_local global i32 0, align 4
@FRF_AZ_BUF_OWNER_ID_FBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, %struct.efx_special_buffer*)* @efx_init_special_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_init_special_buffer(%struct.efx_nic* %0, %struct.efx_special_buffer* %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_special_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store %struct.efx_special_buffer* %1, %struct.efx_special_buffer** %4, align 8
  %9 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %4, align 8
  %10 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @EFX_WARN_ON_PARANOID(i32 %15)
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %56, %2
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %4, align 8
  %20 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %59

23:                                               ; preds = %17
  %24 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %4, align 8
  %25 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %6, align 4
  %29 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %4, align 8
  %30 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @EFX_BUF_SIZE, align 4
  %35 = mul nsw i32 %33, %34
  %36 = add nsw i32 %32, %35
  store i32 %36, i32* %7, align 4
  %37 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %38 = load i32, i32* @probe, align 4
  %39 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %40 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = call i32 @netif_dbg(%struct.efx_nic* %37, i32 %38, i32 %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %42, i64 %44)
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @FRF_AZ_BUF_ADR_REGION, align 4
  %48 = load i32, i32* @FRF_AZ_BUF_ADR_FBUF, align 4
  %49 = load i32, i32* %7, align 4
  %50 = ashr i32 %49, 12
  %51 = load i32, i32* @FRF_AZ_BUF_OWNER_ID_FBUF, align 4
  %52 = call i32 @EFX_POPULATE_QWORD_3(i32 %46, i32 %47, i32 0, i32 %48, i32 %50, i32 %51, i32 0)
  %53 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @efx_write_buf_tbl(%struct.efx_nic* %53, i32* %5, i32 %54)
  br label %56

56:                                               ; preds = %23
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %17

59:                                               ; preds = %17
  ret void
}

declare dso_local i32 @EFX_WARN_ON_PARANOID(i32) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i32, i64) #1

declare dso_local i32 @EFX_POPULATE_QWORD_3(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @efx_write_buf_tbl(%struct.efx_nic*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
