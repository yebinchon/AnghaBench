; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_vf_device.c_cn23xx_enable_vf_io_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_vf_device.c_cn23xx_enable_vf_io_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@CN23XX_PKT_INPUT_CTL_IS_64B = common dso_local global i32 0, align 4
@CN23XX_PKT_INPUT_CTL_RING_ENB = common dso_local global i32 0, align 4
@CN23XX_PKT_OUTPUT_CTL_RING_ENB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*)* @cn23xx_enable_vf_io_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cn23xx_enable_vf_io_queues(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %57, %1
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %9 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %7, %10
  br i1 %11, label %12, label %60

12:                                               ; preds = %6
  %13 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %14 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @BIT_ULL(i64 %17)
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %12
  %22 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @CN23XX_VF_SLI_IQ_PKT_CONTROL64(i64 %23)
  %25 = call i32 @octeon_read_csr64(%struct.octeon_device* %22, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @CN23XX_PKT_INPUT_CTL_IS_64B, align 4
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @CN23XX_VF_SLI_IQ_PKT_CONTROL64(i64 %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @octeon_write_csr64(%struct.octeon_device* %29, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %21, %12
  %35 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %36 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %3, align 8
  %40 = call i32 @BIT_ULL(i64 %39)
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %34
  %44 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @CN23XX_VF_SLI_IQ_PKT_CONTROL64(i64 %45)
  %47 = call i32 @octeon_read_csr64(%struct.octeon_device* %44, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* @CN23XX_PKT_INPUT_CTL_RING_ENB, align 4
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %52 = load i64, i64* %3, align 8
  %53 = call i32 @CN23XX_VF_SLI_IQ_PKT_CONTROL64(i64 %52)
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @octeon_write_csr64(%struct.octeon_device* %51, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %43, %34
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %3, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %3, align 8
  br label %6

60:                                               ; preds = %6
  store i64 0, i64* %3, align 8
  br label %61

61:                                               ; preds = %90, %60
  %62 = load i64, i64* %3, align 8
  %63 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %64 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %93

67:                                               ; preds = %61
  %68 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %69 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i64, i64* %3, align 8
  %73 = call i32 @BIT_ULL(i64 %72)
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %67
  %77 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %78 = load i64, i64* %3, align 8
  %79 = call i32 @CN23XX_VF_SLI_OQ_PKT_CONTROL(i64 %78)
  %80 = call i64 @octeon_read_csr(%struct.octeon_device* %77, i32 %79)
  store i64 %80, i64* %5, align 8
  %81 = load i64, i64* @CN23XX_PKT_OUTPUT_CTL_RING_ENB, align 8
  %82 = load i64, i64* %5, align 8
  %83 = or i64 %82, %81
  store i64 %83, i64* %5, align 8
  %84 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %85 = load i64, i64* %3, align 8
  %86 = call i32 @CN23XX_VF_SLI_OQ_PKT_CONTROL(i64 %85)
  %87 = load i64, i64* %5, align 8
  %88 = call i32 @octeon_write_csr(%struct.octeon_device* %84, i32 %86, i64 %87)
  br label %89

89:                                               ; preds = %76, %67
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %3, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %3, align 8
  br label %61

93:                                               ; preds = %61
  ret i32 0
}

declare dso_local i32 @BIT_ULL(i64) #1

declare dso_local i32 @octeon_read_csr64(%struct.octeon_device*, i32) #1

declare dso_local i32 @CN23XX_VF_SLI_IQ_PKT_CONTROL64(i64) #1

declare dso_local i32 @octeon_write_csr64(%struct.octeon_device*, i32, i32) #1

declare dso_local i64 @octeon_read_csr(%struct.octeon_device*, i32) #1

declare dso_local i32 @CN23XX_VF_SLI_OQ_PKT_CONTROL(i64) #1

declare dso_local i32 @octeon_write_csr(%struct.octeon_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
