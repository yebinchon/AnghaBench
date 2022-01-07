; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_iov.c_fm10k_reset_vf_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_iov.c_fm10k_reset_vf_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { %struct.fm10k_hw }
%struct.fm10k_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.fm10k_hw.0*, %struct.fm10k_vf_info*, i32, i32)*, i32 (%struct.fm10k_hw.1*, %struct.fm10k_vf_info*)*, i32 (%struct.fm10k_hw.2*, %struct.fm10k_vf_info*)* }
%struct.fm10k_hw.0 = type opaque
%struct.fm10k_hw.1 = type opaque
%struct.fm10k_hw.2 = type opaque
%struct.fm10k_vf_info = type { i32, i32 }

@FM10K_VF_FLAG_MULTI_CAPABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_intfc*, %struct.fm10k_vf_info*)* @fm10k_reset_vf_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_reset_vf_info(%struct.fm10k_intfc* %0, %struct.fm10k_vf_info* %1) #0 {
  %3 = alloca %struct.fm10k_intfc*, align 8
  %4 = alloca %struct.fm10k_vf_info*, align 8
  %5 = alloca %struct.fm10k_hw*, align 8
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %3, align 8
  store %struct.fm10k_vf_info* %1, %struct.fm10k_vf_info** %4, align 8
  %6 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %7 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %6, i32 0, i32 0
  store %struct.fm10k_hw* %7, %struct.fm10k_hw** %5, align 8
  %8 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %9 = call i32 @fm10k_mbx_lock(%struct.fm10k_intfc* %8)
  %10 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %11 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i32 (%struct.fm10k_hw.2*, %struct.fm10k_vf_info*)*, i32 (%struct.fm10k_hw.2*, %struct.fm10k_vf_info*)** %13, align 8
  %15 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %16 = bitcast %struct.fm10k_hw* %15 to %struct.fm10k_hw.2*
  %17 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %4, align 8
  %18 = call i32 %14(%struct.fm10k_hw.2* %16, %struct.fm10k_vf_info* %17)
  %19 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %20 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %4, align 8
  %21 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @fm10k_clear_macvlan_queue(%struct.fm10k_intfc* %19, i32 %22, i32 0)
  %24 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %25 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32 (%struct.fm10k_hw.1*, %struct.fm10k_vf_info*)*, i32 (%struct.fm10k_hw.1*, %struct.fm10k_vf_info*)** %27, align 8
  %29 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %30 = bitcast %struct.fm10k_hw* %29 to %struct.fm10k_hw.1*
  %31 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %4, align 8
  %32 = call i32 %28(%struct.fm10k_hw.1* %30, %struct.fm10k_vf_info* %31)
  %33 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %34 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32 (%struct.fm10k_hw.0*, %struct.fm10k_vf_info*, i32, i32)*, i32 (%struct.fm10k_hw.0*, %struct.fm10k_vf_info*, i32, i32)** %36, align 8
  %38 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %39 = bitcast %struct.fm10k_hw* %38 to %struct.fm10k_hw.0*
  %40 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %4, align 8
  %41 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %4, align 8
  %42 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @FM10K_VF_FLAG_MULTI_CAPABLE, align 4
  %45 = call i32 %37(%struct.fm10k_hw.0* %39, %struct.fm10k_vf_info* %40, i32 %43, i32 %44)
  %46 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %47 = call i32 @fm10k_mbx_unlock(%struct.fm10k_intfc* %46)
  ret void
}

declare dso_local i32 @fm10k_mbx_lock(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_clear_macvlan_queue(%struct.fm10k_intfc*, i32, i32) #1

declare dso_local i32 @fm10k_mbx_unlock(%struct.fm10k_intfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
