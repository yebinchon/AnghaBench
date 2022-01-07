; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_session_set_property_4xx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_session_set_property_4xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi_session_set_property_pkt = type { i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.hfi_buffer_count_actual = type { i32, i32 }
%struct.hfi_buffer_count_actual_4xx = type { i32, i32, i32 }
%struct.hfi_video_work_mode = type { i32 }
%struct.hfi_videocores_usage_type = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@HFI_CMD_SESSION_SET_PROPERTY = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi_session_set_property_pkt*, i8*, i32, i8*)* @pkt_session_set_property_4xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkt_session_set_property_4xx(%struct.hfi_session_set_property_pkt* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfi_session_set_property_pkt*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.hfi_buffer_count_actual*, align 8
  %12 = alloca %struct.hfi_buffer_count_actual_4xx*, align 8
  %13 = alloca %struct.hfi_video_work_mode*, align 8
  %14 = alloca %struct.hfi_video_work_mode*, align 8
  %15 = alloca %struct.hfi_videocores_usage_type*, align 8
  %16 = alloca %struct.hfi_videocores_usage_type*, align 8
  store %struct.hfi_session_set_property_pkt* %0, %struct.hfi_session_set_property_pkt** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %17 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %18 = icmp ne %struct.hfi_session_set_property_pkt* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i8*, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22, %19, %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %130

28:                                               ; preds = %22
  %29 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %30 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = bitcast i32* %32 to i8*
  store i8* %33, i8** %10, align 8
  %34 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %35 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 24, i32* %37, align 4
  %38 = load i32, i32* @HFI_CMD_SESSION_SET_PROPERTY, align 4
  %39 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %40 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i32 %38, i32* %42, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @hash32_ptr(i8* %43)
  %45 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %46 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %49 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %48, i32 0, i32 1
  store i32 1, i32* %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %52 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* %8, align 4
  switch i32 %55, label %123 [
    i32 129, label %56
    i32 128, label %84
    i32 131, label %102
    i32 132, label %120
    i32 133, label %120
    i32 130, label %120
  ]

56:                                               ; preds = %28
  %57 = load i8*, i8** %9, align 8
  %58 = bitcast i8* %57 to %struct.hfi_buffer_count_actual*
  store %struct.hfi_buffer_count_actual* %58, %struct.hfi_buffer_count_actual** %11, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = bitcast i8* %59 to %struct.hfi_buffer_count_actual_4xx*
  store %struct.hfi_buffer_count_actual_4xx* %60, %struct.hfi_buffer_count_actual_4xx** %12, align 8
  %61 = load %struct.hfi_buffer_count_actual*, %struct.hfi_buffer_count_actual** %11, align 8
  %62 = getelementptr inbounds %struct.hfi_buffer_count_actual, %struct.hfi_buffer_count_actual* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.hfi_buffer_count_actual_4xx*, %struct.hfi_buffer_count_actual_4xx** %12, align 8
  %65 = getelementptr inbounds %struct.hfi_buffer_count_actual_4xx, %struct.hfi_buffer_count_actual_4xx* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.hfi_buffer_count_actual*, %struct.hfi_buffer_count_actual** %11, align 8
  %67 = getelementptr inbounds %struct.hfi_buffer_count_actual, %struct.hfi_buffer_count_actual* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.hfi_buffer_count_actual_4xx*, %struct.hfi_buffer_count_actual_4xx** %12, align 8
  %70 = getelementptr inbounds %struct.hfi_buffer_count_actual_4xx, %struct.hfi_buffer_count_actual_4xx* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.hfi_buffer_count_actual*, %struct.hfi_buffer_count_actual** %11, align 8
  %72 = getelementptr inbounds %struct.hfi_buffer_count_actual, %struct.hfi_buffer_count_actual* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.hfi_buffer_count_actual_4xx*, %struct.hfi_buffer_count_actual_4xx** %12, align 8
  %75 = getelementptr inbounds %struct.hfi_buffer_count_actual_4xx, %struct.hfi_buffer_count_actual_4xx* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %77 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = add i64 %81, 16
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %79, align 4
  br label %129

84:                                               ; preds = %28
  %85 = load i8*, i8** %9, align 8
  %86 = bitcast i8* %85 to %struct.hfi_video_work_mode*
  store %struct.hfi_video_work_mode* %86, %struct.hfi_video_work_mode** %13, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = bitcast i8* %87 to %struct.hfi_video_work_mode*
  store %struct.hfi_video_work_mode* %88, %struct.hfi_video_work_mode** %14, align 8
  %89 = load %struct.hfi_video_work_mode*, %struct.hfi_video_work_mode** %13, align 8
  %90 = getelementptr inbounds %struct.hfi_video_work_mode, %struct.hfi_video_work_mode* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.hfi_video_work_mode*, %struct.hfi_video_work_mode** %14, align 8
  %93 = getelementptr inbounds %struct.hfi_video_work_mode, %struct.hfi_video_work_mode* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %95 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = add i64 %99, 8
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %97, align 4
  br label %129

102:                                              ; preds = %28
  %103 = load i8*, i8** %9, align 8
  %104 = bitcast i8* %103 to %struct.hfi_videocores_usage_type*
  store %struct.hfi_videocores_usage_type* %104, %struct.hfi_videocores_usage_type** %15, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = bitcast i8* %105 to %struct.hfi_videocores_usage_type*
  store %struct.hfi_videocores_usage_type* %106, %struct.hfi_videocores_usage_type** %16, align 8
  %107 = load %struct.hfi_videocores_usage_type*, %struct.hfi_videocores_usage_type** %15, align 8
  %108 = getelementptr inbounds %struct.hfi_videocores_usage_type, %struct.hfi_videocores_usage_type* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.hfi_videocores_usage_type*, %struct.hfi_videocores_usage_type** %16, align 8
  %111 = getelementptr inbounds %struct.hfi_videocores_usage_type, %struct.hfi_videocores_usage_type* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %113 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = add i64 %117, 8
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %115, align 4
  br label %129

120:                                              ; preds = %28, %28, %28
  %121 = load i32, i32* @ENOTSUPP, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %5, align 4
  br label %130

123:                                              ; preds = %28
  %124 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %125 = load i8*, i8** %7, align 8
  %126 = load i32, i32* %8, align 4
  %127 = load i8*, i8** %9, align 8
  %128 = call i32 @pkt_session_set_property_3xx(%struct.hfi_session_set_property_pkt* %124, i8* %125, i32 %126, i8* %127)
  store i32 %128, i32* %5, align 4
  br label %130

129:                                              ; preds = %102, %84, %56
  store i32 0, i32* %5, align 4
  br label %130

130:                                              ; preds = %129, %123, %120, %25
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @hash32_ptr(i8*) #1

declare dso_local i32 @pkt_session_set_property_3xx(%struct.hfi_session_set_property_pkt*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
