; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_schedule_bottom_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_schedule_bottom_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpfe_device = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vpfe_device*)* @vpfe_schedule_bottom_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpfe_schedule_bottom_field(%struct.vpfe_device* %0) #0 {
  %2 = alloca %struct.vpfe_device*, align 8
  %3 = alloca i64, align 8
  store %struct.vpfe_device* %0, %struct.vpfe_device** %2, align 8
  %4 = load %struct.vpfe_device*, %struct.vpfe_device** %2, align 8
  %5 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %4, i32 0, i32 2
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = call i64 @vb2_dma_contig_plane_dma_addr(i32* %8, i32 0)
  %10 = load %struct.vpfe_device*, %struct.vpfe_device** %2, align 8
  %11 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %9, %12
  store i64 %13, i64* %3, align 8
  %14 = load %struct.vpfe_device*, %struct.vpfe_device** %2, align 8
  %15 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %14, i32 0, i32 1
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @vpfe_set_sdr_addr(i32* %15, i64 %16)
  ret void
}

declare dso_local i64 @vb2_dma_contig_plane_dma_addr(i32*, i32) #1

declare dso_local i32 @vpfe_set_sdr_addr(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
