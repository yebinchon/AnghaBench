; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__*, i32, %struct.qlcnic_hardware_context* }
%struct.TYPE_2__ = type { %struct.qlcnic_host_sds_ring* }
%struct.qlcnic_host_sds_ring = type { i32 }
%struct.qlcnic_hardware_context = type { i64, i32 }

@IRQ_NONE = common dso_local global i64 0, align 8
@QLCNIC_INTERRUPT_TEST = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i64 0, align 8
@__QLCNIC_DEV_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @qlcnic_83xx_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %8 = alloca %struct.qlcnic_hardware_context*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.qlcnic_adapter*
  store %struct.qlcnic_adapter* %10, %struct.qlcnic_adapter** %6, align 8
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %12 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %11, i32 0, i32 2
  %13 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %12, align 8
  store %struct.qlcnic_hardware_context* %13, %struct.qlcnic_hardware_context** %8, align 8
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %15 = call i64 @qlcnic_83xx_clear_legacy_intr(%struct.qlcnic_adapter* %14)
  %16 = load i64, i64* @IRQ_NONE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, i64* @IRQ_NONE, align 8
  store i64 %19, i64* %3, align 8
  br label %63

20:                                               ; preds = %2
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %22 = call i32 @qlcnic_83xx_poll_process_aen(%struct.qlcnic_adapter* %21)
  %23 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  %24 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %20
  %28 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  %29 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @QLCNIC_INTERRUPT_TEST, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  %35 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %33, %27
  %39 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %40 = call i32 @qlcnic_83xx_enable_legacy_msix_mbx_intr(%struct.qlcnic_adapter* %39)
  %41 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %41, i64* %3, align 8
  br label %63

42:                                               ; preds = %20
  %43 = load i32, i32* @__QLCNIC_DEV_UP, align 4
  %44 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %45 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %44, i32 0, i32 1
  %46 = call i32 @test_bit(i32 %43, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %50 = call i32 @qlcnic_83xx_enable_legacy_msix_mbx_intr(%struct.qlcnic_adapter* %49)
  br label %61

51:                                               ; preds = %42
  %52 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %53 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %55, align 8
  %57 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %56, i64 0
  store %struct.qlcnic_host_sds_ring* %57, %struct.qlcnic_host_sds_ring** %7, align 8
  %58 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %7, align 8
  %59 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %58, i32 0, i32 0
  %60 = call i32 @napi_schedule(i32* %59)
  br label %61

61:                                               ; preds = %51, %48
  %62 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %62, i64* %3, align 8
  br label %63

63:                                               ; preds = %61, %38, %18
  %64 = load i64, i64* %3, align 8
  ret i64 %64
}

declare dso_local i64 @qlcnic_83xx_clear_legacy_intr(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_poll_process_aen(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_enable_legacy_msix_mbx_intr(%struct.qlcnic_adapter*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
