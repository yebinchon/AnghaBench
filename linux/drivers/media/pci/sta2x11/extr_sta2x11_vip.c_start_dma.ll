; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/sta2x11/extr_sta2x11_vip.c_start_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/sta2x11/extr_sta2x11_vip.c_start_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta2x11_vip = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.vip_buffer = type { i64 }

@V4L2_FIELD_INTERLACED = common dso_local global i64 0, align 8
@DVP_CTL = common dso_local global i32 0, align 4
@DVP_CTL_ENA = common dso_local global i32 0, align 4
@DVP_VTP = common dso_local global i32 0, align 4
@DVP_VBP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sta2x11_vip*, %struct.vip_buffer*)* @start_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_dma(%struct.sta2x11_vip* %0, %struct.vip_buffer* %1) #0 {
  %3 = alloca %struct.sta2x11_vip*, align 8
  %4 = alloca %struct.vip_buffer*, align 8
  %5 = alloca i64, align 8
  store %struct.sta2x11_vip* %0, %struct.sta2x11_vip** %3, align 8
  store %struct.vip_buffer* %1, %struct.vip_buffer** %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %7 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %14 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %16, 2
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %5, align 8
  br label %19

19:                                               ; preds = %12, %2
  %20 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %21 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_irq(i32* %21)
  %23 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %24 = load i32, i32* @DVP_CTL, align 4
  %25 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %26 = load i32, i32* @DVP_CTL, align 4
  %27 = call i32 @reg_read(%struct.sta2x11_vip* %25, i32 %26)
  %28 = load i32, i32* @DVP_CTL_ENA, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @reg_write(%struct.sta2x11_vip* %23, i32 %24, i32 %29)
  %31 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %32 = load i32, i32* @DVP_VTP, align 4
  %33 = load %struct.vip_buffer*, %struct.vip_buffer** %4, align 8
  %34 = getelementptr inbounds %struct.vip_buffer, %struct.vip_buffer* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @reg_write(%struct.sta2x11_vip* %31, i32 %32, i32 %36)
  %38 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %39 = load i32, i32* @DVP_VBP, align 4
  %40 = load %struct.vip_buffer*, %struct.vip_buffer** %4, align 8
  %41 = getelementptr inbounds %struct.vip_buffer, %struct.vip_buffer* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %44, %45
  %47 = trunc i64 %46 to i32
  %48 = call i32 @reg_write(%struct.sta2x11_vip* %38, i32 %39, i32 %47)
  %49 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %3, align 8
  %50 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock_irq(i32* %50)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @reg_write(%struct.sta2x11_vip*, i32, i32) #1

declare dso_local i32 @reg_read(%struct.sta2x11_vip*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
