; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_sm_mbx_validate_fifo_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_sm_mbx_validate_fifo_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_mbx_info = type { i32, i32, i32, i32, i32 }

@SM_TAIL = common dso_local global i32 0, align 4
@SM_VER = common dso_local global i32 0, align 4
@SM_HEAD = common dso_local global i32 0, align 4
@FM10K_SM_MBX_FIFO_LEN = common dso_local global i32 0, align 4
@FM10K_MBX_ERR_HEAD = common dso_local global i32 0, align 4
@FM10K_MBX_ERR_TAIL = common dso_local global i32 0, align 4
@FM10K_MBX_ERR_SRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_mbx_info*)* @fm10k_sm_mbx_validate_fifo_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_sm_mbx_validate_fifo_hdr(%struct.fm10k_mbx_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fm10k_mbx_info*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fm10k_mbx_info* %0, %struct.fm10k_mbx_info** %3, align 8
  %8 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %3, align 8
  %9 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %8, i32 0, i32 4
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SM_TAIL, align 4
  %13 = call i32 @FM10K_MSG_HDR_FIELD_GET(i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SM_VER, align 4
  %17 = call i32 @FM10K_MSG_HDR_FIELD_GET(i32 %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SM_HEAD, align 4
  %21 = call i32 @FM10K_MSG_HDR_FIELD_GET(i32 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %95 [
    i32 0, label %23
    i32 128, label %24
  ]

23:                                               ; preds = %1
  br label %97

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @FM10K_SM_MBX_FIFO_LEN, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %24
  %32 = load i32, i32* @FM10K_MBX_ERR_HEAD, align 4
  store i32 %32, i32* %2, align 4
  br label %98

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @FM10K_SM_MBX_FIFO_LEN, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36, %33
  %41 = load i32, i32* @FM10K_MBX_ERR_TAIL, align 4
  store i32 %41, i32* %2, align 4
  br label %98

42:                                               ; preds = %36
  %43 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %3, align 8
  %44 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %3, align 8
  %50 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 1
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %48, %42
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %3, align 8
  %58 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %3, align 8
  %63 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 1
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %61, %55
  %69 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %3, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %3, align 8
  %72 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @fm10k_mbx_index_len(%struct.fm10k_mbx_info* %69, i32 %70, i32 %73)
  %75 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %3, align 8
  %76 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %74, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i32, i32* @FM10K_MBX_ERR_HEAD, align 4
  store i32 %80, i32* %2, align 4
  br label %98

81:                                               ; preds = %68
  %82 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %3, align 8
  %83 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %3, align 8
  %84 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @fm10k_mbx_index_len(%struct.fm10k_mbx_info* %82, i32 %85, i32 %86)
  %88 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %3, align 8
  %89 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  br label %97

93:                                               ; preds = %81
  %94 = load i32, i32* @FM10K_MBX_ERR_TAIL, align 4
  store i32 %94, i32* %2, align 4
  br label %98

95:                                               ; preds = %1
  %96 = load i32, i32* @FM10K_MBX_ERR_SRC, align 4
  store i32 %96, i32* %2, align 4
  br label %98

97:                                               ; preds = %92, %23
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %95, %93, %79, %40, %31
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @FM10K_MSG_HDR_FIELD_GET(i32, i32) #1

declare dso_local i32 @fm10k_mbx_index_len(%struct.fm10k_mbx_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
