; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igbvf_adapter = type { i64, %struct.TYPE_6__, %struct.TYPE_5__*, i32, %struct.pci_dev*, %struct.e1000_hw }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.e1000_hw = type { i32 }

@__IGBVF_RESETTING = common dso_local global i32 0, align 4
@VFGPRC = common dso_local global i32 0, align 4
@gprc = common dso_local global i32 0, align 4
@VFGORC = common dso_local global i32 0, align 4
@gorc = common dso_local global i32 0, align 4
@VFGPTC = common dso_local global i32 0, align 4
@gptc = common dso_local global i32 0, align 4
@VFGOTC = common dso_local global i32 0, align 4
@gotc = common dso_local global i32 0, align 4
@VFMPRC = common dso_local global i32 0, align 4
@mprc = common dso_local global i32 0, align 4
@VFGOTLBC = common dso_local global i32 0, align 4
@gotlbc = common dso_local global i32 0, align 4
@VFGPTLBC = common dso_local global i32 0, align 4
@gptlbc = common dso_local global i32 0, align 4
@VFGORLBC = common dso_local global i32 0, align 4
@gorlbc = common dso_local global i32 0, align 4
@VFGPRLBC = common dso_local global i32 0, align 4
@gprlbc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igbvf_update_stats(%struct.igbvf_adapter* %0) #0 {
  %2 = alloca %struct.igbvf_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.igbvf_adapter* %0, %struct.igbvf_adapter** %2, align 8
  %5 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %5, i32 0, i32 5
  store %struct.e1000_hw* %6, %struct.e1000_hw** %3, align 8
  %7 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %7, i32 0, i32 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %64

15:                                               ; preds = %1
  %16 = load i32, i32* @__IGBVF_RESETTING, align 4
  %17 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %17, i32 0, i32 3
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %64

22:                                               ; preds = %15
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = call i64 @pci_channel_offline(%struct.pci_dev* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %64

27:                                               ; preds = %22
  %28 = load i32, i32* @VFGPRC, align 4
  %29 = load i32, i32* @gprc, align 4
  %30 = call i32 @UPDATE_VF_COUNTER(i32 %28, i32 %29)
  %31 = load i32, i32* @VFGORC, align 4
  %32 = load i32, i32* @gorc, align 4
  %33 = call i32 @UPDATE_VF_COUNTER(i32 %31, i32 %32)
  %34 = load i32, i32* @VFGPTC, align 4
  %35 = load i32, i32* @gptc, align 4
  %36 = call i32 @UPDATE_VF_COUNTER(i32 %34, i32 %35)
  %37 = load i32, i32* @VFGOTC, align 4
  %38 = load i32, i32* @gotc, align 4
  %39 = call i32 @UPDATE_VF_COUNTER(i32 %37, i32 %38)
  %40 = load i32, i32* @VFMPRC, align 4
  %41 = load i32, i32* @mprc, align 4
  %42 = call i32 @UPDATE_VF_COUNTER(i32 %40, i32 %41)
  %43 = load i32, i32* @VFGOTLBC, align 4
  %44 = load i32, i32* @gotlbc, align 4
  %45 = call i32 @UPDATE_VF_COUNTER(i32 %43, i32 %44)
  %46 = load i32, i32* @VFGPTLBC, align 4
  %47 = load i32, i32* @gptlbc, align 4
  %48 = call i32 @UPDATE_VF_COUNTER(i32 %46, i32 %47)
  %49 = load i32, i32* @VFGORLBC, align 4
  %50 = load i32, i32* @gorlbc, align 4
  %51 = call i32 @UPDATE_VF_COUNTER(i32 %49, i32 %50)
  %52 = load i32, i32* @VFGPRLBC, align 4
  %53 = load i32, i32* @gprlbc, align 4
  %54 = call i32 @UPDATE_VF_COUNTER(i32 %52, i32 %53)
  %55 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %60 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %59, i32 0, i32 2
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 %58, i32* %63, align 4
  br label %64

64:                                               ; preds = %27, %26, %21, %14
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @pci_channel_offline(%struct.pci_dev*) #1

declare dso_local i32 @UPDATE_VF_COUNTER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
