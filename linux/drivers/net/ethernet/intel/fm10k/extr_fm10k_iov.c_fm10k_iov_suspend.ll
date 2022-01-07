; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_iov.c_fm10k_iov_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_iov.c_fm10k_iov_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.fm10k_intfc = type { %struct.fm10k_hw, %struct.fm10k_iov_data* }
%struct.fm10k_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.fm10k_hw.0*, %struct.fm10k_vf_info*)*, i32 (%struct.fm10k_hw.1*, %struct.fm10k_vf_info*)* }
%struct.fm10k_hw.0 = type opaque
%struct.fm10k_vf_info = type { i32 }
%struct.fm10k_hw.1 = type opaque
%struct.fm10k_iov_data = type { i32, %struct.fm10k_vf_info* }

@fm10k_dglort_vf_rss = common dso_local global i32 0, align 4
@FM10K_DGLORTMAP_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fm10k_iov_suspend(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.fm10k_intfc*, align 8
  %4 = alloca %struct.fm10k_iov_data*, align 8
  %5 = alloca %struct.fm10k_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fm10k_vf_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = call %struct.fm10k_intfc* @pci_get_drvdata(%struct.pci_dev* %9)
  store %struct.fm10k_intfc* %10, %struct.fm10k_intfc** %3, align 8
  %11 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %12 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %11, i32 0, i32 1
  %13 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %12, align 8
  store %struct.fm10k_iov_data* %13, %struct.fm10k_iov_data** %4, align 8
  %14 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %15 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %14, i32 0, i32 0
  store %struct.fm10k_hw* %15, %struct.fm10k_hw** %5, align 8
  %16 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %4, align 8
  %17 = icmp ne %struct.fm10k_iov_data* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %4, align 8
  %20 = getelementptr inbounds %struct.fm10k_iov_data, %struct.fm10k_iov_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  br label %23

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i32 [ %21, %18 ], [ 0, %22 ]
  store i32 %24, i32* %6, align 4
  %25 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %26 = load i32, i32* @fm10k_dglort_vf_rss, align 4
  %27 = call i32 @FM10K_DGLORTMAP(i32 %26)
  %28 = load i32, i32* @FM10K_DGLORTMAP_NONE, align 4
  %29 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %25, i32 %27, i32 %28)
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %64, %23
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %67

34:                                               ; preds = %30
  %35 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %4, align 8
  %36 = getelementptr inbounds %struct.fm10k_iov_data, %struct.fm10k_iov_data* %35, i32 0, i32 1
  %37 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %37, i64 %39
  store %struct.fm10k_vf_info* %40, %struct.fm10k_vf_info** %8, align 8
  %41 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %42 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32 (%struct.fm10k_hw.1*, %struct.fm10k_vf_info*)*, i32 (%struct.fm10k_hw.1*, %struct.fm10k_vf_info*)** %44, align 8
  %46 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %47 = bitcast %struct.fm10k_hw* %46 to %struct.fm10k_hw.1*
  %48 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %8, align 8
  %49 = call i32 %45(%struct.fm10k_hw.1* %47, %struct.fm10k_vf_info* %48)
  %50 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %51 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32 (%struct.fm10k_hw.0*, %struct.fm10k_vf_info*)*, i32 (%struct.fm10k_hw.0*, %struct.fm10k_vf_info*)** %53, align 8
  %55 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %56 = bitcast %struct.fm10k_hw* %55 to %struct.fm10k_hw.0*
  %57 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %8, align 8
  %58 = call i32 %54(%struct.fm10k_hw.0* %56, %struct.fm10k_vf_info* %57)
  %59 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %60 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %8, align 8
  %61 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @fm10k_clear_macvlan_queue(%struct.fm10k_intfc* %59, i32 %62, i32 0)
  br label %64

64:                                               ; preds = %34
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %30

67:                                               ; preds = %30
  ret void
}

declare dso_local %struct.fm10k_intfc* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @fm10k_write_reg(%struct.fm10k_hw*, i32, i32) #1

declare dso_local i32 @FM10K_DGLORTMAP(i32) #1

declare dso_local i32 @fm10k_clear_macvlan_queue(%struct.fm10k_intfc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
