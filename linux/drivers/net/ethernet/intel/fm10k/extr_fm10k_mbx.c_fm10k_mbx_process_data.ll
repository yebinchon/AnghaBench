; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_process_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_process_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { i32 }
%struct.fm10k_mbx_info = type { i64, i32, i32 }

@HEAD = common dso_local global i32 0, align 4
@TAIL = common dso_local global i32 0, align 4
@FM10K_STATE_CONNECT = common dso_local global i64 0, align 8
@FM10K_STATE_OPEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fm10k_hw*, %struct.fm10k_mbx_info*)* @fm10k_mbx_process_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fm10k_mbx_process_data(%struct.fm10k_hw* %0, %struct.fm10k_mbx_info* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fm10k_hw*, align 8
  %5 = alloca %struct.fm10k_mbx_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %4, align 8
  store %struct.fm10k_mbx_info* %1, %struct.fm10k_mbx_info** %5, align 8
  %10 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %11 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %10, i32 0, i32 2
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @HEAD, align 4
  %15 = call i32 @FM10K_MSG_HDR_FIELD_GET(i32 %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @TAIL, align 4
  %19 = call i32 @FM10K_MSG_HDR_FIELD_GET(i32 %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %21 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FM10K_STATE_CONNECT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %28 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load i64, i64* @FM10K_STATE_OPEN, align 8
  %30 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %31 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %25, %2
  %33 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %34 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @fm10k_mbx_push_tail(%struct.fm10k_hw* %33, %struct.fm10k_mbx_info* %34, i32 %35)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i64, i64* %9, align 8
  store i64 %40, i64* %3, align 8
  br label %56

41:                                               ; preds = %32
  %42 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %43 = call i64 @fm10k_mbx_verify_remote_crc(%struct.fm10k_mbx_info* %42)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i64, i64* %9, align 8
  store i64 %47, i64* %3, align 8
  br label %56

48:                                               ; preds = %41
  %49 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %50 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %51 = call i32 @fm10k_mbx_dequeue_rx(%struct.fm10k_hw* %49, %struct.fm10k_mbx_info* %50)
  %52 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %53 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @fm10k_mbx_create_reply(%struct.fm10k_hw* %52, %struct.fm10k_mbx_info* %53, i32 %54)
  store i64 %55, i64* %3, align 8
  br label %56

56:                                               ; preds = %48, %46, %39
  %57 = load i64, i64* %3, align 8
  ret i64 %57
}

declare dso_local i32 @FM10K_MSG_HDR_FIELD_GET(i32, i32) #1

declare dso_local i64 @fm10k_mbx_push_tail(%struct.fm10k_hw*, %struct.fm10k_mbx_info*, i32) #1

declare dso_local i64 @fm10k_mbx_verify_remote_crc(%struct.fm10k_mbx_info*) #1

declare dso_local i32 @fm10k_mbx_dequeue_rx(%struct.fm10k_hw*, %struct.fm10k_mbx_info*) #1

declare dso_local i64 @fm10k_mbx_create_reply(%struct.fm10k_hw*, %struct.fm10k_mbx_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
