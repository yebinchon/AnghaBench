; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-sensor.c_vimc_sen_tpg_s_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-sensor.c_vimc_sen_tpg_s_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vimc_sen_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vimc_pix_map = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vimc_sen_device*)* @vimc_sen_tpg_s_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vimc_sen_tpg_s_format(%struct.vimc_sen_device* %0) #0 {
  %2 = alloca %struct.vimc_sen_device*, align 8
  %3 = alloca %struct.vimc_pix_map*, align 8
  store %struct.vimc_sen_device* %0, %struct.vimc_sen_device** %2, align 8
  %4 = load %struct.vimc_sen_device*, %struct.vimc_sen_device** %2, align 8
  %5 = getelementptr inbounds %struct.vimc_sen_device, %struct.vimc_sen_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.vimc_pix_map* @vimc_pix_map_by_code(i32 %7)
  store %struct.vimc_pix_map* %8, %struct.vimc_pix_map** %3, align 8
  %9 = load %struct.vimc_sen_device*, %struct.vimc_sen_device** %2, align 8
  %10 = getelementptr inbounds %struct.vimc_sen_device, %struct.vimc_sen_device* %9, i32 0, i32 1
  %11 = load %struct.vimc_sen_device*, %struct.vimc_sen_device** %2, align 8
  %12 = getelementptr inbounds %struct.vimc_sen_device, %struct.vimc_sen_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.vimc_sen_device*, %struct.vimc_sen_device** %2, align 8
  %16 = getelementptr inbounds %struct.vimc_sen_device, %struct.vimc_sen_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vimc_sen_device*, %struct.vimc_sen_device** %2, align 8
  %20 = getelementptr inbounds %struct.vimc_sen_device, %struct.vimc_sen_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @tpg_reset_source(i32* %10, i32 %14, i32 %18, i32 %22)
  %24 = load %struct.vimc_sen_device*, %struct.vimc_sen_device** %2, align 8
  %25 = getelementptr inbounds %struct.vimc_sen_device, %struct.vimc_sen_device* %24, i32 0, i32 1
  %26 = load %struct.vimc_sen_device*, %struct.vimc_sen_device** %2, align 8
  %27 = getelementptr inbounds %struct.vimc_sen_device, %struct.vimc_sen_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vimc_pix_map*, %struct.vimc_pix_map** %3, align 8
  %31 = getelementptr inbounds %struct.vimc_pix_map, %struct.vimc_pix_map* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  %34 = call i32 @tpg_s_bytesperline(i32* %25, i32 0, i32 %33)
  %35 = load %struct.vimc_sen_device*, %struct.vimc_sen_device** %2, align 8
  %36 = getelementptr inbounds %struct.vimc_sen_device, %struct.vimc_sen_device* %35, i32 0, i32 1
  %37 = load %struct.vimc_sen_device*, %struct.vimc_sen_device** %2, align 8
  %38 = getelementptr inbounds %struct.vimc_sen_device, %struct.vimc_sen_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @tpg_s_buf_height(i32* %36, i32 %40)
  %42 = load %struct.vimc_sen_device*, %struct.vimc_sen_device** %2, align 8
  %43 = getelementptr inbounds %struct.vimc_sen_device, %struct.vimc_sen_device* %42, i32 0, i32 1
  %44 = load %struct.vimc_pix_map*, %struct.vimc_pix_map** %3, align 8
  %45 = getelementptr inbounds %struct.vimc_pix_map, %struct.vimc_pix_map* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @tpg_s_fourcc(i32* %43, i32 %46)
  %48 = load %struct.vimc_sen_device*, %struct.vimc_sen_device** %2, align 8
  %49 = getelementptr inbounds %struct.vimc_sen_device, %struct.vimc_sen_device* %48, i32 0, i32 1
  %50 = load %struct.vimc_sen_device*, %struct.vimc_sen_device** %2, align 8
  %51 = getelementptr inbounds %struct.vimc_sen_device, %struct.vimc_sen_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @tpg_s_field(i32* %49, i32 %53, i32 0)
  %55 = load %struct.vimc_sen_device*, %struct.vimc_sen_device** %2, align 8
  %56 = getelementptr inbounds %struct.vimc_sen_device, %struct.vimc_sen_device* %55, i32 0, i32 1
  %57 = load %struct.vimc_sen_device*, %struct.vimc_sen_device** %2, align 8
  %58 = getelementptr inbounds %struct.vimc_sen_device, %struct.vimc_sen_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @tpg_s_colorspace(i32* %56, i32 %60)
  %62 = load %struct.vimc_sen_device*, %struct.vimc_sen_device** %2, align 8
  %63 = getelementptr inbounds %struct.vimc_sen_device, %struct.vimc_sen_device* %62, i32 0, i32 1
  %64 = load %struct.vimc_sen_device*, %struct.vimc_sen_device** %2, align 8
  %65 = getelementptr inbounds %struct.vimc_sen_device, %struct.vimc_sen_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @tpg_s_ycbcr_enc(i32* %63, i32 %67)
  %69 = load %struct.vimc_sen_device*, %struct.vimc_sen_device** %2, align 8
  %70 = getelementptr inbounds %struct.vimc_sen_device, %struct.vimc_sen_device* %69, i32 0, i32 1
  %71 = load %struct.vimc_sen_device*, %struct.vimc_sen_device** %2, align 8
  %72 = getelementptr inbounds %struct.vimc_sen_device, %struct.vimc_sen_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @tpg_s_quantization(i32* %70, i32 %74)
  %76 = load %struct.vimc_sen_device*, %struct.vimc_sen_device** %2, align 8
  %77 = getelementptr inbounds %struct.vimc_sen_device, %struct.vimc_sen_device* %76, i32 0, i32 1
  %78 = load %struct.vimc_sen_device*, %struct.vimc_sen_device** %2, align 8
  %79 = getelementptr inbounds %struct.vimc_sen_device, %struct.vimc_sen_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @tpg_s_xfer_func(i32* %77, i32 %81)
  ret void
}

declare dso_local %struct.vimc_pix_map* @vimc_pix_map_by_code(i32) #1

declare dso_local i32 @tpg_reset_source(i32*, i32, i32, i32) #1

declare dso_local i32 @tpg_s_bytesperline(i32*, i32, i32) #1

declare dso_local i32 @tpg_s_buf_height(i32*, i32) #1

declare dso_local i32 @tpg_s_fourcc(i32*, i32) #1

declare dso_local i32 @tpg_s_field(i32*, i32, i32) #1

declare dso_local i32 @tpg_s_colorspace(i32*, i32) #1

declare dso_local i32 @tpg_s_ycbcr_enc(i32*, i32) #1

declare dso_local i32 @tpg_s_quantization(i32*, i32) #1

declare dso_local i32 @tpg_s_xfer_func(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
