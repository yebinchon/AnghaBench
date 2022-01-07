; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_sm_mbx_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_sm_mbx_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { i32 }
%struct.fm10k_mbx_info = type { i64, i32 }

@FM10K_STATE_CLOSED = common dso_local global i64 0, align 8
@SM_ERR = common dso_local global i32 0, align 4
@SM_VER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fm10k_hw*, %struct.fm10k_mbx_info*)* @fm10k_sm_mbx_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fm10k_sm_mbx_process(%struct.fm10k_hw* %0, %struct.fm10k_mbx_info* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fm10k_hw*, align 8
  %5 = alloca %struct.fm10k_mbx_info*, align 8
  %6 = alloca i64, align 8
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %4, align 8
  store %struct.fm10k_mbx_info* %1, %struct.fm10k_mbx_info** %5, align 8
  %7 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %8 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @FM10K_STATE_CLOSED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %64

13:                                               ; preds = %2
  %14 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %15 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %16 = call i64 @fm10k_mbx_read(%struct.fm10k_hw* %14, %struct.fm10k_mbx_info* %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i64, i64* %6, align 8
  store i64 %20, i64* %3, align 8
  br label %64

21:                                               ; preds = %13
  %22 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %23 = call i64 @fm10k_sm_mbx_validate_fifo_hdr(%struct.fm10k_mbx_info* %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %52

27:                                               ; preds = %21
  %28 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %29 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SM_ERR, align 4
  %32 = call i32 @FM10K_MSG_HDR_FIELD_GET(i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %36 = call i32 @fm10k_sm_mbx_process_error(%struct.fm10k_mbx_info* %35)
  br label %52

37:                                               ; preds = %27
  %38 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %39 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SM_VER, align 4
  %42 = call i32 @FM10K_MSG_HDR_FIELD_GET(i32 %40, i32 %41)
  switch i32 %42, label %51 [
    i32 0, label %43
    i32 128, label %47
  ]

43:                                               ; preds = %37
  %44 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %45 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %46 = call i64 @fm10k_sm_mbx_process_reset(%struct.fm10k_hw* %44, %struct.fm10k_mbx_info* %45)
  store i64 %46, i64* %6, align 8
  br label %51

47:                                               ; preds = %37
  %48 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %49 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %50 = call i64 @fm10k_sm_mbx_process_version_1(%struct.fm10k_hw* %48, %struct.fm10k_mbx_info* %49)
  store i64 %50, i64* %6, align 8
  br label %51

51:                                               ; preds = %37, %47, %43
  br label %52

52:                                               ; preds = %51, %34, %26
  %53 = load i64, i64* %6, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @fm10k_sm_mbx_create_error_msg(%struct.fm10k_mbx_info* %56, i64 %57)
  br label %59

59:                                               ; preds = %55, %52
  %60 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %61 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %62 = call i32 @fm10k_mbx_write(%struct.fm10k_hw* %60, %struct.fm10k_mbx_info* %61)
  %63 = load i64, i64* %6, align 8
  store i64 %63, i64* %3, align 8
  br label %64

64:                                               ; preds = %59, %19, %12
  %65 = load i64, i64* %3, align 8
  ret i64 %65
}

declare dso_local i64 @fm10k_mbx_read(%struct.fm10k_hw*, %struct.fm10k_mbx_info*) #1

declare dso_local i64 @fm10k_sm_mbx_validate_fifo_hdr(%struct.fm10k_mbx_info*) #1

declare dso_local i32 @FM10K_MSG_HDR_FIELD_GET(i32, i32) #1

declare dso_local i32 @fm10k_sm_mbx_process_error(%struct.fm10k_mbx_info*) #1

declare dso_local i64 @fm10k_sm_mbx_process_reset(%struct.fm10k_hw*, %struct.fm10k_mbx_info*) #1

declare dso_local i64 @fm10k_sm_mbx_process_version_1(%struct.fm10k_hw*, %struct.fm10k_mbx_info*) #1

declare dso_local i32 @fm10k_sm_mbx_create_error_msg(%struct.fm10k_mbx_info*, i64) #1

declare dso_local i32 @fm10k_mbx_write(%struct.fm10k_hw*, %struct.fm10k_mbx_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
