; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_msgs.c_event_seq_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_msgs.c_event_seq_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_core = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.venus_inst = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 (%struct.venus_inst*, i32, %struct.hfi_event_data*)* }
%struct.hfi_event_data = type { i32, i32, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.hfi_msg_event_notify_pkt = type { i32, i32, i32* }
%struct.hfi_framesize = type { i32, i32 }
%struct.hfi_profile_level = type { i32, i32 }
%struct.hfi_bit_depth = type { i32 }
%struct.hfi_pic_struct = type { i32 }
%struct.hfi_colour_space = type { i32 }
%struct.hfi_buffer_requirements = type { i32 }
%struct.hfi_extradata_input_crop = type { i32, i32, i32, i32 }

@HFI_ERR_NONE = common dso_local global i32 0, align 4
@HFI_ERR_SESSION_INVALID_PARAMETER = common dso_local global i32 0, align 4
@HFI_ERR_SESSION_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@EVT_SYS_EVENT_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.venus_core*, %struct.venus_inst*, %struct.hfi_msg_event_notify_pkt*)* @event_seq_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_seq_changed(%struct.venus_core* %0, %struct.venus_inst* %1, %struct.hfi_msg_event_notify_pkt* %2) #0 {
  %4 = alloca %struct.venus_core*, align 8
  %5 = alloca %struct.venus_inst*, align 8
  %6 = alloca %struct.hfi_msg_event_notify_pkt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hfi_event_data, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hfi_framesize*, align 8
  %11 = alloca %struct.hfi_profile_level*, align 8
  %12 = alloca %struct.hfi_bit_depth*, align 8
  %13 = alloca %struct.hfi_pic_struct*, align 8
  %14 = alloca %struct.hfi_colour_space*, align 8
  %15 = alloca %struct.hfi_buffer_requirements*, align 8
  %16 = alloca %struct.hfi_extradata_input_crop*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.venus_core* %0, %struct.venus_core** %4, align 8
  store %struct.venus_inst* %1, %struct.venus_inst** %5, align 8
  store %struct.hfi_msg_event_notify_pkt* %2, %struct.hfi_msg_event_notify_pkt** %6, align 8
  %19 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %20 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = bitcast %struct.hfi_event_data* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 60, i1 false)
  %25 = load i32, i32* @HFI_ERR_NONE, align 4
  %26 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %27 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.hfi_msg_event_notify_pkt*, %struct.hfi_msg_event_notify_pkt** %6, align 8
  %29 = getelementptr inbounds %struct.hfi_msg_event_notify_pkt, %struct.hfi_msg_event_notify_pkt* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %32 [
    i32 136, label %31
    i32 137, label %31
  ]

31:                                               ; preds = %3, %3
  br label %36

32:                                               ; preds = %3
  %33 = load i32, i32* @HFI_ERR_SESSION_INVALID_PARAMETER, align 4
  %34 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %35 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  br label %176

36:                                               ; preds = %31
  %37 = load %struct.hfi_msg_event_notify_pkt*, %struct.hfi_msg_event_notify_pkt** %6, align 8
  %38 = getelementptr inbounds %struct.hfi_msg_event_notify_pkt, %struct.hfi_msg_event_notify_pkt* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.hfi_event_data, %struct.hfi_event_data* %8, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load %struct.hfi_msg_event_notify_pkt*, %struct.hfi_msg_event_notify_pkt** %6, align 8
  %42 = getelementptr inbounds %struct.hfi_msg_event_notify_pkt, %struct.hfi_msg_event_notify_pkt* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* @HFI_ERR_SESSION_INSUFFICIENT_RESOURCES, align 4
  %48 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %49 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  br label %176

50:                                               ; preds = %36
  %51 = load %struct.hfi_msg_event_notify_pkt*, %struct.hfi_msg_event_notify_pkt** %6, align 8
  %52 = getelementptr inbounds %struct.hfi_msg_event_notify_pkt, %struct.hfi_msg_event_notify_pkt* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32* %54, i32** %17, align 8
  br label %55

55:                                               ; preds = %172, %50
  %56 = load i32*, i32** %17, align 8
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %18, align 4
  switch i32 %58, label %168 [
    i32 132, label %59
    i32 131, label %74
    i32 128, label %89
    i32 129, label %100
    i32 130, label %111
    i32 133, label %122
    i32 134, label %130
    i32 135, label %141
  ]

