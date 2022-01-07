; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_iov_reset_lport_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_iov_reset_lport_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { i32 }
%struct.fm10k_vf_info = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.fm10k_hw.0*, %struct.TYPE_4__*, i32*)* }
%struct.fm10k_hw.0 = type opaque

@FM10K_VF_MSG_ID_LPORT_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_hw*, %struct.fm10k_vf_info*)* @fm10k_iov_reset_lport_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_iov_reset_lport_pf(%struct.fm10k_hw* %0, %struct.fm10k_vf_info* %1) #0 {
  %3 = alloca %struct.fm10k_hw*, align 8
  %4 = alloca %struct.fm10k_vf_info*, align 8
  %5 = alloca [1 x i32], align 4
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %3, align 8
  store %struct.fm10k_vf_info* %1, %struct.fm10k_vf_info** %4, align 8
  %6 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %4, align 8
  %7 = call i64 @FM10K_VF_FLAG_ENABLED(%struct.fm10k_vf_info* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %2
  %10 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %11 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %4, align 8
  %12 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @fm10k_update_lport_state_pf(%struct.fm10k_hw* %10, i64 %13, i32 1, i32 0)
  %15 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %16 = load i32, i32* @FM10K_VF_MSG_ID_LPORT_STATE, align 4
  %17 = call i32 @fm10k_tlv_msg_init(i32* %15, i32 %16)
  %18 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %4, align 8
  %19 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32 (%struct.fm10k_hw.0*, %struct.TYPE_4__*, i32*)*, i32 (%struct.fm10k_hw.0*, %struct.TYPE_4__*, i32*)** %21, align 8
  %23 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %24 = bitcast %struct.fm10k_hw* %23 to %struct.fm10k_hw.0*
  %25 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %4, align 8
  %26 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %25, i32 0, i32 2
  %27 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %28 = call i32 %22(%struct.fm10k_hw.0* %24, %struct.TYPE_4__* %26, i32* %27)
  br label %29

29:                                               ; preds = %9, %2
  %30 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %4, align 8
  %31 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %4, align 8
  %33 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  ret void
}

declare dso_local i64 @FM10K_VF_FLAG_ENABLED(%struct.fm10k_vf_info*) #1

declare dso_local i32 @fm10k_update_lport_state_pf(%struct.fm10k_hw*, i64, i32, i32) #1

declare dso_local i32 @fm10k_tlv_msg_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
