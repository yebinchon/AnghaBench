; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_create_disconnect_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_create_disconnect_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_mbx_info = type { i32, i32, i32, i32, i32 }

@FM10K_MSG_DISCONNECT = common dso_local global i32 0, align 4
@TYPE = common dso_local global i32 0, align 4
@TAIL = common dso_local global i32 0, align 4
@HEAD = common dso_local global i32 0, align 4
@FM10K_MBX_ACK = common dso_local global i32 0, align 4
@CRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_mbx_info*)* @fm10k_mbx_create_disconnect_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_mbx_create_disconnect_hdr(%struct.fm10k_mbx_info* %0) #0 {
  %2 = alloca %struct.fm10k_mbx_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.fm10k_mbx_info* %0, %struct.fm10k_mbx_info** %2, align 8
  %5 = load i32, i32* @FM10K_MSG_DISCONNECT, align 4
  %6 = load i32, i32* @TYPE, align 4
  %7 = call i32 @FM10K_MSG_HDR_FIELD_SET(i32 %5, i32 %6)
  %8 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %9 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @TAIL, align 4
  %12 = call i32 @FM10K_MSG_HDR_FIELD_SET(i32 %10, i32 %11)
  %13 = or i32 %7, %12
  %14 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %15 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HEAD, align 4
  %18 = call i32 @FM10K_MSG_HDR_FIELD_SET(i32 %16, i32 %17)
  %19 = or i32 %13, %18
  store i32 %19, i32* %3, align 4
  %20 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %21 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @fm10k_crc_16b(i32* %3, i32 %22, i32 1)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @FM10K_MBX_ACK, align 4
  %25 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %26 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @CRC, align 4
  %32 = call i32 @FM10K_MSG_HDR_FIELD_SET(i32 %30, i32 %31)
  %33 = or i32 %29, %32
  %34 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %35 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  ret void
}

declare dso_local i32 @FM10K_MSG_HDR_FIELD_SET(i32, i32) #1

declare dso_local i32 @fm10k_crc_16b(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