59:                                               ; preds = %55
  %60 = load i32*, i32** %17, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 4
  store i32* %61, i32** %17, align 8
  %62 = load i32*, i32** %17, align 8
  %63 = bitcast i32* %62 to %struct.hfi_framesize*
  store %struct.hfi_framesize* %63, %struct.hfi_framesize** %10, align 8
  %64 = load %struct.hfi_framesize*, %struct.hfi_framesize** %10, align 8
  %65 = getelementptr inbounds %struct.hfi_framesize, %struct.hfi_framesize* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.hfi_event_data, %struct.hfi_event_data* %8, i32 0, i32 10
  store i32 %66, i32* %67, align 4
  %68 = load %struct.hfi_framesize*, %struct.hfi_framesize** %10, align 8
  %69 = getelementptr inbounds %struct.hfi_framesize, %struct.hfi_framesize* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.hfi_event_data, %struct.hfi_event_data* %8, i32 0, i32 9
  store i32 %70, i32* %71, align 4
  %72 = load i32*, i32** %17, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 8
  store i32* %73, i32** %17, align 8
  br label %169

74:                                               ; preds = %55
  %75 = load i32*, i32** %17, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  store i32* %76, i32** %17, align 8
  %77 = load i32*, i32** %17, align 8
  %78 = bitcast i32* %77 to %struct.hfi_profile_level*
  store %struct.hfi_profile_level* %78, %struct.hfi_profile_level** %11, align 8
  %79 = load %struct.hfi_profile_level*, %struct.hfi_profile_level** %11, align 8
  %80 = getelementptr inbounds %struct.hfi_profile_level, %struct.hfi_profile_level* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.hfi_event_data, %struct.hfi_event_data* %8, i32 0, i32 8
  store i32 %81, i32* %82, align 4
  %83 = load %struct.hfi_profile_level*, %struct.hfi_profile_level** %11, align 8
  %84 = getelementptr inbounds %struct.hfi_profile_level, %struct.hfi_profile_level* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.hfi_event_data, %struct.hfi_event_data* %8, i32 0, i32 7
  store i32 %85, i32* %86, align 4
  %87 = load i32*, i32** %17, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 8
  store i32* %88, i32** %17, align 8
  br label %169

89:                                               ; preds = %55
  %90 = load i32*, i32** %17, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 4
  store i32* %91, i32** %17, align 8
  %92 = load i32*, i32** %17, align 8
  %93 = bitcast i32* %92 to %struct.hfi_bit_depth*
  store %struct.hfi_bit_depth* %93, %struct.hfi_bit_depth** %12, align 8
  %94 = load %struct.hfi_bit_depth*, %struct.hfi_bit_depth** %12, align 8
  %95 = getelementptr inbounds %struct.hfi_bit_depth, %struct.hfi_bit_depth* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.hfi_event_data, %struct.hfi_event_data* %8, i32 0, i32 6
  store i32 %96, i32* %97, align 4
  %98 = load i32*, i32** %17, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 4
  store i32* %99, i32** %17, align 8
  br label %169

100:                                              ; preds = %55
  %101 = load i32*, i32** %17, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 4
  store i32* %102, i32** %17, align 8
  %103 = load i32*, i32** %17, align 8
  %104 = bitcast i32* %103 to %struct.hfi_pic_struct*
  store %struct.hfi_pic_struct* %104, %struct.hfi_pic_struct** %13, align 8
  %105 = load %struct.hfi_pic_struct*, %struct.hfi_pic_struct** %13, align 8
  %106 = getelementptr inbounds %struct.hfi_pic_struct, %struct.hfi_pic_struct* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.hfi_event_data, %struct.hfi_event_data* %8, i32 0, i32 5
  store i32 %107, i32* %108, align 4
  %109 = load i32*, i32** %17, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 4
  store i32* %110, i32** %17, align 8
  br label %169

111:                                              ; preds = %55
  %112 = load i32*, i32** %17, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 4
  store i32* %113, i32** %17, align 8
  %114 = load i32*, i32** %17, align 8
  %115 = bitcast i32* %114 to %struct.hfi_colour_space*
  store %struct.hfi_colour_space* %115, %struct.hfi_colour_space** %14, align 8
  %116 = load %struct.hfi_colour_space*, %struct.hfi_colour_space** %14, align 8
  %117 = getelementptr inbounds %struct.hfi_colour_space, %struct.hfi_colour_space* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.hfi_event_data, %struct.hfi_event_data* %8, i32 0, i32 4
  store i32 %118, i32* %119, align 4
  %120 = load i32*, i32** %17, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 4
  store i32* %121, i32** %17, align 8
  br label %169

