; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_create_data_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_create_data_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_mbx_info = type { i32, i32, i32, i32, i32, %struct.fm10k_mbx_fifo, i32, i32 }
%struct.fm10k_mbx_fifo = type { i32 }

@FM10K_MSG_DATA = common dso_local global i32 0, align 4
@TYPE = common dso_local global i32 0, align 4
@TAIL = common dso_local global i32 0, align 4
@HEAD = common dso_local global i32 0, align 4
@FM10K_MBX_REQ = common dso_local global i32 0, align 4
@CRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_mbx_info*)* @fm10k_mbx_create_data_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_mbx_create_data_hdr(%struct.fm10k_mbx_info* %0) #0 {
  %2 = alloca %struct.fm10k_mbx_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fm10k_mbx_fifo*, align 8
  %5 = alloca i32, align 4
  store %struct.fm10k_mbx_info* %0, %struct.fm10k_mbx_info** %2, align 8
  %6 = load i32, i32* @FM10K_MSG_DATA, align 4
  %7 = load i32, i32* @TYPE, align 4
  %8 = call i32 @FM10K_MSG_HDR_FIELD_SET(i32 %6, i32 %7)
  %9 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %10 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TAIL, align 4
  %13 = call i32 @FM10K_MSG_HDR_FIELD_SET(i32 %11, i32 %12)
  %14 = or i32 %8, %13
  %15 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %16 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @HEAD, align 4
  %19 = call i32 @FM10K_MSG_HDR_FIELD_SET(i32 %17, i32 %18)
  %20 = or i32 %14, %19
  store i32 %20, i32* %3, align 4
  %21 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %22 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %21, i32 0, i32 5
  store %struct.fm10k_mbx_fifo* %22, %struct.fm10k_mbx_fifo** %4, align 8
  %23 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %24 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load i32, i32* @FM10K_MBX_REQ, align 4
  %29 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %30 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %27, %1
  %34 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %4, align 8
  %35 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %4, align 8
  %36 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %37 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @fm10k_fifo_head_offset(%struct.fm10k_mbx_fifo* %35, i32 %38)
  %40 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %41 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %44 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @fm10k_fifo_crc(%struct.fm10k_mbx_fifo* %34, i32 %39, i32 %42, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @fm10k_crc_16b(i32* %3, i32 %47, i32 1)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @CRC, align 4
  %52 = call i32 @FM10K_MSG_HDR_FIELD_SET(i32 %50, i32 %51)
  %53 = or i32 %49, %52
  %54 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %55 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  ret void
}

declare dso_local i32 @FM10K_MSG_HDR_FIELD_SET(i32, i32) #1

declare dso_local i32 @fm10k_fifo_crc(%struct.fm10k_mbx_fifo*, i32, i32, i32) #1

declare dso_local i32 @fm10k_fifo_head_offset(%struct.fm10k_mbx_fifo*, i32) #1

declare dso_local i32 @fm10k_crc_16b(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
