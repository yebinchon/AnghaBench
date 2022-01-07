; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_filter_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_filter_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.efx_farch_filter_table = type { i32, %struct.efx_farch_filter_spec* }
%struct.efx_farch_filter_spec = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EFX_FILTER_FLAG_RX_OVER_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, %struct.efx_farch_filter_table*, i32, i32)* @efx_farch_filter_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_farch_filter_remove(%struct.efx_nic* %0, %struct.efx_farch_filter_table* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca %struct.efx_farch_filter_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.efx_farch_filter_spec*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %6, align 8
  store %struct.efx_farch_filter_table* %1, %struct.efx_farch_filter_table** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %7, align 8
  %12 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %11, i32 0, i32 1
  %13 = load %struct.efx_farch_filter_spec*, %struct.efx_farch_filter_spec** %12, align 8
  %14 = load i32, i32* %8, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.efx_farch_filter_spec, %struct.efx_farch_filter_spec* %13, i64 %15
  store %struct.efx_farch_filter_spec* %16, %struct.efx_farch_filter_spec** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %7, align 8
  %19 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @test_bit(i32 %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load %struct.efx_farch_filter_spec*, %struct.efx_farch_filter_spec** %10, align 8
  %25 = getelementptr inbounds %struct.efx_farch_filter_spec, %struct.efx_farch_filter_spec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %4
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %51

32:                                               ; preds = %23
  %33 = load %struct.efx_farch_filter_spec*, %struct.efx_farch_filter_spec** %10, align 8
  %34 = getelementptr inbounds %struct.efx_farch_filter_spec, %struct.efx_farch_filter_spec* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @EFX_FILTER_FLAG_RX_OVER_AUTO, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %41 = load %struct.efx_farch_filter_spec*, %struct.efx_farch_filter_spec** %10, align 8
  %42 = call i32 @efx_farch_filter_init_rx_auto(%struct.efx_nic* %40, %struct.efx_farch_filter_spec* %41)
  %43 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %44 = call i32 @efx_farch_filter_push_rx_config(%struct.efx_nic* %43)
  br label %50

45:                                               ; preds = %32
  %46 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %47 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @efx_farch_filter_table_clear_entry(%struct.efx_nic* %46, %struct.efx_farch_filter_table* %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %39
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %29
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @efx_farch_filter_init_rx_auto(%struct.efx_nic*, %struct.efx_farch_filter_spec*) #1

declare dso_local i32 @efx_farch_filter_push_rx_config(%struct.efx_nic*) #1

declare dso_local i32 @efx_farch_filter_table_clear_entry(%struct.efx_nic*, %struct.efx_farch_filter_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