122:                                              ; preds = %55
  %123 = load i32*, i32** %17, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 4
  store i32* %124, i32** %17, align 8
  %125 = load i32*, i32** %17, align 8
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.hfi_event_data, %struct.hfi_event_data* %8, i32 0, i32 1
  store i32 %126, i32* %127, align 4
  %128 = load i32*, i32** %17, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 4
  store i32* %129, i32** %17, align 8
  br label %169

130:                                              ; preds = %55
  %131 = load i32*, i32** %17, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 4
  store i32* %132, i32** %17, align 8
  %133 = load i32*, i32** %17, align 8
  %134 = bitcast i32* %133 to %struct.hfi_buffer_requirements*
  store %struct.hfi_buffer_requirements* %134, %struct.hfi_buffer_requirements** %15, align 8
  %135 = load %struct.hfi_buffer_requirements*, %struct.hfi_buffer_requirements** %15, align 8
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @HFI_BUFREQ_COUNT_MIN(%struct.hfi_buffer_requirements* %135, i32 %136)
  %138 = getelementptr inbounds %struct.hfi_event_data, %struct.hfi_event_data* %8, i32 0, i32 3
  store i32 %137, i32* %138, align 4
  %139 = load i32*, i32** %17, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 4
  store i32* %140, i32** %17, align 8
  br label %169

141:                                              ; preds = %55
  %142 = load i32*, i32** %17, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 4
  store i32* %143, i32** %17, align 8
  %144 = load i32*, i32** %17, align 8
  %145 = bitcast i32* %144 to %struct.hfi_extradata_input_crop*
  store %struct.hfi_extradata_input_crop* %145, %struct.hfi_extradata_input_crop** %16, align 8
  %146 = load %struct.hfi_extradata_input_crop*, %struct.hfi_extradata_input_crop** %16, align 8
  %147 = getelementptr inbounds %struct.hfi_extradata_input_crop, %struct.hfi_extradata_input_crop* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.hfi_event_data, %struct.hfi_event_data* %8, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 4
  %151 = load %struct.hfi_extradata_input_crop*, %struct.hfi_extradata_input_crop** %16, align 8
  %152 = getelementptr inbounds %struct.hfi_extradata_input_crop, %struct.hfi_extradata_input_crop* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.hfi_event_data, %struct.hfi_event_data* %8, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 4
  %156 = load %struct.hfi_extradata_input_crop*, %struct.hfi_extradata_input_crop** %16, align 8
  %157 = getelementptr inbounds %struct.hfi_extradata_input_crop, %struct.hfi_extradata_input_crop* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.hfi_event_data, %struct.hfi_event_data* %8, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  %161 = load %struct.hfi_extradata_input_crop*, %struct.hfi_extradata_input_crop** %16, align 8
  %162 = getelementptr inbounds %struct.hfi_extradata_input_crop, %struct.hfi_extradata_input_crop* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.hfi_event_data, %struct.hfi_event_data* %8, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 4
  %166 = load i32*, i32** %17, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 16
  store i32* %167, i32** %17, align 8
  br label %169

168:                                              ; preds = %55
  br label %169

169:                                              ; preds = %168, %141, %130, %122, %111, %100, %89, %74, %59
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %9, align 4
  br label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %9, align 4
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %55, label %175

175:                                              ; preds = %172
  br label %176

176:                                              ; preds = %175, %46, %32
  %177 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %178 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %177, i32 0, i32 0
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i32 (%struct.venus_inst*, i32, %struct.hfi_event_data*)*, i32 (%struct.venus_inst*, i32, %struct.hfi_event_data*)** %180, align 8
  %182 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %183 = load i32, i32* @EVT_SYS_EVENT_CHANGE, align 4
  %184 = call i32 %181(%struct.venus_inst* %182, i32 %183, %struct.hfi_event_data* %8)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @HFI_BUFREQ_COUNT_MIN(%struct.hfi_buffer_requirements*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
