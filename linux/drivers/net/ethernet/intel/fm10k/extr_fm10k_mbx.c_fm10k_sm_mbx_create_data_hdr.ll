; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_sm_mbx_create_data_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_sm_mbx_create_data_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_mbx_info = type { i32, i32, i32, i32, i32, i64 }

@FM10K_MBX_REQ = common dso_local global i32 0, align 4
@SM_TAIL = common dso_local global i32 0, align 4
@SM_VER = common dso_local global i32 0, align 4
@SM_HEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_mbx_info*)* @fm10k_sm_mbx_create_data_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_sm_mbx_create_data_hdr(%struct.fm10k_mbx_info* %0) #0 {
  %2 = alloca %struct.fm10k_mbx_info*, align 8
  store %struct.fm10k_mbx_info* %0, %struct.fm10k_mbx_info** %2, align 8
  %3 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %4 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %3, i32 0, i32 5
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i32, i32* @FM10K_MBX_REQ, align 4
  %9 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %10 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 8
  br label %13

13:                                               ; preds = %7, %1
  %14 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %15 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SM_TAIL, align 4
  %18 = call i32 @FM10K_MSG_HDR_FIELD_SET(i32 %16, i32 %17)
  %19 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %20 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SM_VER, align 4
  %23 = call i32 @FM10K_MSG_HDR_FIELD_SET(i32 %21, i32 %22)
  %24 = or i32 %18, %23
  %25 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %26 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SM_HEAD, align 4
  %29 = call i32 @FM10K_MSG_HDR_FIELD_SET(i32 %27, i32 %28)
  %30 = or i32 %24, %29
  %31 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %32 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  ret void
}

declare dso_local i32 @FM10K_MSG_HDR_FIELD_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
