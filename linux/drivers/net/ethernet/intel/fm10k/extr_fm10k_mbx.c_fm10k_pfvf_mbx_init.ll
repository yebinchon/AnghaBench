; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_pfvf_mbx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_pfvf_mbx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.fm10k_mbx_info = type { i32, i32, %struct.TYPE_4__, i32*, i32, i32, i32, i32, i8*, i8*, i32, i64, %struct.fm10k_msg_data*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fm10k_msg_data = type { i32 }

@FM10K_VFMBX = common dso_local global i32 0, align 4
@FM10K_VFMBMEM_VF_XOR = common dso_local global i32 0, align 4
@FM10K_MBX_ERR_NO_MBX = common dso_local global i32 0, align 4
@FM10K_STATE_CLOSED = common dso_local global i32 0, align 4
@FM10K_ERR_PARAM = common dso_local global i32 0, align 4
@FM10K_MBX_INIT_DELAY = common dso_local global i32 0, align 4
@FM10K_MBX_CRC_SEED = common dso_local global i8* null, align 8
@FM10K_MBX_MSG_MAX_SIZE = common dso_local global i32 0, align 4
@FM10K_MBX_TX_BUFFER_SIZE = common dso_local global i64 0, align 8
@FM10K_MBX_RX_BUFFER_SIZE = common dso_local global i64 0, align 8
@fm10k_mbx_connect = common dso_local global i32 0, align 4
@fm10k_mbx_disconnect = common dso_local global i32 0, align 4
@fm10k_mbx_rx_ready = common dso_local global i32 0, align 4
@fm10k_mbx_tx_ready = common dso_local global i32 0, align 4
@fm10k_mbx_tx_complete = common dso_local global i32 0, align 4
@fm10k_mbx_enqueue_tx = common dso_local global i32 0, align 4
@fm10k_mbx_process = common dso_local global i32 0, align 4
@fm10k_mbx_register_handlers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm10k_pfvf_mbx_init(%struct.fm10k_hw* %0, %struct.fm10k_mbx_info* %1, %struct.fm10k_msg_data* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fm10k_hw*, align 8
  %7 = alloca %struct.fm10k_mbx_info*, align 8
  %8 = alloca %struct.fm10k_msg_data*, align 8
  %9 = alloca i32, align 4
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %6, align 8
  store %struct.fm10k_mbx_info* %1, %struct.fm10k_mbx_info** %7, align 8
  store %struct.fm10k_msg_data* %2, %struct.fm10k_msg_data** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %11 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %35 [
    i32 128, label %14
    i32 129, label %22
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* @FM10K_VFMBX, align 4
  %16 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %17 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %16, i32 0, i32 15
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @FM10K_VFMBMEM_VF_XOR, align 4
  %19 = call i32 @FM10K_VFMBMEM(i32 %18)
  %20 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %21 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %20, i32 0, i32 14
  store i32 %19, i32* %21, align 4
  br label %37

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 64
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @FM10K_MBX(i32 %26)
  %28 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %29 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %28, i32 0, i32 15
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @FM10K_MBMEM_VF(i32 %30, i32 0)
  %32 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %33 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %32, i32 0, i32 14
  store i32 %31, i32* %33, align 4
  br label %37

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %4, %34
  %36 = load i32, i32* @FM10K_MBX_ERR_NO_MBX, align 4
  store i32 %36, i32* %5, align 4
  br label %119

37:                                               ; preds = %25, %14
  %38 = load i32, i32* @FM10K_STATE_CLOSED, align 4
  %39 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %40 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %39, i32 0, i32 13
  store i32 %38, i32* %40, align 8
  %41 = load %struct.fm10k_msg_data*, %struct.fm10k_msg_data** %8, align 8
  %42 = call i64 @fm10k_mbx_validate_handlers(%struct.fm10k_msg_data* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %45, i32* %5, align 4
  br label %119

46:                                               ; preds = %37
  %47 = load %struct.fm10k_msg_data*, %struct.fm10k_msg_data** %8, align 8
  %48 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %49 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %48, i32 0, i32 12
  store %struct.fm10k_msg_data* %47, %struct.fm10k_msg_data** %49, align 8
  %50 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %51 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %50, i32 0, i32 11
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @FM10K_MBX_INIT_DELAY, align 4
  %53 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %54 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %53, i32 0, i32 10
  store i32 %52, i32* %54, align 8
  %55 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %56 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %58 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  %59 = load i8*, i8** @FM10K_MBX_CRC_SEED, align 8
  %60 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %61 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %60, i32 0, i32 9
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** @FM10K_MBX_CRC_SEED, align 8
  %63 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %64 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %63, i32 0, i32 8
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* @FM10K_MBX_MSG_MAX_SIZE, align 4
  %66 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %67 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %66, i32 0, i32 7
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @FM10K_VFMBMEM_VF_XOR, align 4
  %69 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %70 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 8
  %71 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %72 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %71, i32 0, i32 5
  %73 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %74 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @FM10K_MBX_TX_BUFFER_SIZE, align 8
  %77 = call i32 @fm10k_fifo_init(i32* %72, i32* %75, i64 %76)
  %78 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %79 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %78, i32 0, i32 4
  %80 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %81 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @FM10K_MBX_TX_BUFFER_SIZE, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i64, i64* @FM10K_MBX_RX_BUFFER_SIZE, align 8
  %86 = call i32 @fm10k_fifo_init(i32* %79, i32* %84, i64 %85)
  %87 = load i32, i32* @fm10k_mbx_connect, align 4
  %88 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %89 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 7
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* @fm10k_mbx_disconnect, align 4
  %92 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %93 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 6
  store i32 %91, i32* %94, align 8
  %95 = load i32, i32* @fm10k_mbx_rx_ready, align 4
  %96 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %97 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 5
  store i32 %95, i32* %98, align 4
  %99 = load i32, i32* @fm10k_mbx_tx_ready, align 4
  %100 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %101 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 4
  store i32 %99, i32* %102, align 8
  %103 = load i32, i32* @fm10k_mbx_tx_complete, align 4
  %104 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %105 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 3
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* @fm10k_mbx_enqueue_tx, align 4
  %108 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %109 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  store i32 %107, i32* %110, align 8
  %111 = load i32, i32* @fm10k_mbx_process, align 4
  %112 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %113 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  store i32 %111, i32* %114, align 4
  %115 = load i32, i32* @fm10k_mbx_register_handlers, align 4
  %116 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %117 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store i32 %115, i32* %118, align 8
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %46, %44, %35
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @FM10K_VFMBMEM(i32) #1

declare dso_local i32 @FM10K_MBX(i32) #1

declare dso_local i32 @FM10K_MBMEM_VF(i32, i32) #1

declare dso_local i64 @fm10k_mbx_validate_handlers(%struct.fm10k_msg_data*) #1

declare dso_local i32 @fm10k_fifo_init(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
