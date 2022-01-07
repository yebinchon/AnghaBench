; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_vou.c_sh_vou_schedule_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_vou.c_sh_vou_schedule_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_vou_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.vb2_v4l2_buffer = type { i32 }

@VOUAD1R = common dso_local global i32 0, align 4
@VOUAD2R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_vou_device*, %struct.vb2_v4l2_buffer*)* @sh_vou_schedule_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_vou_schedule_next(%struct.sh_vou_device* %0, %struct.vb2_v4l2_buffer* %1) #0 {
  %3 = alloca %struct.sh_vou_device*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sh_vou_device* %0, %struct.sh_vou_device** %3, align 8
  store %struct.vb2_v4l2_buffer* %1, %struct.vb2_v4l2_buffer** %4, align 8
  %7 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %8 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %7, i32 0, i32 0
  %9 = call i32 @vb2_dma_contig_plane_dma_addr(i32* %8, i32 0)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.sh_vou_device*, %struct.sh_vou_device** %3, align 8
  %11 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %26 [
    i32 129, label %14
    i32 128, label %14
  ]

14:                                               ; preds = %2, %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.sh_vou_device*, %struct.sh_vou_device** %3, align 8
  %17 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sh_vou_device*, %struct.sh_vou_device** %3, align 8
  %21 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %19, %23
  %25 = add nsw i32 %15, %24
  store i32 %25, i32* %6, align 4
  br label %27

26:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %26, %14
  %28 = load %struct.sh_vou_device*, %struct.sh_vou_device** %3, align 8
  %29 = load i32, i32* @VOUAD1R, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @sh_vou_reg_m_write(%struct.sh_vou_device* %28, i32 %29, i32 %30)
  %32 = load %struct.sh_vou_device*, %struct.sh_vou_device** %3, align 8
  %33 = load i32, i32* @VOUAD2R, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @sh_vou_reg_m_write(%struct.sh_vou_device* %32, i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(i32*, i32) #1

declare dso_local i32 @sh_vou_reg_m_write(%struct.sh_vou_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
