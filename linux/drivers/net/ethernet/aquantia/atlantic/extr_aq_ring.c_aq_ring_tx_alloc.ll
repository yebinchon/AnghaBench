; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ring.c_aq_ring_tx_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ring.c_aq_ring_tx_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_ring_s = type { i32, i32, i32, %struct.aq_nic_s* }
%struct.aq_nic_s = type { i32 }
%struct.aq_nic_cfg_s = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.aq_ring_s* @aq_ring_tx_alloc(%struct.aq_ring_s* %0, %struct.aq_nic_s* %1, i32 %2, %struct.aq_nic_cfg_s* %3) #0 {
  %5 = alloca %struct.aq_ring_s*, align 8
  %6 = alloca %struct.aq_nic_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aq_nic_cfg_s*, align 8
  %9 = alloca i32, align 4
  store %struct.aq_ring_s* %0, %struct.aq_ring_s** %5, align 8
  store %struct.aq_nic_s* %1, %struct.aq_nic_s** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.aq_nic_cfg_s* %3, %struct.aq_nic_cfg_s** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %11 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %12 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %11, i32 0, i32 3
  store %struct.aq_nic_s* %10, %struct.aq_nic_s** %12, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %15 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %8, align 8
  %17 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %20 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %8, align 8
  %22 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %27 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %29 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %30 = call %struct.aq_ring_s* @aq_ring_alloc(%struct.aq_ring_s* %28, %struct.aq_nic_s* %29)
  store %struct.aq_ring_s* %30, %struct.aq_ring_s** %5, align 8
  %31 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %32 = icmp ne %struct.aq_ring_s* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %4
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %9, align 4
  br label %37

36:                                               ; preds = %4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %42 = call i32 @aq_ring_free(%struct.aq_ring_s* %41)
  store %struct.aq_ring_s* null, %struct.aq_ring_s** %5, align 8
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  ret %struct.aq_ring_s* %44
}

declare dso_local %struct.aq_ring_s* @aq_ring_alloc(%struct.aq_ring_s*, %struct.aq_nic_s*) #1

declare dso_local i32 @aq_ring_free(%struct.aq_ring_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
