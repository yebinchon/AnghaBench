; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_session_set_property_1x.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_session_set_property_1x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi_session_set_property_pkt = type { i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.hfi_framerate = type { i32, i32 }
%struct.hfi_uncompressed_format_select = type { i32, i32 }
%struct.hfi_framesize = type { i32, i32, i32 }
%struct.hfi_enable = type { i32 }
%struct.hfi_buffer_count_actual = type { i32, i32 }
%struct.hfi_buffer_size_actual = type { i32, i32 }
%struct.hfi_buffer_display_hold_count_actual = type { i32, i32 }
%struct.hfi_nal_stream_format_select = type { i32 }
%struct.hfi_enable_picture = type { i32 }
%struct.hfi_multi_stream = type { i32, i32, i32, i32 }
%struct.hfi_display_picture_buffer_count = type { i32, i32 }
%struct.hfi_bitrate = type { i32, i32 }
%struct.hfi_profile_level = type { i32, i32 }
%struct.hfi_h264_entropy_control = type { i32, i32 }
%struct.hfi_mpeg4_time_resolution = type { i32 }
%struct.hfi_mpeg4_header_extension = type { i32 }
%struct.hfi_h264_db_control = type { i32, i32, i32 }
%struct.hfi_quantization = type { i32, i32, i32, i32 }
%struct.hfi_quantization_range = type { i32, i32, i32 }
%struct.hfi_vc1e_perf_cfg_type = type { i32, i32 }
%struct.hfi_max_num_b_frames = type { i32 }
%struct.hfi_intra_period = type { i32, i32 }
%struct.hfi_idr_period = type { i32 }
%struct.hfi_conceal_color = type { i32 }
%struct.hfi_operations_type = type { i32, i32 }
%struct.hfi_intra_refresh = type { i32, i32, i32, i32 }
%struct.hfi_multi_slice_control = type { i32, i32 }
%struct.hfi_h264_vui_timing_info = type { i32, i32, i32 }
%struct.hfi_buffer_alloc_mode = type { i32, i32 }
%struct.hfi_scs_threshold = type { i32 }
%struct.hfi_mvc_buffer_layout_descp_type = type { i32, i32, i32 }
%struct.hfi_ltr_mode = type { i32, i32, i32 }
%struct.hfi_ltr_use = type { i32, i32, i32 }
%struct.hfi_ltr_mark = type { i32 }
%struct.hfi_initial_quantization = type { i32, i32, i32, i32 }
%struct.hfi_vpe_color_space_conversion = type { i32, i32, i32 }
%struct.hfi_hybrid_hierp = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@HFI_CMD_SESSION_SET_PROPERTY = common dso_local global i32 0, align 4
@HFI_H264_PROFILE_HIGH = common dso_local global i32 0, align 4
@HFI_H264_ENTROPY_CABAC = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi_session_set_property_pkt*, i8*, i32, i8*)* @pkt_session_set_property_1x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkt_session_set_property_1x(%struct.hfi_session_set_property_pkt* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfi_session_set_property_pkt*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.hfi_framerate*, align 8
  %13 = alloca %struct.hfi_framerate*, align 8
  %14 = alloca %struct.hfi_uncompressed_format_select*, align 8
  %15 = alloca %struct.hfi_uncompressed_format_select*, align 8
  %16 = alloca %struct.hfi_framesize*, align 8
  %17 = alloca %struct.hfi_framesize*, align 8
  %18 = alloca %struct.hfi_enable*, align 8
  %19 = alloca %struct.hfi_enable*, align 8
  %20 = alloca %struct.hfi_buffer_count_actual*, align 8
  %21 = alloca %struct.hfi_buffer_count_actual*, align 8
  %22 = alloca %struct.hfi_buffer_size_actual*, align 8
  %23 = alloca %struct.hfi_buffer_size_actual*, align 8
  %24 = alloca %struct.hfi_buffer_display_hold_count_actual*, align 8
  %25 = alloca %struct.hfi_buffer_display_hold_count_actual*, align 8
  %26 = alloca %struct.hfi_nal_stream_format_select*, align 8
  %27 = alloca %struct.hfi_nal_stream_format_select*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca %struct.hfi_enable_picture*, align 8
  %30 = alloca %struct.hfi_enable_picture*, align 8
  %31 = alloca %struct.hfi_enable*, align 8
  %32 = alloca %struct.hfi_enable*, align 8
  %33 = alloca %struct.hfi_enable*, align 8
  %34 = alloca %struct.hfi_enable*, align 8
  %35 = alloca %struct.hfi_multi_stream*, align 8
  %36 = alloca %struct.hfi_multi_stream*, align 8
  %37 = alloca %struct.hfi_display_picture_buffer_count*, align 8
  %38 = alloca %struct.hfi_display_picture_buffer_count*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca %struct.hfi_enable*, align 8
  %41 = alloca %struct.hfi_enable*, align 8
  %42 = alloca %struct.hfi_enable*, align 8
  %43 = alloca %struct.hfi_enable*, align 8
  %44 = alloca %struct.hfi_enable*, align 8
  %45 = alloca %struct.hfi_enable*, align 8
  %46 = alloca %struct.hfi_enable*, align 8
  %47 = alloca %struct.hfi_enable*, align 8
  %48 = alloca %struct.hfi_bitrate*, align 8
  %49 = alloca %struct.hfi_bitrate*, align 8
  %50 = alloca %struct.hfi_bitrate*, align 8
  %51 = alloca %struct.hfi_bitrate*, align 8
  %52 = alloca %struct.hfi_profile_level*, align 8
  %53 = alloca %struct.hfi_profile_level*, align 8
  %54 = alloca %struct.hfi_h264_entropy_control*, align 8
  %55 = alloca %struct.hfi_h264_entropy_control*, align 8
  %56 = alloca i32*, align 8
  %57 = alloca %struct.hfi_mpeg4_time_resolution*, align 8
  %58 = alloca %struct.hfi_mpeg4_time_resolution*, align 8
  %59 = alloca %struct.hfi_mpeg4_header_extension*, align 8
  %60 = alloca %struct.hfi_mpeg4_header_extension*, align 8
  %61 = alloca %struct.hfi_h264_db_control*, align 8
  %62 = alloca %struct.hfi_h264_db_control*, align 8
  %63 = alloca %struct.hfi_quantization*, align 8
  %64 = alloca %struct.hfi_quantization*, align 8
  %65 = alloca %struct.hfi_quantization_range*, align 8
  %66 = alloca %struct.hfi_quantization_range*, align 8
  %67 = alloca i32, align 4
  %68 = alloca i32, align 4
  %69 = alloca %struct.hfi_vc1e_perf_cfg_type*, align 8
  %70 = alloca %struct.hfi_vc1e_perf_cfg_type*, align 8
  %71 = alloca %struct.hfi_max_num_b_frames*, align 8
  %72 = alloca i32*, align 8
  %73 = alloca %struct.hfi_intra_period*, align 8
  %74 = alloca %struct.hfi_intra_period*, align 8
  %75 = alloca %struct.hfi_idr_period*, align 8
  %76 = alloca %struct.hfi_idr_period*, align 8
  %77 = alloca %struct.hfi_conceal_color*, align 8
  %78 = alloca i32*, align 8
  %79 = alloca %struct.hfi_operations_type*, align 8
  %80 = alloca %struct.hfi_operations_type*, align 8
  %81 = alloca %struct.hfi_intra_refresh*, align 8
  %82 = alloca %struct.hfi_intra_refresh*, align 8
  %83 = alloca %struct.hfi_multi_slice_control*, align 8
  %84 = alloca %struct.hfi_multi_slice_control*, align 8
  %85 = alloca %struct.hfi_enable*, align 8
  %86 = alloca %struct.hfi_enable*, align 8
  %87 = alloca %struct.hfi_h264_vui_timing_info*, align 8
  %88 = alloca %struct.hfi_h264_vui_timing_info*, align 8
  %89 = alloca %struct.hfi_enable*, align 8
  %90 = alloca %struct.hfi_enable*, align 8
  %91 = alloca %struct.hfi_enable*, align 8
  %92 = alloca %struct.hfi_enable*, align 8
  %93 = alloca %struct.hfi_buffer_alloc_mode*, align 8
  %94 = alloca %struct.hfi_buffer_alloc_mode*, align 8
  %95 = alloca %struct.hfi_enable*, align 8
  %96 = alloca %struct.hfi_enable*, align 8
  %97 = alloca %struct.hfi_enable*, align 8
  %98 = alloca %struct.hfi_enable*, align 8
  %99 = alloca %struct.hfi_enable*, align 8
  %100 = alloca %struct.hfi_enable*, align 8
  %101 = alloca %struct.hfi_scs_threshold*, align 8
  %102 = alloca i32*, align 8
  %103 = alloca %struct.hfi_mvc_buffer_layout_descp_type*, align 8
  %104 = alloca %struct.hfi_mvc_buffer_layout_descp_type*, align 8
  %105 = alloca %struct.hfi_ltr_mode*, align 8
  %106 = alloca %struct.hfi_ltr_mode*, align 8
  %107 = alloca %struct.hfi_ltr_use*, align 8
  %108 = alloca %struct.hfi_ltr_use*, align 8
  %109 = alloca %struct.hfi_ltr_mark*, align 8
  %110 = alloca %struct.hfi_ltr_mark*, align 8
  %111 = alloca i32*, align 8
  %112 = alloca i32*, align 8
  %113 = alloca %struct.hfi_enable*, align 8
  %114 = alloca %struct.hfi_enable*, align 8
  %115 = alloca %struct.hfi_initial_quantization*, align 8
  %116 = alloca %struct.hfi_initial_quantization*, align 8
  %117 = alloca %struct.hfi_vpe_color_space_conversion*, align 8
  %118 = alloca %struct.hfi_vpe_color_space_conversion*, align 8
  %119 = alloca %struct.hfi_enable*, align 8
  %120 = alloca %struct.hfi_enable*, align 8
  %121 = alloca %struct.hfi_enable*, align 8
  %122 = alloca %struct.hfi_enable*, align 8
  %123 = alloca i32*, align 8
  %124 = alloca i32*, align 8
  %125 = alloca %struct.hfi_enable*, align 8
  %126 = alloca %struct.hfi_enable*, align 8
  %127 = alloca %struct.hfi_hybrid_hierp*, align 8
  %128 = alloca %struct.hfi_hybrid_hierp*, align 8
  store %struct.hfi_session_set_property_pkt* %0, %struct.hfi_session_set_property_pkt** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %129 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %130 = icmp ne %struct.hfi_session_set_property_pkt* %129, null
  br i1 %130, label %131, label %137

131:                                              ; preds = %4
  %132 = load i8*, i8** %7, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i8*, i8** %9, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %134, %131, %4
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %5, align 4
  br label %1622

140:                                              ; preds = %134
  %141 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %142 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  %145 = bitcast i32* %144 to i8*
  store i8* %145, i8** %10, align 8
  %146 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %147 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  store i32 24, i32* %149, align 4
  %150 = load i32, i32* @HFI_CMD_SESSION_SET_PROPERTY, align 4
  %151 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %152 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 1
  store i32 %150, i32* %154, align 4
  %155 = load i8*, i8** %7, align 8
  %156 = call i32 @hash32_ptr(i8* %155)
  %157 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %158 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  store i32 %156, i32* %159, align 4
  %160 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %161 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %160, i32 0, i32 1
  store i32 1, i32* %161, align 8
  %162 = load i32, i32* %8, align 4
  %163 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %164 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  store i32 %162, i32* %166, align 4
  %167 = load i32, i32* %8, align 4
  switch i32 %167, label %1617 [
    i32 217, label %168
    i32 182, label %191
    i32 192, label %214
    i32 215, label %242
    i32 199, label %260
    i32 197, label %283
    i32 198, label %306
    i32 187, label %329
    i32 169, label %347
    i32 168, label %371
    i32 170, label %389
    i32 213, label %407
    i32 174, label %425
    i32 178, label %458
    i32 193, label %481
    i32 214, label %505
    i32 179, label %523
    i32 166, label %541
    i32 205, label %559
    i32 206, label %577
    i32 149, label %586
    i32 151, label %587
    i32 204, label %588
    i32 208, label %611
    i32 185, label %634
    i32 163, label %674
    i32 144, label %704
    i32 148, label %728
    i32 150, label %746
    i32 164, label %764
    i32 143, label %800
    i32 142, label %833
    i32 140, label %884
    i32 152, label %911
    i32 210, label %928
    i32 211, label %951
    i32 180, label %969
    i32 201, label %986
    i32 154, label %1025
    i32 147, label %1066
    i32 141, label %1097
    i32 159, label %1115
    i32 202, label %1143
    i32 162, label %1161
    i32 200, label %1179
    i32 177, label %1202
    i32 160, label %1220
    i32 145, label %1238
    i32 167, label %1256
    i32 188, label %1273
    i32 153, label %1309
    i32 203, label %1345
    i32 209, label %1373
    i32 156, label %1391
    i32 212, label %1408
    i32 165, label %1425
    i32 155, label %1443
    i32 138, label %1476
    i32 139, label %1510
    i32 161, label %1528
    i32 207, label %1546
    i32 158, label %1563
    i32 172, label %1580
    i32 157, label %1598
    i32 218, label %1616
    i32 216, label %1616
    i32 219, label %1616
    i32 137, label %1616
    i32 181, label %1616
    i32 191, label %1616
    i32 195, label %1616
    i32 183, label %1616
    i32 184, label %1616
    i32 196, label %1616
    i32 186, label %1616
    i32 189, label %1616
    i32 190, label %1616
    i32 194, label %1616
    i32 173, label %1616
    i32 175, label %1616
    i32 171, label %1616
    i32 176, label %1616
    i32 146, label %1616
  ]

168:                                              ; preds = %140
  %169 = load i8*, i8** %9, align 8
  %170 = bitcast i8* %169 to %struct.hfi_framerate*
  store %struct.hfi_framerate* %170, %struct.hfi_framerate** %12, align 8
  %171 = load i8*, i8** %10, align 8
  %172 = bitcast i8* %171 to %struct.hfi_framerate*
  store %struct.hfi_framerate* %172, %struct.hfi_framerate** %13, align 8
  %173 = load %struct.hfi_framerate*, %struct.hfi_framerate** %12, align 8
  %174 = getelementptr inbounds %struct.hfi_framerate, %struct.hfi_framerate* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.hfi_framerate*, %struct.hfi_framerate** %13, align 8
  %177 = getelementptr inbounds %struct.hfi_framerate, %struct.hfi_framerate* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  %178 = load %struct.hfi_framerate*, %struct.hfi_framerate** %12, align 8
  %179 = getelementptr inbounds %struct.hfi_framerate, %struct.hfi_framerate* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.hfi_framerate*, %struct.hfi_framerate** %13, align 8
  %182 = getelementptr inbounds %struct.hfi_framerate, %struct.hfi_framerate* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 4
  %183 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %184 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = sext i32 %187 to i64
  %189 = add i64 %188, 12
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %186, align 4
  br label %1620

191:                                              ; preds = %140
  %192 = load i8*, i8** %9, align 8
  %193 = bitcast i8* %192 to %struct.hfi_uncompressed_format_select*
  store %struct.hfi_uncompressed_format_select* %193, %struct.hfi_uncompressed_format_select** %14, align 8
  %194 = load i8*, i8** %10, align 8
  %195 = bitcast i8* %194 to %struct.hfi_uncompressed_format_select*
  store %struct.hfi_uncompressed_format_select* %195, %struct.hfi_uncompressed_format_select** %15, align 8
  %196 = load %struct.hfi_uncompressed_format_select*, %struct.hfi_uncompressed_format_select** %14, align 8
  %197 = getelementptr inbounds %struct.hfi_uncompressed_format_select, %struct.hfi_uncompressed_format_select* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.hfi_uncompressed_format_select*, %struct.hfi_uncompressed_format_select** %15, align 8
  %200 = getelementptr inbounds %struct.hfi_uncompressed_format_select, %struct.hfi_uncompressed_format_select* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 4
  %201 = load %struct.hfi_uncompressed_format_select*, %struct.hfi_uncompressed_format_select** %14, align 8
  %202 = getelementptr inbounds %struct.hfi_uncompressed_format_select, %struct.hfi_uncompressed_format_select* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.hfi_uncompressed_format_select*, %struct.hfi_uncompressed_format_select** %15, align 8
  %205 = getelementptr inbounds %struct.hfi_uncompressed_format_select, %struct.hfi_uncompressed_format_select* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 4
  %206 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %207 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = sext i32 %210 to i64
  %212 = add i64 %211, 12
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %209, align 4
  br label %1620

214:                                              ; preds = %140
  %215 = load i8*, i8** %9, align 8
  %216 = bitcast i8* %215 to %struct.hfi_framesize*
  store %struct.hfi_framesize* %216, %struct.hfi_framesize** %16, align 8
  %217 = load i8*, i8** %10, align 8
  %218 = bitcast i8* %217 to %struct.hfi_framesize*
  store %struct.hfi_framesize* %218, %struct.hfi_framesize** %17, align 8
  %219 = load %struct.hfi_framesize*, %struct.hfi_framesize** %16, align 8
  %220 = getelementptr inbounds %struct.hfi_framesize, %struct.hfi_framesize* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.hfi_framesize*, %struct.hfi_framesize** %17, align 8
  %223 = getelementptr inbounds %struct.hfi_framesize, %struct.hfi_framesize* %222, i32 0, i32 2
  store i32 %221, i32* %223, align 4
  %224 = load %struct.hfi_framesize*, %struct.hfi_framesize** %16, align 8
  %225 = getelementptr inbounds %struct.hfi_framesize, %struct.hfi_framesize* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.hfi_framesize*, %struct.hfi_framesize** %17, align 8
  %228 = getelementptr inbounds %struct.hfi_framesize, %struct.hfi_framesize* %227, i32 0, i32 1
  store i32 %226, i32* %228, align 4
  %229 = load %struct.hfi_framesize*, %struct.hfi_framesize** %16, align 8
  %230 = getelementptr inbounds %struct.hfi_framesize, %struct.hfi_framesize* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.hfi_framesize*, %struct.hfi_framesize** %17, align 8
  %233 = getelementptr inbounds %struct.hfi_framesize, %struct.hfi_framesize* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 4
  %234 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %235 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  %240 = add i64 %239, 16
  %241 = trunc i64 %240 to i32
  store i32 %241, i32* %237, align 4
  br label %1620

242:                                              ; preds = %140
  %243 = load i8*, i8** %9, align 8
  %244 = bitcast i8* %243 to %struct.hfi_enable*
  store %struct.hfi_enable* %244, %struct.hfi_enable** %18, align 8
  %245 = load i8*, i8** %10, align 8
  %246 = bitcast i8* %245 to %struct.hfi_enable*
  store %struct.hfi_enable* %246, %struct.hfi_enable** %19, align 8
  %247 = load %struct.hfi_enable*, %struct.hfi_enable** %18, align 8
  %248 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.hfi_enable*, %struct.hfi_enable** %19, align 8
  %251 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %250, i32 0, i32 0
  store i32 %249, i32* %251, align 4
  %252 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %253 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = sext i32 %256 to i64
  %258 = add i64 %257, 8
  %259 = trunc i64 %258 to i32
  store i32 %259, i32* %255, align 4
  br label %1620

260:                                              ; preds = %140
  %261 = load i8*, i8** %9, align 8
  %262 = bitcast i8* %261 to %struct.hfi_buffer_count_actual*
  store %struct.hfi_buffer_count_actual* %262, %struct.hfi_buffer_count_actual** %20, align 8
  %263 = load i8*, i8** %10, align 8
  %264 = bitcast i8* %263 to %struct.hfi_buffer_count_actual*
  store %struct.hfi_buffer_count_actual* %264, %struct.hfi_buffer_count_actual** %21, align 8
  %265 = load %struct.hfi_buffer_count_actual*, %struct.hfi_buffer_count_actual** %20, align 8
  %266 = getelementptr inbounds %struct.hfi_buffer_count_actual, %struct.hfi_buffer_count_actual* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.hfi_buffer_count_actual*, %struct.hfi_buffer_count_actual** %21, align 8
  %269 = getelementptr inbounds %struct.hfi_buffer_count_actual, %struct.hfi_buffer_count_actual* %268, i32 0, i32 1
  store i32 %267, i32* %269, align 4
  %270 = load %struct.hfi_buffer_count_actual*, %struct.hfi_buffer_count_actual** %20, align 8
  %271 = getelementptr inbounds %struct.hfi_buffer_count_actual, %struct.hfi_buffer_count_actual* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.hfi_buffer_count_actual*, %struct.hfi_buffer_count_actual** %21, align 8
  %274 = getelementptr inbounds %struct.hfi_buffer_count_actual, %struct.hfi_buffer_count_actual* %273, i32 0, i32 0
  store i32 %272, i32* %274, align 4
  %275 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %276 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = sext i32 %279 to i64
  %281 = add i64 %280, 12
  %282 = trunc i64 %281 to i32
  store i32 %282, i32* %278, align 4
  br label %1620

283:                                              ; preds = %140
  %284 = load i8*, i8** %9, align 8
  %285 = bitcast i8* %284 to %struct.hfi_buffer_size_actual*
  store %struct.hfi_buffer_size_actual* %285, %struct.hfi_buffer_size_actual** %22, align 8
  %286 = load i8*, i8** %10, align 8
  %287 = bitcast i8* %286 to %struct.hfi_buffer_size_actual*
  store %struct.hfi_buffer_size_actual* %287, %struct.hfi_buffer_size_actual** %23, align 8
  %288 = load %struct.hfi_buffer_size_actual*, %struct.hfi_buffer_size_actual** %22, align 8
  %289 = getelementptr inbounds %struct.hfi_buffer_size_actual, %struct.hfi_buffer_size_actual* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.hfi_buffer_size_actual*, %struct.hfi_buffer_size_actual** %23, align 8
  %292 = getelementptr inbounds %struct.hfi_buffer_size_actual, %struct.hfi_buffer_size_actual* %291, i32 0, i32 1
  store i32 %290, i32* %292, align 4
  %293 = load %struct.hfi_buffer_size_actual*, %struct.hfi_buffer_size_actual** %22, align 8
  %294 = getelementptr inbounds %struct.hfi_buffer_size_actual, %struct.hfi_buffer_size_actual* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.hfi_buffer_size_actual*, %struct.hfi_buffer_size_actual** %23, align 8
  %297 = getelementptr inbounds %struct.hfi_buffer_size_actual, %struct.hfi_buffer_size_actual* %296, i32 0, i32 0
  store i32 %295, i32* %297, align 4
  %298 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %299 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %298, i32 0, i32 2
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = sext i32 %302 to i64
  %304 = add i64 %303, 12
  %305 = trunc i64 %304 to i32
  store i32 %305, i32* %301, align 4
  br label %1620

306:                                              ; preds = %140
  %307 = load i8*, i8** %9, align 8
  %308 = bitcast i8* %307 to %struct.hfi_buffer_display_hold_count_actual*
  store %struct.hfi_buffer_display_hold_count_actual* %308, %struct.hfi_buffer_display_hold_count_actual** %24, align 8
  %309 = load i8*, i8** %10, align 8
  %310 = bitcast i8* %309 to %struct.hfi_buffer_display_hold_count_actual*
  store %struct.hfi_buffer_display_hold_count_actual* %310, %struct.hfi_buffer_display_hold_count_actual** %25, align 8
  %311 = load %struct.hfi_buffer_display_hold_count_actual*, %struct.hfi_buffer_display_hold_count_actual** %24, align 8
  %312 = getelementptr inbounds %struct.hfi_buffer_display_hold_count_actual, %struct.hfi_buffer_display_hold_count_actual* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.hfi_buffer_display_hold_count_actual*, %struct.hfi_buffer_display_hold_count_actual** %25, align 8
  %315 = getelementptr inbounds %struct.hfi_buffer_display_hold_count_actual, %struct.hfi_buffer_display_hold_count_actual* %314, i32 0, i32 1
  store i32 %313, i32* %315, align 4
  %316 = load %struct.hfi_buffer_display_hold_count_actual*, %struct.hfi_buffer_display_hold_count_actual** %24, align 8
  %317 = getelementptr inbounds %struct.hfi_buffer_display_hold_count_actual, %struct.hfi_buffer_display_hold_count_actual* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.hfi_buffer_display_hold_count_actual*, %struct.hfi_buffer_display_hold_count_actual** %25, align 8
  %320 = getelementptr inbounds %struct.hfi_buffer_display_hold_count_actual, %struct.hfi_buffer_display_hold_count_actual* %319, i32 0, i32 0
  store i32 %318, i32* %320, align 4
  %321 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %322 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %321, i32 0, i32 2
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = sext i32 %325 to i64
  %327 = add i64 %326, 12
  %328 = trunc i64 %327 to i32
  store i32 %328, i32* %324, align 4
  br label %1620

329:                                              ; preds = %140
  %330 = load i8*, i8** %9, align 8
  %331 = bitcast i8* %330 to %struct.hfi_nal_stream_format_select*
  store %struct.hfi_nal_stream_format_select* %331, %struct.hfi_nal_stream_format_select** %26, align 8
  %332 = load i8*, i8** %10, align 8
  %333 = bitcast i8* %332 to %struct.hfi_nal_stream_format_select*
  store %struct.hfi_nal_stream_format_select* %333, %struct.hfi_nal_stream_format_select** %27, align 8
  %334 = load %struct.hfi_nal_stream_format_select*, %struct.hfi_nal_stream_format_select** %26, align 8
  %335 = getelementptr inbounds %struct.hfi_nal_stream_format_select, %struct.hfi_nal_stream_format_select* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.hfi_nal_stream_format_select*, %struct.hfi_nal_stream_format_select** %27, align 8
  %338 = getelementptr inbounds %struct.hfi_nal_stream_format_select, %struct.hfi_nal_stream_format_select* %337, i32 0, i32 0
  store i32 %336, i32* %338, align 4
  %339 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %340 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %339, i32 0, i32 2
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = sext i32 %343 to i64
  %345 = add i64 %344, 8
  %346 = trunc i64 %345 to i32
  store i32 %346, i32* %342, align 4
  br label %1620

347:                                              ; preds = %140
  %348 = load i8*, i8** %9, align 8
  %349 = bitcast i8* %348 to i32*
  store i32* %349, i32** %28, align 8
  %350 = load i32*, i32** %28, align 8
  %351 = load i32, i32* %350, align 4
  switch i32 %351, label %353 [
    i32 221, label %352
    i32 220, label %352
  ]

352:                                              ; preds = %347, %347
  br label %356

353:                                              ; preds = %347
  %354 = load i32, i32* @EINVAL, align 4
  %355 = sub nsw i32 0, %354
  store i32 %355, i32* %11, align 4
  br label %356

356:                                              ; preds = %353, %352
  %357 = load i32*, i32** %28, align 8
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %360 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %359, i32 0, i32 0
  %361 = load i32*, i32** %360, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 1
  store i32 %358, i32* %362, align 4
  %363 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %364 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %363, i32 0, i32 2
  %365 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = sext i32 %367 to i64
  %369 = add i64 %368, 8
  %370 = trunc i64 %369 to i32
  store i32 %370, i32* %366, align 4
  br label %1620

371:                                              ; preds = %140
  %372 = load i8*, i8** %9, align 8
  %373 = bitcast i8* %372 to %struct.hfi_enable_picture*
  store %struct.hfi_enable_picture* %373, %struct.hfi_enable_picture** %29, align 8
  %374 = load i8*, i8** %10, align 8
  %375 = bitcast i8* %374 to %struct.hfi_enable_picture*
  store %struct.hfi_enable_picture* %375, %struct.hfi_enable_picture** %30, align 8
  %376 = load %struct.hfi_enable_picture*, %struct.hfi_enable_picture** %29, align 8
  %377 = getelementptr inbounds %struct.hfi_enable_picture, %struct.hfi_enable_picture* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.hfi_enable_picture*, %struct.hfi_enable_picture** %30, align 8
  %380 = getelementptr inbounds %struct.hfi_enable_picture, %struct.hfi_enable_picture* %379, i32 0, i32 0
  store i32 %378, i32* %380, align 4
  %381 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %382 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %381, i32 0, i32 2
  %383 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = sext i32 %385 to i64
  %387 = add i64 %386, 8
  %388 = trunc i64 %387 to i32
  store i32 %388, i32* %384, align 4
  br label %1620

389:                                              ; preds = %140
  %390 = load i8*, i8** %9, align 8
  %391 = bitcast i8* %390 to %struct.hfi_enable*
  store %struct.hfi_enable* %391, %struct.hfi_enable** %31, align 8
  %392 = load i8*, i8** %10, align 8
  %393 = bitcast i8* %392 to %struct.hfi_enable*
  store %struct.hfi_enable* %393, %struct.hfi_enable** %32, align 8
  %394 = load %struct.hfi_enable*, %struct.hfi_enable** %31, align 8
  %395 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.hfi_enable*, %struct.hfi_enable** %32, align 8
  %398 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %397, i32 0, i32 0
  store i32 %396, i32* %398, align 4
  %399 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %400 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %399, i32 0, i32 2
  %401 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = sext i32 %403 to i64
  %405 = add i64 %404, 8
  %406 = trunc i64 %405 to i32
  store i32 %406, i32* %402, align 4
  br label %1620

407:                                              ; preds = %140
  %408 = load i8*, i8** %9, align 8
  %409 = bitcast i8* %408 to %struct.hfi_enable*
  store %struct.hfi_enable* %409, %struct.hfi_enable** %33, align 8
  %410 = load i8*, i8** %10, align 8
  %411 = bitcast i8* %410 to %struct.hfi_enable*
  store %struct.hfi_enable* %411, %struct.hfi_enable** %34, align 8
  %412 = load %struct.hfi_enable*, %struct.hfi_enable** %33, align 8
  %413 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = load %struct.hfi_enable*, %struct.hfi_enable** %34, align 8
  %416 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %415, i32 0, i32 0
  store i32 %414, i32* %416, align 4
  %417 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %418 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %417, i32 0, i32 2
  %419 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 4
  %422 = sext i32 %421 to i64
  %423 = add i64 %422, 8
  %424 = trunc i64 %423 to i32
  store i32 %424, i32* %420, align 4
  br label %1620

425:                                              ; preds = %140
  %426 = load i8*, i8** %9, align 8
  %427 = bitcast i8* %426 to %struct.hfi_multi_stream*
  store %struct.hfi_multi_stream* %427, %struct.hfi_multi_stream** %35, align 8
  %428 = load i8*, i8** %10, align 8
  %429 = bitcast i8* %428 to %struct.hfi_multi_stream*
  store %struct.hfi_multi_stream* %429, %struct.hfi_multi_stream** %36, align 8
  %430 = load %struct.hfi_multi_stream*, %struct.hfi_multi_stream** %35, align 8
  %431 = getelementptr inbounds %struct.hfi_multi_stream, %struct.hfi_multi_stream* %430, i32 0, i32 3
  %432 = load i32, i32* %431, align 4
  %433 = load %struct.hfi_multi_stream*, %struct.hfi_multi_stream** %36, align 8
  %434 = getelementptr inbounds %struct.hfi_multi_stream, %struct.hfi_multi_stream* %433, i32 0, i32 3
  store i32 %432, i32* %434, align 4
  %435 = load %struct.hfi_multi_stream*, %struct.hfi_multi_stream** %35, align 8
  %436 = getelementptr inbounds %struct.hfi_multi_stream, %struct.hfi_multi_stream* %435, i32 0, i32 2
  %437 = load i32, i32* %436, align 4
  %438 = load %struct.hfi_multi_stream*, %struct.hfi_multi_stream** %36, align 8
  %439 = getelementptr inbounds %struct.hfi_multi_stream, %struct.hfi_multi_stream* %438, i32 0, i32 2
  store i32 %437, i32* %439, align 4
  %440 = load %struct.hfi_multi_stream*, %struct.hfi_multi_stream** %35, align 8
  %441 = getelementptr inbounds %struct.hfi_multi_stream, %struct.hfi_multi_stream* %440, i32 0, i32 1
  %442 = load i32, i32* %441, align 4
  %443 = load %struct.hfi_multi_stream*, %struct.hfi_multi_stream** %36, align 8
  %444 = getelementptr inbounds %struct.hfi_multi_stream, %struct.hfi_multi_stream* %443, i32 0, i32 1
  store i32 %442, i32* %444, align 4
  %445 = load %struct.hfi_multi_stream*, %struct.hfi_multi_stream** %35, align 8
  %446 = getelementptr inbounds %struct.hfi_multi_stream, %struct.hfi_multi_stream* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 4
  %448 = load %struct.hfi_multi_stream*, %struct.hfi_multi_stream** %36, align 8
  %449 = getelementptr inbounds %struct.hfi_multi_stream, %struct.hfi_multi_stream* %448, i32 0, i32 0
  store i32 %447, i32* %449, align 4
  %450 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %451 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %450, i32 0, i32 2
  %452 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %451, i32 0, i32 0
  %453 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 4
  %455 = sext i32 %454 to i64
  %456 = add i64 %455, 20
  %457 = trunc i64 %456 to i32
  store i32 %457, i32* %453, align 4
  br label %1620

458:                                              ; preds = %140
  %459 = load i8*, i8** %9, align 8
  %460 = bitcast i8* %459 to %struct.hfi_display_picture_buffer_count*
  store %struct.hfi_display_picture_buffer_count* %460, %struct.hfi_display_picture_buffer_count** %37, align 8
  %461 = load i8*, i8** %10, align 8
  %462 = bitcast i8* %461 to %struct.hfi_display_picture_buffer_count*
  store %struct.hfi_display_picture_buffer_count* %462, %struct.hfi_display_picture_buffer_count** %38, align 8
  %463 = load %struct.hfi_display_picture_buffer_count*, %struct.hfi_display_picture_buffer_count** %37, align 8
  %464 = getelementptr inbounds %struct.hfi_display_picture_buffer_count, %struct.hfi_display_picture_buffer_count* %463, i32 0, i32 1
  %465 = load i32, i32* %464, align 4
  %466 = load %struct.hfi_display_picture_buffer_count*, %struct.hfi_display_picture_buffer_count** %38, align 8
  %467 = getelementptr inbounds %struct.hfi_display_picture_buffer_count, %struct.hfi_display_picture_buffer_count* %466, i32 0, i32 1
  store i32 %465, i32* %467, align 4
  %468 = load %struct.hfi_display_picture_buffer_count*, %struct.hfi_display_picture_buffer_count** %37, align 8
  %469 = getelementptr inbounds %struct.hfi_display_picture_buffer_count, %struct.hfi_display_picture_buffer_count* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 4
  %471 = load %struct.hfi_display_picture_buffer_count*, %struct.hfi_display_picture_buffer_count** %38, align 8
  %472 = getelementptr inbounds %struct.hfi_display_picture_buffer_count, %struct.hfi_display_picture_buffer_count* %471, i32 0, i32 0
  store i32 %470, i32* %472, align 4
  %473 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %474 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %473, i32 0, i32 2
  %475 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %474, i32 0, i32 0
  %476 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 4
  %478 = sext i32 %477 to i64
  %479 = add i64 %478, 12
  %480 = trunc i64 %479 to i32
  store i32 %480, i32* %476, align 4
  br label %1620

481:                                              ; preds = %140
  %482 = load i8*, i8** %9, align 8
  %483 = bitcast i8* %482 to i32*
  store i32* %483, i32** %39, align 8
  %484 = load i32*, i32** %39, align 8
  %485 = load i32, i32* %484, align 4
  switch i32 %485, label %487 [
    i32 244, label %486
    i32 243, label %486
    i32 242, label %486
  ]

486:                                              ; preds = %481, %481, %481
  br label %490

487:                                              ; preds = %481
  %488 = load i32, i32* @EINVAL, align 4
  %489 = sub nsw i32 0, %488
  store i32 %489, i32* %11, align 4
  br label %490

490:                                              ; preds = %487, %486
  %491 = load i32*, i32** %39, align 8
  %492 = load i32, i32* %491, align 4
  %493 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %494 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %493, i32 0, i32 0
  %495 = load i32*, i32** %494, align 8
  %496 = getelementptr inbounds i32, i32* %495, i64 1
  store i32 %492, i32* %496, align 4
  %497 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %498 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %497, i32 0, i32 2
  %499 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %498, i32 0, i32 0
  %500 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 4
  %502 = sext i32 %501 to i64
  %503 = add i64 %502, 8
  %504 = trunc i64 %503 to i32
  store i32 %504, i32* %500, align 4
  br label %1620

505:                                              ; preds = %140
  %506 = load i8*, i8** %9, align 8
  %507 = bitcast i8* %506 to %struct.hfi_enable*
  store %struct.hfi_enable* %507, %struct.hfi_enable** %40, align 8
  %508 = load i8*, i8** %10, align 8
  %509 = bitcast i8* %508 to %struct.hfi_enable*
  store %struct.hfi_enable* %509, %struct.hfi_enable** %41, align 8
  %510 = load %struct.hfi_enable*, %struct.hfi_enable** %40, align 8
  %511 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %510, i32 0, i32 0
  %512 = load i32, i32* %511, align 4
  %513 = load %struct.hfi_enable*, %struct.hfi_enable** %41, align 8
  %514 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %513, i32 0, i32 0
  store i32 %512, i32* %514, align 4
  %515 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %516 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %515, i32 0, i32 2
  %517 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %516, i32 0, i32 0
  %518 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %517, i32 0, i32 0
  %519 = load i32, i32* %518, align 4
  %520 = sext i32 %519 to i64
  %521 = add i64 %520, 8
  %522 = trunc i64 %521 to i32
  store i32 %522, i32* %518, align 4
  br label %1620

523:                                              ; preds = %140
  %524 = load i8*, i8** %9, align 8
  %525 = bitcast i8* %524 to %struct.hfi_enable*
  store %struct.hfi_enable* %525, %struct.hfi_enable** %42, align 8
  %526 = load i8*, i8** %10, align 8
  %527 = bitcast i8* %526 to %struct.hfi_enable*
  store %struct.hfi_enable* %527, %struct.hfi_enable** %43, align 8
  %528 = load %struct.hfi_enable*, %struct.hfi_enable** %42, align 8
  %529 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %528, i32 0, i32 0
  %530 = load i32, i32* %529, align 4
  %531 = load %struct.hfi_enable*, %struct.hfi_enable** %43, align 8
  %532 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %531, i32 0, i32 0
  store i32 %530, i32* %532, align 4
  %533 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %534 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %533, i32 0, i32 2
  %535 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %534, i32 0, i32 0
  %536 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 4
  %538 = sext i32 %537 to i64
  %539 = add i64 %538, 8
  %540 = trunc i64 %539 to i32
  store i32 %540, i32* %536, align 4
  br label %1620

541:                                              ; preds = %140
  %542 = load i8*, i8** %9, align 8
  %543 = bitcast i8* %542 to %struct.hfi_enable*
  store %struct.hfi_enable* %543, %struct.hfi_enable** %44, align 8
  %544 = load i8*, i8** %10, align 8
  %545 = bitcast i8* %544 to %struct.hfi_enable*
  store %struct.hfi_enable* %545, %struct.hfi_enable** %45, align 8
  %546 = load %struct.hfi_enable*, %struct.hfi_enable** %44, align 8
  %547 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %546, i32 0, i32 0
  %548 = load i32, i32* %547, align 4
  %549 = load %struct.hfi_enable*, %struct.hfi_enable** %45, align 8
  %550 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %549, i32 0, i32 0
  store i32 %548, i32* %550, align 4
  %551 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %552 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %551, i32 0, i32 2
  %553 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %552, i32 0, i32 0
  %554 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %553, i32 0, i32 0
  %555 = load i32, i32* %554, align 4
  %556 = sext i32 %555 to i64
  %557 = add i64 %556, 8
  %558 = trunc i64 %557 to i32
  store i32 %558, i32* %554, align 4
  br label %1620

559:                                              ; preds = %140
  %560 = load i8*, i8** %9, align 8
  %561 = bitcast i8* %560 to %struct.hfi_enable*
  store %struct.hfi_enable* %561, %struct.hfi_enable** %46, align 8
  %562 = load i8*, i8** %10, align 8
  %563 = bitcast i8* %562 to %struct.hfi_enable*
  store %struct.hfi_enable* %563, %struct.hfi_enable** %47, align 8
  %564 = load %struct.hfi_enable*, %struct.hfi_enable** %46, align 8
  %565 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %564, i32 0, i32 0
  %566 = load i32, i32* %565, align 4
  %567 = load %struct.hfi_enable*, %struct.hfi_enable** %47, align 8
  %568 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %567, i32 0, i32 0
  store i32 %566, i32* %568, align 4
  %569 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %570 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %569, i32 0, i32 2
  %571 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %570, i32 0, i32 0
  %572 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %571, i32 0, i32 0
  %573 = load i32, i32* %572, align 4
  %574 = sext i32 %573 to i64
  %575 = add i64 %574, 8
  %576 = trunc i64 %575 to i32
  store i32 %576, i32* %572, align 4
  br label %1620

577:                                              ; preds = %140
  %578 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %579 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %578, i32 0, i32 2
  %580 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %579, i32 0, i32 0
  %581 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %580, i32 0, i32 0
  %582 = load i32, i32* %581, align 4
  %583 = sext i32 %582 to i64
  %584 = add i64 %583, 4
  %585 = trunc i64 %584 to i32
  store i32 %585, i32* %581, align 4
  br label %1620

586:                                              ; preds = %140
  br label %1620

587:                                              ; preds = %140
  br label %1620

588:                                              ; preds = %140
  %589 = load i8*, i8** %9, align 8
  %590 = bitcast i8* %589 to %struct.hfi_bitrate*
  store %struct.hfi_bitrate* %590, %struct.hfi_bitrate** %48, align 8
  %591 = load i8*, i8** %10, align 8
  %592 = bitcast i8* %591 to %struct.hfi_bitrate*
  store %struct.hfi_bitrate* %592, %struct.hfi_bitrate** %49, align 8
  %593 = load %struct.hfi_bitrate*, %struct.hfi_bitrate** %48, align 8
  %594 = getelementptr inbounds %struct.hfi_bitrate, %struct.hfi_bitrate* %593, i32 0, i32 1
  %595 = load i32, i32* %594, align 4
  %596 = load %struct.hfi_bitrate*, %struct.hfi_bitrate** %49, align 8
  %597 = getelementptr inbounds %struct.hfi_bitrate, %struct.hfi_bitrate* %596, i32 0, i32 1
  store i32 %595, i32* %597, align 4
  %598 = load %struct.hfi_bitrate*, %struct.hfi_bitrate** %48, align 8
  %599 = getelementptr inbounds %struct.hfi_bitrate, %struct.hfi_bitrate* %598, i32 0, i32 0
  %600 = load i32, i32* %599, align 4
  %601 = load %struct.hfi_bitrate*, %struct.hfi_bitrate** %49, align 8
  %602 = getelementptr inbounds %struct.hfi_bitrate, %struct.hfi_bitrate* %601, i32 0, i32 0
  store i32 %600, i32* %602, align 4
  %603 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %604 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %603, i32 0, i32 2
  %605 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %604, i32 0, i32 0
  %606 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %605, i32 0, i32 0
  %607 = load i32, i32* %606, align 4
  %608 = sext i32 %607 to i64
  %609 = add i64 %608, 12
  %610 = trunc i64 %609 to i32
  store i32 %610, i32* %606, align 4
  br label %1620

611:                                              ; preds = %140
  %612 = load i8*, i8** %9, align 8
  %613 = bitcast i8* %612 to %struct.hfi_bitrate*
  store %struct.hfi_bitrate* %613, %struct.hfi_bitrate** %50, align 8
  %614 = load i8*, i8** %10, align 8
  %615 = bitcast i8* %614 to %struct.hfi_bitrate*
  store %struct.hfi_bitrate* %615, %struct.hfi_bitrate** %51, align 8
  %616 = load %struct.hfi_bitrate*, %struct.hfi_bitrate** %50, align 8
  %617 = getelementptr inbounds %struct.hfi_bitrate, %struct.hfi_bitrate* %616, i32 0, i32 1
  %618 = load i32, i32* %617, align 4
  %619 = load %struct.hfi_bitrate*, %struct.hfi_bitrate** %51, align 8
  %620 = getelementptr inbounds %struct.hfi_bitrate, %struct.hfi_bitrate* %619, i32 0, i32 1
  store i32 %618, i32* %620, align 4
  %621 = load %struct.hfi_bitrate*, %struct.hfi_bitrate** %50, align 8
  %622 = getelementptr inbounds %struct.hfi_bitrate, %struct.hfi_bitrate* %621, i32 0, i32 0
  %623 = load i32, i32* %622, align 4
  %624 = load %struct.hfi_bitrate*, %struct.hfi_bitrate** %51, align 8
  %625 = getelementptr inbounds %struct.hfi_bitrate, %struct.hfi_bitrate* %624, i32 0, i32 0
  store i32 %623, i32* %625, align 4
  %626 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %627 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %626, i32 0, i32 2
  %628 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %627, i32 0, i32 0
  %629 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %628, i32 0, i32 0
  %630 = load i32, i32* %629, align 4
  %631 = sext i32 %630 to i64
  %632 = add i64 %631, 12
  %633 = trunc i64 %632 to i32
  store i32 %633, i32* %629, align 4
  br label %1620

634:                                              ; preds = %140
  %635 = load i8*, i8** %9, align 8
  %636 = bitcast i8* %635 to %struct.hfi_profile_level*
  store %struct.hfi_profile_level* %636, %struct.hfi_profile_level** %52, align 8
  %637 = load i8*, i8** %10, align 8
  %638 = bitcast i8* %637 to %struct.hfi_profile_level*
  store %struct.hfi_profile_level* %638, %struct.hfi_profile_level** %53, align 8
  %639 = load %struct.hfi_profile_level*, %struct.hfi_profile_level** %52, align 8
  %640 = getelementptr inbounds %struct.hfi_profile_level, %struct.hfi_profile_level* %639, i32 0, i32 0
  %641 = load i32, i32* %640, align 4
  %642 = load %struct.hfi_profile_level*, %struct.hfi_profile_level** %53, align 8
  %643 = getelementptr inbounds %struct.hfi_profile_level, %struct.hfi_profile_level* %642, i32 0, i32 0
  store i32 %641, i32* %643, align 4
  %644 = load %struct.hfi_profile_level*, %struct.hfi_profile_level** %52, align 8
  %645 = getelementptr inbounds %struct.hfi_profile_level, %struct.hfi_profile_level* %644, i32 0, i32 1
  %646 = load i32, i32* %645, align 4
  %647 = load %struct.hfi_profile_level*, %struct.hfi_profile_level** %53, align 8
  %648 = getelementptr inbounds %struct.hfi_profile_level, %struct.hfi_profile_level* %647, i32 0, i32 1
  store i32 %646, i32* %648, align 4
  %649 = load %struct.hfi_profile_level*, %struct.hfi_profile_level** %53, align 8
  %650 = getelementptr inbounds %struct.hfi_profile_level, %struct.hfi_profile_level* %649, i32 0, i32 1
  %651 = load i32, i32* %650, align 4
  %652 = icmp sle i32 %651, 0
  br i1 %652, label %653, label %657

653:                                              ; preds = %634
  %654 = load i32, i32* @HFI_H264_PROFILE_HIGH, align 4
  %655 = load %struct.hfi_profile_level*, %struct.hfi_profile_level** %53, align 8
  %656 = getelementptr inbounds %struct.hfi_profile_level, %struct.hfi_profile_level* %655, i32 0, i32 1
  store i32 %654, i32* %656, align 4
  br label %657

657:                                              ; preds = %653, %634
  %658 = load %struct.hfi_profile_level*, %struct.hfi_profile_level** %53, align 8
  %659 = getelementptr inbounds %struct.hfi_profile_level, %struct.hfi_profile_level* %658, i32 0, i32 0
  %660 = load i32, i32* %659, align 4
  %661 = icmp ne i32 %660, 0
  br i1 %661, label %665, label %662

662:                                              ; preds = %657
  %663 = load %struct.hfi_profile_level*, %struct.hfi_profile_level** %53, align 8
  %664 = getelementptr inbounds %struct.hfi_profile_level, %struct.hfi_profile_level* %663, i32 0, i32 0
  store i32 1, i32* %664, align 4
  br label %665

665:                                              ; preds = %662, %657
  %666 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %667 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %666, i32 0, i32 2
  %668 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %667, i32 0, i32 0
  %669 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %668, i32 0, i32 0
  %670 = load i32, i32* %669, align 4
  %671 = sext i32 %670 to i64
  %672 = add i64 %671, 12
  %673 = trunc i64 %672 to i32
  store i32 %673, i32* %669, align 4
  br label %1620

674:                                              ; preds = %140
  %675 = load i8*, i8** %9, align 8
  %676 = bitcast i8* %675 to %struct.hfi_h264_entropy_control*
  store %struct.hfi_h264_entropy_control* %676, %struct.hfi_h264_entropy_control** %54, align 8
  %677 = load i8*, i8** %10, align 8
  %678 = bitcast i8* %677 to %struct.hfi_h264_entropy_control*
  store %struct.hfi_h264_entropy_control* %678, %struct.hfi_h264_entropy_control** %55, align 8
  %679 = load %struct.hfi_h264_entropy_control*, %struct.hfi_h264_entropy_control** %54, align 8
  %680 = getelementptr inbounds %struct.hfi_h264_entropy_control, %struct.hfi_h264_entropy_control* %679, i32 0, i32 1
  %681 = load i32, i32* %680, align 4
  %682 = load %struct.hfi_h264_entropy_control*, %struct.hfi_h264_entropy_control** %55, align 8
  %683 = getelementptr inbounds %struct.hfi_h264_entropy_control, %struct.hfi_h264_entropy_control* %682, i32 0, i32 1
  store i32 %681, i32* %683, align 4
  %684 = load %struct.hfi_h264_entropy_control*, %struct.hfi_h264_entropy_control** %55, align 8
  %685 = getelementptr inbounds %struct.hfi_h264_entropy_control, %struct.hfi_h264_entropy_control* %684, i32 0, i32 1
  %686 = load i32, i32* %685, align 4
  %687 = load i32, i32* @HFI_H264_ENTROPY_CABAC, align 4
  %688 = icmp eq i32 %686, %687
  br i1 %688, label %689, label %695

689:                                              ; preds = %674
  %690 = load %struct.hfi_h264_entropy_control*, %struct.hfi_h264_entropy_control** %54, align 8
  %691 = getelementptr inbounds %struct.hfi_h264_entropy_control, %struct.hfi_h264_entropy_control* %690, i32 0, i32 0
  %692 = load i32, i32* %691, align 4
  %693 = load %struct.hfi_h264_entropy_control*, %struct.hfi_h264_entropy_control** %55, align 8
  %694 = getelementptr inbounds %struct.hfi_h264_entropy_control, %struct.hfi_h264_entropy_control* %693, i32 0, i32 0
  store i32 %692, i32* %694, align 4
  br label %695

695:                                              ; preds = %689, %674
  %696 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %697 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %696, i32 0, i32 2
  %698 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %697, i32 0, i32 0
  %699 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %698, i32 0, i32 0
  %700 = load i32, i32* %699, align 4
  %701 = sext i32 %700 to i64
  %702 = add i64 %701, 12
  %703 = trunc i64 %702 to i32
  store i32 %703, i32* %699, align 4
  br label %1620

704:                                              ; preds = %140
  %705 = load i8*, i8** %9, align 8
  %706 = bitcast i8* %705 to i32*
  store i32* %706, i32** %56, align 8
  %707 = load i32*, i32** %56, align 8
  %708 = load i32, i32* %707, align 4
  switch i32 %708, label %710 [
    i32 134, label %709
    i32 136, label %709
    i32 135, label %709
    i32 133, label %709
    i32 132, label %709
  ]

709:                                              ; preds = %704, %704, %704, %704, %704
  br label %713

710:                                              ; preds = %704
  %711 = load i32, i32* @EINVAL, align 4
  %712 = sub nsw i32 0, %711
  store i32 %712, i32* %11, align 4
  br label %713

713:                                              ; preds = %710, %709
  %714 = load i32*, i32** %56, align 8
  %715 = load i32, i32* %714, align 4
  %716 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %717 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %716, i32 0, i32 0
  %718 = load i32*, i32** %717, align 8
  %719 = getelementptr inbounds i32, i32* %718, i64 1
  store i32 %715, i32* %719, align 4
  %720 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %721 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %720, i32 0, i32 2
  %722 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %721, i32 0, i32 0
  %723 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %722, i32 0, i32 0
  %724 = load i32, i32* %723, align 4
  %725 = sext i32 %724 to i64
  %726 = add i64 %725, 8
  %727 = trunc i64 %726 to i32
  store i32 %727, i32* %723, align 4
  br label %1620

728:                                              ; preds = %140
  %729 = load i8*, i8** %9, align 8
  %730 = bitcast i8* %729 to %struct.hfi_mpeg4_time_resolution*
  store %struct.hfi_mpeg4_time_resolution* %730, %struct.hfi_mpeg4_time_resolution** %57, align 8
  %731 = load i8*, i8** %10, align 8
  %732 = bitcast i8* %731 to %struct.hfi_mpeg4_time_resolution*
  store %struct.hfi_mpeg4_time_resolution* %732, %struct.hfi_mpeg4_time_resolution** %58, align 8
  %733 = load %struct.hfi_mpeg4_time_resolution*, %struct.hfi_mpeg4_time_resolution** %57, align 8
  %734 = getelementptr inbounds %struct.hfi_mpeg4_time_resolution, %struct.hfi_mpeg4_time_resolution* %733, i32 0, i32 0
  %735 = load i32, i32* %734, align 4
  %736 = load %struct.hfi_mpeg4_time_resolution*, %struct.hfi_mpeg4_time_resolution** %58, align 8
  %737 = getelementptr inbounds %struct.hfi_mpeg4_time_resolution, %struct.hfi_mpeg4_time_resolution* %736, i32 0, i32 0
  store i32 %735, i32* %737, align 4
  %738 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %739 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %738, i32 0, i32 2
  %740 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %739, i32 0, i32 0
  %741 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %740, i32 0, i32 0
  %742 = load i32, i32* %741, align 4
  %743 = sext i32 %742 to i64
  %744 = add i64 %743, 8
  %745 = trunc i64 %744 to i32
  store i32 %745, i32* %741, align 4
  br label %1620

746:                                              ; preds = %140
  %747 = load i8*, i8** %9, align 8
  %748 = bitcast i8* %747 to %struct.hfi_mpeg4_header_extension*
  store %struct.hfi_mpeg4_header_extension* %748, %struct.hfi_mpeg4_header_extension** %59, align 8
  %749 = load i8*, i8** %10, align 8
  %750 = bitcast i8* %749 to %struct.hfi_mpeg4_header_extension*
  store %struct.hfi_mpeg4_header_extension* %750, %struct.hfi_mpeg4_header_extension** %60, align 8
  %751 = load %struct.hfi_mpeg4_header_extension*, %struct.hfi_mpeg4_header_extension** %59, align 8
  %752 = getelementptr inbounds %struct.hfi_mpeg4_header_extension, %struct.hfi_mpeg4_header_extension* %751, i32 0, i32 0
  %753 = load i32, i32* %752, align 4
  %754 = load %struct.hfi_mpeg4_header_extension*, %struct.hfi_mpeg4_header_extension** %60, align 8
  %755 = getelementptr inbounds %struct.hfi_mpeg4_header_extension, %struct.hfi_mpeg4_header_extension* %754, i32 0, i32 0
  store i32 %753, i32* %755, align 4
  %756 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %757 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %756, i32 0, i32 2
  %758 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %757, i32 0, i32 0
  %759 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %758, i32 0, i32 0
  %760 = load i32, i32* %759, align 4
  %761 = sext i32 %760 to i64
  %762 = add i64 %761, 8
  %763 = trunc i64 %762 to i32
  store i32 %763, i32* %759, align 4
  br label %1620

764:                                              ; preds = %140
  %765 = load i8*, i8** %9, align 8
  %766 = bitcast i8* %765 to %struct.hfi_h264_db_control*
  store %struct.hfi_h264_db_control* %766, %struct.hfi_h264_db_control** %61, align 8
  %767 = load i8*, i8** %10, align 8
  %768 = bitcast i8* %767 to %struct.hfi_h264_db_control*
  store %struct.hfi_h264_db_control* %768, %struct.hfi_h264_db_control** %62, align 8
  %769 = load %struct.hfi_h264_db_control*, %struct.hfi_h264_db_control** %61, align 8
  %770 = getelementptr inbounds %struct.hfi_h264_db_control, %struct.hfi_h264_db_control* %769, i32 0, i32 2
  %771 = load i32, i32* %770, align 4
  switch i32 %771, label %773 [
    i32 237, label %772
    i32 236, label %772
    i32 238, label %772
  ]

772:                                              ; preds = %764, %764, %764
  br label %776

773:                                              ; preds = %764
  %774 = load i32, i32* @EINVAL, align 4
  %775 = sub nsw i32 0, %774
  store i32 %775, i32* %11, align 4
  br label %776

776:                                              ; preds = %773, %772
  %777 = load %struct.hfi_h264_db_control*, %struct.hfi_h264_db_control** %61, align 8
  %778 = getelementptr inbounds %struct.hfi_h264_db_control, %struct.hfi_h264_db_control* %777, i32 0, i32 2
  %779 = load i32, i32* %778, align 4
  %780 = load %struct.hfi_h264_db_control*, %struct.hfi_h264_db_control** %62, align 8
  %781 = getelementptr inbounds %struct.hfi_h264_db_control, %struct.hfi_h264_db_control* %780, i32 0, i32 2
  store i32 %779, i32* %781, align 4
  %782 = load %struct.hfi_h264_db_control*, %struct.hfi_h264_db_control** %61, align 8
  %783 = getelementptr inbounds %struct.hfi_h264_db_control, %struct.hfi_h264_db_control* %782, i32 0, i32 1
  %784 = load i32, i32* %783, align 4
  %785 = load %struct.hfi_h264_db_control*, %struct.hfi_h264_db_control** %62, align 8
  %786 = getelementptr inbounds %struct.hfi_h264_db_control, %struct.hfi_h264_db_control* %785, i32 0, i32 1
  store i32 %784, i32* %786, align 4
  %787 = load %struct.hfi_h264_db_control*, %struct.hfi_h264_db_control** %61, align 8
  %788 = getelementptr inbounds %struct.hfi_h264_db_control, %struct.hfi_h264_db_control* %787, i32 0, i32 0
  %789 = load i32, i32* %788, align 4
  %790 = load %struct.hfi_h264_db_control*, %struct.hfi_h264_db_control** %62, align 8
  %791 = getelementptr inbounds %struct.hfi_h264_db_control, %struct.hfi_h264_db_control* %790, i32 0, i32 0
  store i32 %789, i32* %791, align 4
  %792 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %793 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %792, i32 0, i32 2
  %794 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %793, i32 0, i32 0
  %795 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %794, i32 0, i32 0
  %796 = load i32, i32* %795, align 4
  %797 = sext i32 %796 to i64
  %798 = add i64 %797, 16
  %799 = trunc i64 %798 to i32
  store i32 %799, i32* %795, align 4
  br label %1620

800:                                              ; preds = %140
  %801 = load i8*, i8** %9, align 8
  %802 = bitcast i8* %801 to %struct.hfi_quantization*
  store %struct.hfi_quantization* %802, %struct.hfi_quantization** %63, align 8
  %803 = load i8*, i8** %10, align 8
  %804 = bitcast i8* %803 to %struct.hfi_quantization*
  store %struct.hfi_quantization* %804, %struct.hfi_quantization** %64, align 8
  %805 = load %struct.hfi_quantization*, %struct.hfi_quantization** %63, align 8
  %806 = getelementptr inbounds %struct.hfi_quantization, %struct.hfi_quantization* %805, i32 0, i32 3
  %807 = load i32, i32* %806, align 4
  %808 = load %struct.hfi_quantization*, %struct.hfi_quantization** %64, align 8
  %809 = getelementptr inbounds %struct.hfi_quantization, %struct.hfi_quantization* %808, i32 0, i32 3
  store i32 %807, i32* %809, align 4
  %810 = load %struct.hfi_quantization*, %struct.hfi_quantization** %63, align 8
  %811 = getelementptr inbounds %struct.hfi_quantization, %struct.hfi_quantization* %810, i32 0, i32 2
  %812 = load i32, i32* %811, align 4
  %813 = load %struct.hfi_quantization*, %struct.hfi_quantization** %64, align 8
  %814 = getelementptr inbounds %struct.hfi_quantization, %struct.hfi_quantization* %813, i32 0, i32 2
  store i32 %812, i32* %814, align 4
  %815 = load %struct.hfi_quantization*, %struct.hfi_quantization** %63, align 8
  %816 = getelementptr inbounds %struct.hfi_quantization, %struct.hfi_quantization* %815, i32 0, i32 1
  %817 = load i32, i32* %816, align 4
  %818 = load %struct.hfi_quantization*, %struct.hfi_quantization** %64, align 8
  %819 = getelementptr inbounds %struct.hfi_quantization, %struct.hfi_quantization* %818, i32 0, i32 1
  store i32 %817, i32* %819, align 4
  %820 = load %struct.hfi_quantization*, %struct.hfi_quantization** %63, align 8
  %821 = getelementptr inbounds %struct.hfi_quantization, %struct.hfi_quantization* %820, i32 0, i32 0
  %822 = load i32, i32* %821, align 4
  %823 = load %struct.hfi_quantization*, %struct.hfi_quantization** %64, align 8
  %824 = getelementptr inbounds %struct.hfi_quantization, %struct.hfi_quantization* %823, i32 0, i32 0
  store i32 %822, i32* %824, align 4
  %825 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %826 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %825, i32 0, i32 2
  %827 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %826, i32 0, i32 0
  %828 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %827, i32 0, i32 0
  %829 = load i32, i32* %828, align 4
  %830 = sext i32 %829 to i64
  %831 = add i64 %830, 20
  %832 = trunc i64 %831 to i32
  store i32 %832, i32* %828, align 4
  br label %1620

833:                                              ; preds = %140
  %834 = load i8*, i8** %9, align 8
  %835 = bitcast i8* %834 to %struct.hfi_quantization_range*
  store %struct.hfi_quantization_range* %835, %struct.hfi_quantization_range** %65, align 8
  %836 = load i8*, i8** %10, align 8
  %837 = bitcast i8* %836 to %struct.hfi_quantization_range*
  store %struct.hfi_quantization_range* %837, %struct.hfi_quantization_range** %66, align 8
  %838 = load %struct.hfi_quantization_range*, %struct.hfi_quantization_range** %65, align 8
  %839 = getelementptr inbounds %struct.hfi_quantization_range, %struct.hfi_quantization_range* %838, i32 0, i32 0
  %840 = load i32, i32* %839, align 4
  store i32 %840, i32* %67, align 4
  %841 = load %struct.hfi_quantization_range*, %struct.hfi_quantization_range** %65, align 8
  %842 = getelementptr inbounds %struct.hfi_quantization_range, %struct.hfi_quantization_range* %841, i32 0, i32 1
  %843 = load i32, i32* %842, align 4
  store i32 %843, i32* %68, align 4
  %844 = load i32, i32* %67, align 4
  %845 = icmp sgt i32 %844, 255
  br i1 %845, label %849, label %846

846:                                              ; preds = %833
  %847 = load i32, i32* %68, align 4
  %848 = icmp sgt i32 %847, 255
  br i1 %848, label %849, label %852

849:                                              ; preds = %846, %833
  %850 = load i32, i32* @ERANGE, align 4
  %851 = sub nsw i32 0, %850
  store i32 %851, i32* %11, align 4
  br label %1620

852:                                              ; preds = %846
  %853 = load i32, i32* %67, align 4
  %854 = load i32, i32* %67, align 4
  %855 = shl i32 %854, 8
  %856 = or i32 %853, %855
  %857 = load i32, i32* %67, align 4
  %858 = shl i32 %857, 16
  %859 = or i32 %856, %858
  %860 = load %struct.hfi_quantization_range*, %struct.hfi_quantization_range** %66, align 8
  %861 = getelementptr inbounds %struct.hfi_quantization_range, %struct.hfi_quantization_range* %860, i32 0, i32 0
  store i32 %859, i32* %861, align 4
  %862 = load i32, i32* %68, align 4
  %863 = load i32, i32* %68, align 4
  %864 = shl i32 %863, 8
  %865 = or i32 %862, %864
  %866 = load i32, i32* %68, align 4
  %867 = shl i32 %866, 16
  %868 = or i32 %865, %867
  %869 = load %struct.hfi_quantization_range*, %struct.hfi_quantization_range** %66, align 8
  %870 = getelementptr inbounds %struct.hfi_quantization_range, %struct.hfi_quantization_range* %869, i32 0, i32 1
  store i32 %868, i32* %870, align 4
  %871 = load %struct.hfi_quantization_range*, %struct.hfi_quantization_range** %65, align 8
  %872 = getelementptr inbounds %struct.hfi_quantization_range, %struct.hfi_quantization_range* %871, i32 0, i32 2
  %873 = load i32, i32* %872, align 4
  %874 = load %struct.hfi_quantization_range*, %struct.hfi_quantization_range** %66, align 8
  %875 = getelementptr inbounds %struct.hfi_quantization_range, %struct.hfi_quantization_range* %874, i32 0, i32 2
  store i32 %873, i32* %875, align 4
  %876 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %877 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %876, i32 0, i32 2
  %878 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %877, i32 0, i32 0
  %879 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %878, i32 0, i32 0
  %880 = load i32, i32* %879, align 4
  %881 = sext i32 %880 to i64
  %882 = add i64 %881, 16
  %883 = trunc i64 %882 to i32
  store i32 %883, i32* %879, align 4
  br label %1620

884:                                              ; preds = %140
  %885 = load i8*, i8** %9, align 8
  %886 = bitcast i8* %885 to %struct.hfi_vc1e_perf_cfg_type*
  store %struct.hfi_vc1e_perf_cfg_type* %886, %struct.hfi_vc1e_perf_cfg_type** %69, align 8
  %887 = load i8*, i8** %10, align 8
  %888 = bitcast i8* %887 to %struct.hfi_vc1e_perf_cfg_type*
  store %struct.hfi_vc1e_perf_cfg_type* %888, %struct.hfi_vc1e_perf_cfg_type** %70, align 8
  %889 = load %struct.hfi_vc1e_perf_cfg_type*, %struct.hfi_vc1e_perf_cfg_type** %70, align 8
  %890 = getelementptr inbounds %struct.hfi_vc1e_perf_cfg_type, %struct.hfi_vc1e_perf_cfg_type* %889, i32 0, i32 1
  %891 = load i32, i32* %890, align 4
  %892 = load %struct.hfi_vc1e_perf_cfg_type*, %struct.hfi_vc1e_perf_cfg_type** %69, align 8
  %893 = getelementptr inbounds %struct.hfi_vc1e_perf_cfg_type, %struct.hfi_vc1e_perf_cfg_type* %892, i32 0, i32 1
  %894 = load i32, i32* %893, align 4
  %895 = call i32 @memcpy(i32 %891, i32 %894, i32 4)
  %896 = load %struct.hfi_vc1e_perf_cfg_type*, %struct.hfi_vc1e_perf_cfg_type** %70, align 8
  %897 = getelementptr inbounds %struct.hfi_vc1e_perf_cfg_type, %struct.hfi_vc1e_perf_cfg_type* %896, i32 0, i32 0
  %898 = load i32, i32* %897, align 4
  %899 = load %struct.hfi_vc1e_perf_cfg_type*, %struct.hfi_vc1e_perf_cfg_type** %69, align 8
  %900 = getelementptr inbounds %struct.hfi_vc1e_perf_cfg_type, %struct.hfi_vc1e_perf_cfg_type* %899, i32 0, i32 0
  %901 = load i32, i32* %900, align 4
  %902 = call i32 @memcpy(i32 %898, i32 %901, i32 4)
  %903 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %904 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %903, i32 0, i32 2
  %905 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %904, i32 0, i32 0
  %906 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %905, i32 0, i32 0
  %907 = load i32, i32* %906, align 4
  %908 = sext i32 %907 to i64
  %909 = add i64 %908, 12
  %910 = trunc i64 %909 to i32
  store i32 %910, i32* %906, align 4
  br label %1620

911:                                              ; preds = %140
  %912 = load i8*, i8** %10, align 8
  %913 = bitcast i8* %912 to %struct.hfi_max_num_b_frames*
  store %struct.hfi_max_num_b_frames* %913, %struct.hfi_max_num_b_frames** %71, align 8
  %914 = load i8*, i8** %9, align 8
  %915 = bitcast i8* %914 to i32*
  store i32* %915, i32** %72, align 8
  %916 = load i32*, i32** %72, align 8
  %917 = load i32, i32* %916, align 4
  %918 = load %struct.hfi_max_num_b_frames*, %struct.hfi_max_num_b_frames** %71, align 8
  %919 = getelementptr inbounds %struct.hfi_max_num_b_frames, %struct.hfi_max_num_b_frames* %918, i32 0, i32 0
  store i32 %917, i32* %919, align 4
  %920 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %921 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %920, i32 0, i32 2
  %922 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %921, i32 0, i32 0
  %923 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %922, i32 0, i32 0
  %924 = load i32, i32* %923, align 4
  %925 = sext i32 %924 to i64
  %926 = add i64 %925, 8
  %927 = trunc i64 %926 to i32
  store i32 %927, i32* %923, align 4
  br label %1620

928:                                              ; preds = %140
  %929 = load i8*, i8** %9, align 8
  %930 = bitcast i8* %929 to %struct.hfi_intra_period*
  store %struct.hfi_intra_period* %930, %struct.hfi_intra_period** %73, align 8
  %931 = load i8*, i8** %10, align 8
  %932 = bitcast i8* %931 to %struct.hfi_intra_period*
  store %struct.hfi_intra_period* %932, %struct.hfi_intra_period** %74, align 8
  %933 = load %struct.hfi_intra_period*, %struct.hfi_intra_period** %73, align 8
  %934 = getelementptr inbounds %struct.hfi_intra_period, %struct.hfi_intra_period* %933, i32 0, i32 1
  %935 = load i32, i32* %934, align 4
  %936 = load %struct.hfi_intra_period*, %struct.hfi_intra_period** %74, align 8
  %937 = getelementptr inbounds %struct.hfi_intra_period, %struct.hfi_intra_period* %936, i32 0, i32 1
  store i32 %935, i32* %937, align 4
  %938 = load %struct.hfi_intra_period*, %struct.hfi_intra_period** %73, align 8
  %939 = getelementptr inbounds %struct.hfi_intra_period, %struct.hfi_intra_period* %938, i32 0, i32 0
  %940 = load i32, i32* %939, align 4
  %941 = load %struct.hfi_intra_period*, %struct.hfi_intra_period** %74, align 8
  %942 = getelementptr inbounds %struct.hfi_intra_period, %struct.hfi_intra_period* %941, i32 0, i32 0
  store i32 %940, i32* %942, align 4
  %943 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %944 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %943, i32 0, i32 2
  %945 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %944, i32 0, i32 0
  %946 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %945, i32 0, i32 0
  %947 = load i32, i32* %946, align 4
  %948 = sext i32 %947 to i64
  %949 = add i64 %948, 12
  %950 = trunc i64 %949 to i32
  store i32 %950, i32* %946, align 4
  br label %1620

951:                                              ; preds = %140
  %952 = load i8*, i8** %9, align 8
  %953 = bitcast i8* %952 to %struct.hfi_idr_period*
  store %struct.hfi_idr_period* %953, %struct.hfi_idr_period** %75, align 8
  %954 = load i8*, i8** %10, align 8
  %955 = bitcast i8* %954 to %struct.hfi_idr_period*
  store %struct.hfi_idr_period* %955, %struct.hfi_idr_period** %76, align 8
  %956 = load %struct.hfi_idr_period*, %struct.hfi_idr_period** %75, align 8
  %957 = getelementptr inbounds %struct.hfi_idr_period, %struct.hfi_idr_period* %956, i32 0, i32 0
  %958 = load i32, i32* %957, align 4
  %959 = load %struct.hfi_idr_period*, %struct.hfi_idr_period** %76, align 8
  %960 = getelementptr inbounds %struct.hfi_idr_period, %struct.hfi_idr_period* %959, i32 0, i32 0
  store i32 %958, i32* %960, align 4
  %961 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %962 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %961, i32 0, i32 2
  %963 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %962, i32 0, i32 0
  %964 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %963, i32 0, i32 0
  %965 = load i32, i32* %964, align 4
  %966 = sext i32 %965 to i64
  %967 = add i64 %966, 8
  %968 = trunc i64 %967 to i32
  store i32 %968, i32* %964, align 4
  br label %1620

969:                                              ; preds = %140
  %970 = load i8*, i8** %10, align 8
  %971 = bitcast i8* %970 to %struct.hfi_conceal_color*
  store %struct.hfi_conceal_color* %971, %struct.hfi_conceal_color** %77, align 8
  %972 = load i8*, i8** %9, align 8
  %973 = bitcast i8* %972 to i32*
  store i32* %973, i32** %78, align 8
  %974 = load i32*, i32** %78, align 8
  %975 = load i32, i32* %974, align 4
  %976 = load %struct.hfi_conceal_color*, %struct.hfi_conceal_color** %77, align 8
  %977 = getelementptr inbounds %struct.hfi_conceal_color, %struct.hfi_conceal_color* %976, i32 0, i32 0
  store i32 %975, i32* %977, align 4
  %978 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %979 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %978, i32 0, i32 2
  %980 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %979, i32 0, i32 0
  %981 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %980, i32 0, i32 0
  %982 = load i32, i32* %981, align 4
  %983 = sext i32 %982 to i64
  %984 = add i64 %983, 8
  %985 = trunc i64 %984 to i32
  store i32 %985, i32* %981, align 4
  br label %1620

986:                                              ; preds = %140
  %987 = load i8*, i8** %9, align 8
  %988 = bitcast i8* %987 to %struct.hfi_operations_type*
  store %struct.hfi_operations_type* %988, %struct.hfi_operations_type** %79, align 8
  %989 = load i8*, i8** %10, align 8
  %990 = bitcast i8* %989 to %struct.hfi_operations_type*
  store %struct.hfi_operations_type* %990, %struct.hfi_operations_type** %80, align 8
  %991 = load %struct.hfi_operations_type*, %struct.hfi_operations_type** %79, align 8
  %992 = getelementptr inbounds %struct.hfi_operations_type, %struct.hfi_operations_type* %991, i32 0, i32 1
  %993 = load i32, i32* %992, align 4
  switch i32 %993, label %995 [
    i32 128, label %994
    i32 129, label %994
    i32 131, label %994
    i32 130, label %994
  ]

994:                                              ; preds = %986, %986, %986, %986
  br label %998

995:                                              ; preds = %986
  %996 = load i32, i32* @EINVAL, align 4
  %997 = sub nsw i32 0, %996
  store i32 %997, i32* %11, align 4
  br label %998

998:                                              ; preds = %995, %994
  %999 = load %struct.hfi_operations_type*, %struct.hfi_operations_type** %79, align 8
  %1000 = getelementptr inbounds %struct.hfi_operations_type, %struct.hfi_operations_type* %999, i32 0, i32 0
  %1001 = load i32, i32* %1000, align 4
  switch i32 %1001, label %1003 [
    i32 240, label %1002
    i32 241, label %1002
    i32 239, label %1002
  ]

1002:                                             ; preds = %998, %998, %998
  br label %1006

1003:                                             ; preds = %998
  %1004 = load i32, i32* @EINVAL, align 4
  %1005 = sub nsw i32 0, %1004
  store i32 %1005, i32* %11, align 4
  br label %1006

1006:                                             ; preds = %1003, %1002
  %1007 = load %struct.hfi_operations_type*, %struct.hfi_operations_type** %79, align 8
  %1008 = getelementptr inbounds %struct.hfi_operations_type, %struct.hfi_operations_type* %1007, i32 0, i32 1
  %1009 = load i32, i32* %1008, align 4
  %1010 = load %struct.hfi_operations_type*, %struct.hfi_operations_type** %80, align 8
  %1011 = getelementptr inbounds %struct.hfi_operations_type, %struct.hfi_operations_type* %1010, i32 0, i32 1
  store i32 %1009, i32* %1011, align 4
  %1012 = load %struct.hfi_operations_type*, %struct.hfi_operations_type** %79, align 8
  %1013 = getelementptr inbounds %struct.hfi_operations_type, %struct.hfi_operations_type* %1012, i32 0, i32 0
  %1014 = load i32, i32* %1013, align 4
  %1015 = load %struct.hfi_operations_type*, %struct.hfi_operations_type** %80, align 8
  %1016 = getelementptr inbounds %struct.hfi_operations_type, %struct.hfi_operations_type* %1015, i32 0, i32 0
  store i32 %1014, i32* %1016, align 4
  %1017 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %1018 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %1017, i32 0, i32 2
  %1019 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1018, i32 0, i32 0
  %1020 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1019, i32 0, i32 0
  %1021 = load i32, i32* %1020, align 4
  %1022 = sext i32 %1021 to i64
  %1023 = add i64 %1022, 12
  %1024 = trunc i64 %1023 to i32
  store i32 %1024, i32* %1020, align 4
  br label %1620

1025:                                             ; preds = %140
  %1026 = load i8*, i8** %9, align 8
  %1027 = bitcast i8* %1026 to %struct.hfi_intra_refresh*
  store %struct.hfi_intra_refresh* %1027, %struct.hfi_intra_refresh** %81, align 8
  %1028 = load i8*, i8** %10, align 8
  %1029 = bitcast i8* %1028 to %struct.hfi_intra_refresh*
  store %struct.hfi_intra_refresh* %1029, %struct.hfi_intra_refresh** %82, align 8
  %1030 = load %struct.hfi_intra_refresh*, %struct.hfi_intra_refresh** %81, align 8
  %1031 = getelementptr inbounds %struct.hfi_intra_refresh, %struct.hfi_intra_refresh* %1030, i32 0, i32 3
  %1032 = load i32, i32* %1031, align 4
  switch i32 %1032, label %1034 [
    i32 232, label %1033
    i32 235, label %1033
    i32 234, label %1033
    i32 233, label %1033
    i32 231, label %1033
  ]

1033:                                             ; preds = %1025, %1025, %1025, %1025, %1025
  br label %1037

1034:                                             ; preds = %1025
  %1035 = load i32, i32* @EINVAL, align 4
  %1036 = sub nsw i32 0, %1035
  store i32 %1036, i32* %11, align 4
  br label %1037

1037:                                             ; preds = %1034, %1033
  %1038 = load %struct.hfi_intra_refresh*, %struct.hfi_intra_refresh** %81, align 8
  %1039 = getelementptr inbounds %struct.hfi_intra_refresh, %struct.hfi_intra_refresh* %1038, i32 0, i32 3
  %1040 = load i32, i32* %1039, align 4
  %1041 = load %struct.hfi_intra_refresh*, %struct.hfi_intra_refresh** %82, align 8
  %1042 = getelementptr inbounds %struct.hfi_intra_refresh, %struct.hfi_intra_refresh* %1041, i32 0, i32 3
  store i32 %1040, i32* %1042, align 4
  %1043 = load %struct.hfi_intra_refresh*, %struct.hfi_intra_refresh** %81, align 8
  %1044 = getelementptr inbounds %struct.hfi_intra_refresh, %struct.hfi_intra_refresh* %1043, i32 0, i32 2
  %1045 = load i32, i32* %1044, align 4
  %1046 = load %struct.hfi_intra_refresh*, %struct.hfi_intra_refresh** %82, align 8
  %1047 = getelementptr inbounds %struct.hfi_intra_refresh, %struct.hfi_intra_refresh* %1046, i32 0, i32 2
  store i32 %1045, i32* %1047, align 4
  %1048 = load %struct.hfi_intra_refresh*, %struct.hfi_intra_refresh** %81, align 8
  %1049 = getelementptr inbounds %struct.hfi_intra_refresh, %struct.hfi_intra_refresh* %1048, i32 0, i32 1
  %1050 = load i32, i32* %1049, align 4
  %1051 = load %struct.hfi_intra_refresh*, %struct.hfi_intra_refresh** %82, align 8
  %1052 = getelementptr inbounds %struct.hfi_intra_refresh, %struct.hfi_intra_refresh* %1051, i32 0, i32 1
  store i32 %1050, i32* %1052, align 4
  %1053 = load %struct.hfi_intra_refresh*, %struct.hfi_intra_refresh** %81, align 8
  %1054 = getelementptr inbounds %struct.hfi_intra_refresh, %struct.hfi_intra_refresh* %1053, i32 0, i32 0
  %1055 = load i32, i32* %1054, align 4
  %1056 = load %struct.hfi_intra_refresh*, %struct.hfi_intra_refresh** %82, align 8
  %1057 = getelementptr inbounds %struct.hfi_intra_refresh, %struct.hfi_intra_refresh* %1056, i32 0, i32 0
  store i32 %1055, i32* %1057, align 4
  %1058 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %1059 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %1058, i32 0, i32 2
  %1060 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1059, i32 0, i32 0
  %1061 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1060, i32 0, i32 0
  %1062 = load i32, i32* %1061, align 4
  %1063 = sext i32 %1062 to i64
  %1064 = add i64 %1063, 20
  %1065 = trunc i64 %1064 to i32
  store i32 %1065, i32* %1061, align 4
  br label %1620

1066:                                             ; preds = %140
  %1067 = load i8*, i8** %9, align 8
  %1068 = bitcast i8* %1067 to %struct.hfi_multi_slice_control*
  store %struct.hfi_multi_slice_control* %1068, %struct.hfi_multi_slice_control** %83, align 8
  %1069 = load i8*, i8** %10, align 8
  %1070 = bitcast i8* %1069 to %struct.hfi_multi_slice_control*
  store %struct.hfi_multi_slice_control* %1070, %struct.hfi_multi_slice_control** %84, align 8
  %1071 = load %struct.hfi_multi_slice_control*, %struct.hfi_multi_slice_control** %83, align 8
  %1072 = getelementptr inbounds %struct.hfi_multi_slice_control, %struct.hfi_multi_slice_control* %1071, i32 0, i32 1
  %1073 = load i32, i32* %1072, align 4
  switch i32 %1073, label %1075 [
    i32 224, label %1074
    i32 225, label %1074
    i32 226, label %1074
    i32 227, label %1074
  ]

1074:                                             ; preds = %1066, %1066, %1066, %1066
  br label %1078

1075:                                             ; preds = %1066
  %1076 = load i32, i32* @EINVAL, align 4
  %1077 = sub nsw i32 0, %1076
  store i32 %1077, i32* %11, align 4
  br label %1078

1078:                                             ; preds = %1075, %1074
  %1079 = load %struct.hfi_multi_slice_control*, %struct.hfi_multi_slice_control** %83, align 8
  %1080 = getelementptr inbounds %struct.hfi_multi_slice_control, %struct.hfi_multi_slice_control* %1079, i32 0, i32 1
  %1081 = load i32, i32* %1080, align 4
  %1082 = load %struct.hfi_multi_slice_control*, %struct.hfi_multi_slice_control** %84, align 8
  %1083 = getelementptr inbounds %struct.hfi_multi_slice_control, %struct.hfi_multi_slice_control* %1082, i32 0, i32 1
  store i32 %1081, i32* %1083, align 4
  %1084 = load %struct.hfi_multi_slice_control*, %struct.hfi_multi_slice_control** %83, align 8
  %1085 = getelementptr inbounds %struct.hfi_multi_slice_control, %struct.hfi_multi_slice_control* %1084, i32 0, i32 0
  %1086 = load i32, i32* %1085, align 4
  %1087 = load %struct.hfi_multi_slice_control*, %struct.hfi_multi_slice_control** %84, align 8
  %1088 = getelementptr inbounds %struct.hfi_multi_slice_control, %struct.hfi_multi_slice_control* %1087, i32 0, i32 0
  store i32 %1086, i32* %1088, align 4
  %1089 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %1090 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %1089, i32 0, i32 2
  %1091 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1090, i32 0, i32 0
  %1092 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1091, i32 0, i32 0
  %1093 = load i32, i32* %1092, align 4
  %1094 = sext i32 %1093 to i64
  %1095 = add i64 %1094, 12
  %1096 = trunc i64 %1095 to i32
  store i32 %1096, i32* %1092, align 4
  br label %1620

1097:                                             ; preds = %140
  %1098 = load i8*, i8** %9, align 8
  %1099 = bitcast i8* %1098 to %struct.hfi_enable*
  store %struct.hfi_enable* %1099, %struct.hfi_enable** %85, align 8
  %1100 = load i8*, i8** %10, align 8
  %1101 = bitcast i8* %1100 to %struct.hfi_enable*
  store %struct.hfi_enable* %1101, %struct.hfi_enable** %86, align 8
  %1102 = load %struct.hfi_enable*, %struct.hfi_enable** %85, align 8
  %1103 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %1102, i32 0, i32 0
  %1104 = load i32, i32* %1103, align 4
  %1105 = load %struct.hfi_enable*, %struct.hfi_enable** %86, align 8
  %1106 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %1105, i32 0, i32 0
  store i32 %1104, i32* %1106, align 4
  %1107 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %1108 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %1107, i32 0, i32 2
  %1109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1108, i32 0, i32 0
  %1110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1109, i32 0, i32 0
  %1111 = load i32, i32* %1110, align 4
  %1112 = sext i32 %1111 to i64
  %1113 = add i64 %1112, 8
  %1114 = trunc i64 %1113 to i32
  store i32 %1114, i32* %1110, align 4
  br label %1620

1115:                                             ; preds = %140
  %1116 = load i8*, i8** %9, align 8
  %1117 = bitcast i8* %1116 to %struct.hfi_h264_vui_timing_info*
  store %struct.hfi_h264_vui_timing_info* %1117, %struct.hfi_h264_vui_timing_info** %87, align 8
  %1118 = load i8*, i8** %10, align 8
  %1119 = bitcast i8* %1118 to %struct.hfi_h264_vui_timing_info*
  store %struct.hfi_h264_vui_timing_info* %1119, %struct.hfi_h264_vui_timing_info** %88, align 8
  %1120 = load %struct.hfi_h264_vui_timing_info*, %struct.hfi_h264_vui_timing_info** %87, align 8
  %1121 = getelementptr inbounds %struct.hfi_h264_vui_timing_info, %struct.hfi_h264_vui_timing_info* %1120, i32 0, i32 2
  %1122 = load i32, i32* %1121, align 4
  %1123 = load %struct.hfi_h264_vui_timing_info*, %struct.hfi_h264_vui_timing_info** %88, align 8
  %1124 = getelementptr inbounds %struct.hfi_h264_vui_timing_info, %struct.hfi_h264_vui_timing_info* %1123, i32 0, i32 2
  store i32 %1122, i32* %1124, align 4
  %1125 = load %struct.hfi_h264_vui_timing_info*, %struct.hfi_h264_vui_timing_info** %87, align 8
  %1126 = getelementptr inbounds %struct.hfi_h264_vui_timing_info, %struct.hfi_h264_vui_timing_info* %1125, i32 0, i32 1
  %1127 = load i32, i32* %1126, align 4
  %1128 = load %struct.hfi_h264_vui_timing_info*, %struct.hfi_h264_vui_timing_info** %88, align 8
  %1129 = getelementptr inbounds %struct.hfi_h264_vui_timing_info, %struct.hfi_h264_vui_timing_info* %1128, i32 0, i32 1
  store i32 %1127, i32* %1129, align 4
  %1130 = load %struct.hfi_h264_vui_timing_info*, %struct.hfi_h264_vui_timing_info** %87, align 8
  %1131 = getelementptr inbounds %struct.hfi_h264_vui_timing_info, %struct.hfi_h264_vui_timing_info* %1130, i32 0, i32 0
  %1132 = load i32, i32* %1131, align 4
  %1133 = load %struct.hfi_h264_vui_timing_info*, %struct.hfi_h264_vui_timing_info** %88, align 8
  %1134 = getelementptr inbounds %struct.hfi_h264_vui_timing_info, %struct.hfi_h264_vui_timing_info* %1133, i32 0, i32 0
  store i32 %1132, i32* %1134, align 4
  %1135 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %1136 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %1135, i32 0, i32 2
  %1137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1136, i32 0, i32 0
  %1138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1137, i32 0, i32 0
  %1139 = load i32, i32* %1138, align 4
  %1140 = sext i32 %1139 to i64
  %1141 = add i64 %1140, 16
  %1142 = trunc i64 %1141 to i32
  store i32 %1142, i32* %1138, align 4
  br label %1620

1143:                                             ; preds = %140
  %1144 = load i8*, i8** %9, align 8
  %1145 = bitcast i8* %1144 to %struct.hfi_enable*
  store %struct.hfi_enable* %1145, %struct.hfi_enable** %89, align 8
  %1146 = load i8*, i8** %10, align 8
  %1147 = bitcast i8* %1146 to %struct.hfi_enable*
  store %struct.hfi_enable* %1147, %struct.hfi_enable** %90, align 8
  %1148 = load %struct.hfi_enable*, %struct.hfi_enable** %89, align 8
  %1149 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %1148, i32 0, i32 0
  %1150 = load i32, i32* %1149, align 4
  %1151 = load %struct.hfi_enable*, %struct.hfi_enable** %90, align 8
  %1152 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %1151, i32 0, i32 0
  store i32 %1150, i32* %1152, align 4
  %1153 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %1154 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %1153, i32 0, i32 2
  %1155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1154, i32 0, i32 0
  %1156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1155, i32 0, i32 0
  %1157 = load i32, i32* %1156, align 4
  %1158 = sext i32 %1157 to i64
  %1159 = add i64 %1158, 8
  %1160 = trunc i64 %1159 to i32
  store i32 %1160, i32* %1156, align 4
  br label %1620

1161:                                             ; preds = %140
  %1162 = load i8*, i8** %9, align 8
  %1163 = bitcast i8* %1162 to %struct.hfi_enable*
  store %struct.hfi_enable* %1163, %struct.hfi_enable** %91, align 8
  %1164 = load i8*, i8** %10, align 8
  %1165 = bitcast i8* %1164 to %struct.hfi_enable*
  store %struct.hfi_enable* %1165, %struct.hfi_enable** %92, align 8
  %1166 = load %struct.hfi_enable*, %struct.hfi_enable** %91, align 8
  %1167 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %1166, i32 0, i32 0
  %1168 = load i32, i32* %1167, align 4
  %1169 = load %struct.hfi_enable*, %struct.hfi_enable** %92, align 8
  %1170 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %1169, i32 0, i32 0
  store i32 %1168, i32* %1170, align 4
  %1171 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %1172 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %1171, i32 0, i32 2
  %1173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1172, i32 0, i32 0
  %1174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1173, i32 0, i32 0
  %1175 = load i32, i32* %1174, align 4
  %1176 = sext i32 %1175 to i64
  %1177 = add i64 %1176, 8
  %1178 = trunc i64 %1177 to i32
  store i32 %1178, i32* %1174, align 4
  br label %1620

1179:                                             ; preds = %140
  %1180 = load i8*, i8** %9, align 8
  %1181 = bitcast i8* %1180 to %struct.hfi_buffer_alloc_mode*
  store %struct.hfi_buffer_alloc_mode* %1181, %struct.hfi_buffer_alloc_mode** %93, align 8
  %1182 = load i8*, i8** %10, align 8
  %1183 = bitcast i8* %1182 to %struct.hfi_buffer_alloc_mode*
  store %struct.hfi_buffer_alloc_mode* %1183, %struct.hfi_buffer_alloc_mode** %94, align 8
  %1184 = load %struct.hfi_buffer_alloc_mode*, %struct.hfi_buffer_alloc_mode** %93, align 8
  %1185 = getelementptr inbounds %struct.hfi_buffer_alloc_mode, %struct.hfi_buffer_alloc_mode* %1184, i32 0, i32 1
  %1186 = load i32, i32* %1185, align 4
  %1187 = load %struct.hfi_buffer_alloc_mode*, %struct.hfi_buffer_alloc_mode** %94, align 8
  %1188 = getelementptr inbounds %struct.hfi_buffer_alloc_mode, %struct.hfi_buffer_alloc_mode* %1187, i32 0, i32 1
  store i32 %1186, i32* %1188, align 4
  %1189 = load %struct.hfi_buffer_alloc_mode*, %struct.hfi_buffer_alloc_mode** %93, align 8
  %1190 = getelementptr inbounds %struct.hfi_buffer_alloc_mode, %struct.hfi_buffer_alloc_mode* %1189, i32 0, i32 0
  %1191 = load i32, i32* %1190, align 4
  %1192 = load %struct.hfi_buffer_alloc_mode*, %struct.hfi_buffer_alloc_mode** %94, align 8
  %1193 = getelementptr inbounds %struct.hfi_buffer_alloc_mode, %struct.hfi_buffer_alloc_mode* %1192, i32 0, i32 0
  store i32 %1191, i32* %1193, align 4
  %1194 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %1195 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %1194, i32 0, i32 2
  %1196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1195, i32 0, i32 0
  %1197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1196, i32 0, i32 0
  %1198 = load i32, i32* %1197, align 4
  %1199 = sext i32 %1198 to i64
  %1200 = add i64 %1199, 12
  %1201 = trunc i64 %1200 to i32
  store i32 %1201, i32* %1197, align 4
  br label %1620

1202:                                             ; preds = %140
  %1203 = load i8*, i8** %9, align 8
  %1204 = bitcast i8* %1203 to %struct.hfi_enable*
  store %struct.hfi_enable* %1204, %struct.hfi_enable** %95, align 8
  %1205 = load i8*, i8** %10, align 8
  %1206 = bitcast i8* %1205 to %struct.hfi_enable*
  store %struct.hfi_enable* %1206, %struct.hfi_enable** %96, align 8
  %1207 = load %struct.hfi_enable*, %struct.hfi_enable** %95, align 8
  %1208 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %1207, i32 0, i32 0
  %1209 = load i32, i32* %1208, align 4
  %1210 = load %struct.hfi_enable*, %struct.hfi_enable** %96, align 8
  %1211 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %1210, i32 0, i32 0
  store i32 %1209, i32* %1211, align 4
  %1212 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %1213 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %1212, i32 0, i32 2
  %1214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1213, i32 0, i32 0
  %1215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1214, i32 0, i32 0
  %1216 = load i32, i32* %1215, align 4
  %1217 = sext i32 %1216 to i64
  %1218 = add i64 %1217, 8
  %1219 = trunc i64 %1218 to i32
  store i32 %1219, i32* %1215, align 4
  br label %1620

1220:                                             ; preds = %140
  %1221 = load i8*, i8** %9, align 8
  %1222 = bitcast i8* %1221 to %struct.hfi_enable*
  store %struct.hfi_enable* %1222, %struct.hfi_enable** %97, align 8
  %1223 = load i8*, i8** %10, align 8
  %1224 = bitcast i8* %1223 to %struct.hfi_enable*
  store %struct.hfi_enable* %1224, %struct.hfi_enable** %98, align 8
  %1225 = load %struct.hfi_enable*, %struct.hfi_enable** %97, align 8
  %1226 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %1225, i32 0, i32 0
  %1227 = load i32, i32* %1226, align 4
  %1228 = load %struct.hfi_enable*, %struct.hfi_enable** %98, align 8
  %1229 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %1228, i32 0, i32 0
  store i32 %1227, i32* %1229, align 4
  %1230 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %1231 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %1230, i32 0, i32 2
  %1232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1231, i32 0, i32 0
  %1233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1232, i32 0, i32 0
  %1234 = load i32, i32* %1233, align 4
  %1235 = sext i32 %1234 to i64
  %1236 = add i64 %1235, 8
  %1237 = trunc i64 %1236 to i32
  store i32 %1237, i32* %1233, align 4
  br label %1620

1238:                                             ; preds = %140
  %1239 = load i8*, i8** %9, align 8
  %1240 = bitcast i8* %1239 to %struct.hfi_enable*
  store %struct.hfi_enable* %1240, %struct.hfi_enable** %99, align 8
  %1241 = load i8*, i8** %10, align 8
  %1242 = bitcast i8* %1241 to %struct.hfi_enable*
  store %struct.hfi_enable* %1242, %struct.hfi_enable** %100, align 8
  %1243 = load %struct.hfi_enable*, %struct.hfi_enable** %99, align 8
  %1244 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %1243, i32 0, i32 0
  %1245 = load i32, i32* %1244, align 4
  %1246 = load %struct.hfi_enable*, %struct.hfi_enable** %100, align 8
  %1247 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %1246, i32 0, i32 0
  store i32 %1245, i32* %1247, align 4
  %1248 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %1249 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %1248, i32 0, i32 2
  %1250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1249, i32 0, i32 0
  %1251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1250, i32 0, i32 0
  %1252 = load i32, i32* %1251, align 4
  %1253 = sext i32 %1252 to i64
  %1254 = add i64 %1253, 8
  %1255 = trunc i64 %1254 to i32
  store i32 %1255, i32* %1251, align 4
  br label %1620

1256:                                             ; preds = %140
  %1257 = load i8*, i8** %10, align 8
  %1258 = bitcast i8* %1257 to %struct.hfi_scs_threshold*
  store %struct.hfi_scs_threshold* %1258, %struct.hfi_scs_threshold** %101, align 8
  %1259 = load i8*, i8** %9, align 8
  %1260 = bitcast i8* %1259 to i32*
  store i32* %1260, i32** %102, align 8
  %1261 = load i32*, i32** %102, align 8
  %1262 = load i32, i32* %1261, align 4
  %1263 = load %struct.hfi_scs_threshold*, %struct.hfi_scs_threshold** %101, align 8
  %1264 = getelementptr inbounds %struct.hfi_scs_threshold, %struct.hfi_scs_threshold* %1263, i32 0, i32 0
  store i32 %1262, i32* %1264, align 4
  %1265 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %1266 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %1265, i32 0, i32 2
  %1267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1266, i32 0, i32 0
  %1268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1267, i32 0, i32 0
  %1269 = load i32, i32* %1268, align 4
  %1270 = sext i32 %1269 to i64
  %1271 = add i64 %1270, 8
  %1272 = trunc i64 %1271 to i32
  store i32 %1272, i32* %1268, align 4
  br label %1620

1273:                                             ; preds = %140
  %1274 = load i8*, i8** %9, align 8
  %1275 = bitcast i8* %1274 to %struct.hfi_mvc_buffer_layout_descp_type*
  store %struct.hfi_mvc_buffer_layout_descp_type* %1275, %struct.hfi_mvc_buffer_layout_descp_type** %103, align 8
  %1276 = load i8*, i8** %10, align 8
  %1277 = bitcast i8* %1276 to %struct.hfi_mvc_buffer_layout_descp_type*
  store %struct.hfi_mvc_buffer_layout_descp_type* %1277, %struct.hfi_mvc_buffer_layout_descp_type** %104, align 8
  %1278 = load %struct.hfi_mvc_buffer_layout_descp_type*, %struct.hfi_mvc_buffer_layout_descp_type** %103, align 8
  %1279 = getelementptr inbounds %struct.hfi_mvc_buffer_layout_descp_type, %struct.hfi_mvc_buffer_layout_descp_type* %1278, i32 0, i32 2
  %1280 = load i32, i32* %1279, align 4
  switch i32 %1280, label %1282 [
    i32 222, label %1281
    i32 223, label %1281
  ]

1281:                                             ; preds = %1273, %1273
  br label %1285

1282:                                             ; preds = %1273
  %1283 = load i32, i32* @EINVAL, align 4
  %1284 = sub nsw i32 0, %1283
  store i32 %1284, i32* %11, align 4
  br label %1285

1285:                                             ; preds = %1282, %1281
  %1286 = load %struct.hfi_mvc_buffer_layout_descp_type*, %struct.hfi_mvc_buffer_layout_descp_type** %103, align 8
  %1287 = getelementptr inbounds %struct.hfi_mvc_buffer_layout_descp_type, %struct.hfi_mvc_buffer_layout_descp_type* %1286, i32 0, i32 2
  %1288 = load i32, i32* %1287, align 4
  %1289 = load %struct.hfi_mvc_buffer_layout_descp_type*, %struct.hfi_mvc_buffer_layout_descp_type** %104, align 8
  %1290 = getelementptr inbounds %struct.hfi_mvc_buffer_layout_descp_type, %struct.hfi_mvc_buffer_layout_descp_type* %1289, i32 0, i32 2
  store i32 %1288, i32* %1290, align 4
  %1291 = load %struct.hfi_mvc_buffer_layout_descp_type*, %struct.hfi_mvc_buffer_layout_descp_type** %103, align 8
  %1292 = getelementptr inbounds %struct.hfi_mvc_buffer_layout_descp_type, %struct.hfi_mvc_buffer_layout_descp_type* %1291, i32 0, i32 1
  %1293 = load i32, i32* %1292, align 4
  %1294 = load %struct.hfi_mvc_buffer_layout_descp_type*, %struct.hfi_mvc_buffer_layout_descp_type** %104, align 8
  %1295 = getelementptr inbounds %struct.hfi_mvc_buffer_layout_descp_type, %struct.hfi_mvc_buffer_layout_descp_type* %1294, i32 0, i32 1
  store i32 %1293, i32* %1295, align 4
  %1296 = load %struct.hfi_mvc_buffer_layout_descp_type*, %struct.hfi_mvc_buffer_layout_descp_type** %103, align 8
  %1297 = getelementptr inbounds %struct.hfi_mvc_buffer_layout_descp_type, %struct.hfi_mvc_buffer_layout_descp_type* %1296, i32 0, i32 0
  %1298 = load i32, i32* %1297, align 4
  %1299 = load %struct.hfi_mvc_buffer_layout_descp_type*, %struct.hfi_mvc_buffer_layout_descp_type** %104, align 8
  %1300 = getelementptr inbounds %struct.hfi_mvc_buffer_layout_descp_type, %struct.hfi_mvc_buffer_layout_descp_type* %1299, i32 0, i32 0
  store i32 %1298, i32* %1300, align 4
  %1301 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %1302 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %1301, i32 0, i32 2
  %1303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1302, i32 0, i32 0
  %1304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1303, i32 0, i32 0
  %1305 = load i32, i32* %1304, align 4
  %1306 = sext i32 %1305 to i64
  %1307 = add i64 %1306, 16
  %1308 = trunc i64 %1307 to i32
  store i32 %1308, i32* %1304, align 4
  br label %1620

1309:                                             ; preds = %140
  %1310 = load i8*, i8** %9, align 8
  %1311 = bitcast i8* %1310 to %struct.hfi_ltr_mode*
  store %struct.hfi_ltr_mode* %1311, %struct.hfi_ltr_mode** %105, align 8
  %1312 = load i8*, i8** %10, align 8
  %1313 = bitcast i8* %1312 to %struct.hfi_ltr_mode*
  store %struct.hfi_ltr_mode* %1313, %struct.hfi_ltr_mode** %106, align 8
  %1314 = load %struct.hfi_ltr_mode*, %struct.hfi_ltr_mode** %105, align 8
  %1315 = getelementptr inbounds %struct.hfi_ltr_mode, %struct.hfi_ltr_mode* %1314, i32 0, i32 2
  %1316 = load i32, i32* %1315, align 4
  switch i32 %1316, label %1318 [
    i32 230, label %1317
    i32 229, label %1317
    i32 228, label %1317
  ]

1317:                                             ; preds = %1309, %1309, %1309
  br label %1321

1318:                                             ; preds = %1309
  %1319 = load i32, i32* @EINVAL, align 4
  %1320 = sub nsw i32 0, %1319
  store i32 %1320, i32* %11, align 4
  br label %1321

1321:                                             ; preds = %1318, %1317
  %1322 = load %struct.hfi_ltr_mode*, %struct.hfi_ltr_mode** %105, align 8
  %1323 = getelementptr inbounds %struct.hfi_ltr_mode, %struct.hfi_ltr_mode* %1322, i32 0, i32 2
  %1324 = load i32, i32* %1323, align 4
  %1325 = load %struct.hfi_ltr_mode*, %struct.hfi_ltr_mode** %106, align 8
  %1326 = getelementptr inbounds %struct.hfi_ltr_mode, %struct.hfi_ltr_mode* %1325, i32 0, i32 2
  store i32 %1324, i32* %1326, align 4
  %1327 = load %struct.hfi_ltr_mode*, %struct.hfi_ltr_mode** %105, align 8
  %1328 = getelementptr inbounds %struct.hfi_ltr_mode, %struct.hfi_ltr_mode* %1327, i32 0, i32 1
  %1329 = load i32, i32* %1328, align 4
  %1330 = load %struct.hfi_ltr_mode*, %struct.hfi_ltr_mode** %106, align 8
  %1331 = getelementptr inbounds %struct.hfi_ltr_mode, %struct.hfi_ltr_mode* %1330, i32 0, i32 1
  store i32 %1329, i32* %1331, align 4
  %1332 = load %struct.hfi_ltr_mode*, %struct.hfi_ltr_mode** %105, align 8
  %1333 = getelementptr inbounds %struct.hfi_ltr_mode, %struct.hfi_ltr_mode* %1332, i32 0, i32 0
  %1334 = load i32, i32* %1333, align 4
  %1335 = load %struct.hfi_ltr_mode*, %struct.hfi_ltr_mode** %106, align 8
  %1336 = getelementptr inbounds %struct.hfi_ltr_mode, %struct.hfi_ltr_mode* %1335, i32 0, i32 0
  store i32 %1334, i32* %1336, align 4
  %1337 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %1338 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %1337, i32 0, i32 2
  %1339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1338, i32 0, i32 0
  %1340 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1339, i32 0, i32 0
  %1341 = load i32, i32* %1340, align 4
  %1342 = sext i32 %1341 to i64
  %1343 = add i64 %1342, 16
  %1344 = trunc i64 %1343 to i32
  store i32 %1344, i32* %1340, align 4
  br label %1620

1345:                                             ; preds = %140
  %1346 = load i8*, i8** %9, align 8
  %1347 = bitcast i8* %1346 to %struct.hfi_ltr_use*
  store %struct.hfi_ltr_use* %1347, %struct.hfi_ltr_use** %107, align 8
  %1348 = load i8*, i8** %10, align 8
  %1349 = bitcast i8* %1348 to %struct.hfi_ltr_use*
  store %struct.hfi_ltr_use* %1349, %struct.hfi_ltr_use** %108, align 8
  %1350 = load %struct.hfi_ltr_use*, %struct.hfi_ltr_use** %107, align 8
  %1351 = getelementptr inbounds %struct.hfi_ltr_use, %struct.hfi_ltr_use* %1350, i32 0, i32 2
  %1352 = load i32, i32* %1351, align 4
  %1353 = load %struct.hfi_ltr_use*, %struct.hfi_ltr_use** %108, align 8
  %1354 = getelementptr inbounds %struct.hfi_ltr_use, %struct.hfi_ltr_use* %1353, i32 0, i32 2
  store i32 %1352, i32* %1354, align 4
  %1355 = load %struct.hfi_ltr_use*, %struct.hfi_ltr_use** %107, align 8
  %1356 = getelementptr inbounds %struct.hfi_ltr_use, %struct.hfi_ltr_use* %1355, i32 0, i32 1
  %1357 = load i32, i32* %1356, align 4
  %1358 = load %struct.hfi_ltr_use*, %struct.hfi_ltr_use** %108, align 8
  %1359 = getelementptr inbounds %struct.hfi_ltr_use, %struct.hfi_ltr_use* %1358, i32 0, i32 1
  store i32 %1357, i32* %1359, align 4
  %1360 = load %struct.hfi_ltr_use*, %struct.hfi_ltr_use** %107, align 8
  %1361 = getelementptr inbounds %struct.hfi_ltr_use, %struct.hfi_ltr_use* %1360, i32 0, i32 0
  %1362 = load i32, i32* %1361, align 4
  %1363 = load %struct.hfi_ltr_use*, %struct.hfi_ltr_use** %108, align 8
  %1364 = getelementptr inbounds %struct.hfi_ltr_use, %struct.hfi_ltr_use* %1363, i32 0, i32 0
  store i32 %1362, i32* %1364, align 4
  %1365 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %1366 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %1365, i32 0, i32 2
  %1367 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1366, i32 0, i32 0
  %1368 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1367, i32 0, i32 0
  %1369 = load i32, i32* %1368, align 4
  %1370 = sext i32 %1369 to i64
  %1371 = add i64 %1370, 16
  %1372 = trunc i64 %1371 to i32
  store i32 %1372, i32* %1368, align 4
  br label %1620

1373:                                             ; preds = %140
  %1374 = load i8*, i8** %9, align 8
  %1375 = bitcast i8* %1374 to %struct.hfi_ltr_mark*
  store %struct.hfi_ltr_mark* %1375, %struct.hfi_ltr_mark** %109, align 8
  %1376 = load i8*, i8** %10, align 8
  %1377 = bitcast i8* %1376 to %struct.hfi_ltr_mark*
  store %struct.hfi_ltr_mark* %1377, %struct.hfi_ltr_mark** %110, align 8
  %1378 = load %struct.hfi_ltr_mark*, %struct.hfi_ltr_mark** %109, align 8
  %1379 = getelementptr inbounds %struct.hfi_ltr_mark, %struct.hfi_ltr_mark* %1378, i32 0, i32 0
  %1380 = load i32, i32* %1379, align 4
  %1381 = load %struct.hfi_ltr_mark*, %struct.hfi_ltr_mark** %110, align 8
  %1382 = getelementptr inbounds %struct.hfi_ltr_mark, %struct.hfi_ltr_mark* %1381, i32 0, i32 0
  store i32 %1380, i32* %1382, align 4
  %1383 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %1384 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %1383, i32 0, i32 2
  %1385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1384, i32 0, i32 0
  %1386 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1385, i32 0, i32 0
  %1387 = load i32, i32* %1386, align 4
  %1388 = sext i32 %1387 to i64
  %1389 = add i64 %1388, 8
  %1390 = trunc i64 %1389 to i32
  store i32 %1390, i32* %1386, align 4
  br label %1620

1391:                                             ; preds = %140
  %1392 = load i8*, i8** %9, align 8
  %1393 = bitcast i8* %1392 to i32*
  store i32* %1393, i32** %111, align 8
  %1394 = load i32*, i32** %111, align 8
  %1395 = load i32, i32* %1394, align 4
  %1396 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %1397 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %1396, i32 0, i32 0
  %1398 = load i32*, i32** %1397, align 8
  %1399 = getelementptr inbounds i32, i32* %1398, i64 1
  store i32 %1395, i32* %1399, align 4
  %1400 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %1401 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %1400, i32 0, i32 2
  %1402 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1401, i32 0, i32 0
  %1403 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1402, i32 0, i32 0
  %1404 = load i32, i32* %1403, align 4
  %1405 = sext i32 %1404 to i64
  %1406 = add i64 %1405, 8
  %1407 = trunc i64 %1406 to i32
  store i32 %1407, i32* %1403, align 4
  br label %1620

1408:                                             ; preds = %140
  %1409 = load i8*, i8** %9, align 8
  %1410 = bitcast i8* %1409 to i32*
  store i32* %1410, i32** %112, align 8
  %1411 = load i32*, i32** %112, align 8
  %1412 = load i32, i32* %1411, align 4
  %1413 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %1414 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %1413, i32 0, i32 0
  %1415 = load i32*, i32** %1414, align 8
  %1416 = getelementptr inbounds i32, i32* %1415, i64 1
  store i32 %1412, i32* %1416, align 4
  %1417 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %1418 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %1417, i32 0, i32 2
  %1419 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1418, i32 0, i32 0
  %1420 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1419, i32 0, i32 0
  %1421 = load i32, i32* %1420, align 4
  %1422 = sext i32 %1421 to i64
  %1423 = add i64 %1422, 8
  %1424 = trunc i64 %1423 to i32
  store i32 %1424, i32* %1420, align 4
  br label %1620

1425:                                             ; preds = %140
  %1426 = load i8*, i8** %9, align 8
  %1427 = bitcast i8* %1426 to %struct.hfi_enable*
  store %struct.hfi_enable* %1427, %struct.hfi_enable** %113, align 8
  %1428 = load i8*, i8** %10, align 8
  %1429 = bitcast i8* %1428 to %struct.hfi_enable*
  store %struct.hfi_enable* %1429, %struct.hfi_enable** %114, align 8
  %1430 = load %struct.hfi_enable*, %struct.hfi_enable** %113, align 8
  %1431 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %1430, i32 0, i32 0
  %1432 = load i32, i32* %1431, align 4
  %1433 = load %struct.hfi_enable*, %struct.hfi_enable** %114, align 8
  %1434 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %1433, i32 0, i32 0
  store i32 %1432, i32* %1434, align 4
  %1435 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %1436 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %1435, i32 0, i32 2
  %1437 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1436, i32 0, i32 0
  %1438 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1437, i32 0, i32 0
  %1439 = load i32, i32* %1438, align 4
  %1440 = sext i32 %1439 to i64
  %1441 = add i64 %1440, 8
  %1442 = trunc i64 %1441 to i32
  store i32 %1442, i32* %1438, align 4
  br label %1620

1443:                                             ; preds = %140
  %1444 = load i8*, i8** %9, align 8
  %1445 = bitcast i8* %1444 to %struct.hfi_initial_quantization*
  store %struct.hfi_initial_quantization* %1445, %struct.hfi_initial_quantization** %115, align 8
  %1446 = load i8*, i8** %10, align 8
  %1447 = bitcast i8* %1446 to %struct.hfi_initial_quantization*
  store %struct.hfi_initial_quantization* %1447, %struct.hfi_initial_quantization** %116, align 8
  %1448 = load %struct.hfi_initial_quantization*, %struct.hfi_initial_quantization** %115, align 8
  %1449 = getelementptr inbounds %struct.hfi_initial_quantization, %struct.hfi_initial_quantization* %1448, i32 0, i32 3
  %1450 = load i32, i32* %1449, align 4
  %1451 = load %struct.hfi_initial_quantization*, %struct.hfi_initial_quantization** %116, align 8
  %1452 = getelementptr inbounds %struct.hfi_initial_quantization, %struct.hfi_initial_quantization* %1451, i32 0, i32 3
  store i32 %1450, i32* %1452, align 4
  %1453 = load %struct.hfi_initial_quantization*, %struct.hfi_initial_quantization** %115, align 8
  %1454 = getelementptr inbounds %struct.hfi_initial_quantization, %struct.hfi_initial_quantization* %1453, i32 0, i32 2
  %1455 = load i32, i32* %1454, align 4
  %1456 = load %struct.hfi_initial_quantization*, %struct.hfi_initial_quantization** %116, align 8
  %1457 = getelementptr inbounds %struct.hfi_initial_quantization, %struct.hfi_initial_quantization* %1456, i32 0, i32 2
  store i32 %1455, i32* %1457, align 4
  %1458 = load %struct.hfi_initial_quantization*, %struct.hfi_initial_quantization** %115, align 8
  %1459 = getelementptr inbounds %struct.hfi_initial_quantization, %struct.hfi_initial_quantization* %1458, i32 0, i32 1
  %1460 = load i32, i32* %1459, align 4
  %1461 = load %struct.hfi_initial_quantization*, %struct.hfi_initial_quantization** %116, align 8
  %1462 = getelementptr inbounds %struct.hfi_initial_quantization, %struct.hfi_initial_quantization* %1461, i32 0, i32 1
  store i32 %1460, i32* %1462, align 4
  %1463 = load %struct.hfi_initial_quantization*, %struct.hfi_initial_quantization** %115, align 8
  %1464 = getelementptr inbounds %struct.hfi_initial_quantization, %struct.hfi_initial_quantization* %1463, i32 0, i32 0
  %1465 = load i32, i32* %1464, align 4
  %1466 = load %struct.hfi_initial_quantization*, %struct.hfi_initial_quantization** %116, align 8
  %1467 = getelementptr inbounds %struct.hfi_initial_quantization, %struct.hfi_initial_quantization* %1466, i32 0, i32 0
  store i32 %1465, i32* %1467, align 4
  %1468 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %1469 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %1468, i32 0, i32 2
  %1470 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1469, i32 0, i32 0
  %1471 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1470, i32 0, i32 0
  %1472 = load i32, i32* %1471, align 4
  %1473 = sext i32 %1472 to i64
  %1474 = add i64 %1473, 20
  %1475 = trunc i64 %1474 to i32
  store i32 %1475, i32* %1471, align 4
  br label %1620

1476:                                             ; preds = %140
  %1477 = load i8*, i8** %9, align 8
  %1478 = bitcast i8* %1477 to %struct.hfi_vpe_color_space_conversion*
  store %struct.hfi_vpe_color_space_conversion* %1478, %struct.hfi_vpe_color_space_conversion** %117, align 8
  %1479 = load i8*, i8** %10, align 8
  %1480 = bitcast i8* %1479 to %struct.hfi_vpe_color_space_conversion*
  store %struct.hfi_vpe_color_space_conversion* %1480, %struct.hfi_vpe_color_space_conversion** %118, align 8
  %1481 = load %struct.hfi_vpe_color_space_conversion*, %struct.hfi_vpe_color_space_conversion** %118, align 8
  %1482 = getelementptr inbounds %struct.hfi_vpe_color_space_conversion, %struct.hfi_vpe_color_space_conversion* %1481, i32 0, i32 2
  %1483 = load i32, i32* %1482, align 4
  %1484 = load %struct.hfi_vpe_color_space_conversion*, %struct.hfi_vpe_color_space_conversion** %117, align 8
  %1485 = getelementptr inbounds %struct.hfi_vpe_color_space_conversion, %struct.hfi_vpe_color_space_conversion* %1484, i32 0, i32 2
  %1486 = load i32, i32* %1485, align 4
  %1487 = call i32 @memcpy(i32 %1483, i32 %1486, i32 4)
  %1488 = load %struct.hfi_vpe_color_space_conversion*, %struct.hfi_vpe_color_space_conversion** %118, align 8
  %1489 = getelementptr inbounds %struct.hfi_vpe_color_space_conversion, %struct.hfi_vpe_color_space_conversion* %1488, i32 0, i32 1
  %1490 = load i32, i32* %1489, align 4
  %1491 = load %struct.hfi_vpe_color_space_conversion*, %struct.hfi_vpe_color_space_conversion** %117, align 8
  %1492 = getelementptr inbounds %struct.hfi_vpe_color_space_conversion, %struct.hfi_vpe_color_space_conversion* %1491, i32 0, i32 1
  %1493 = load i32, i32* %1492, align 4
  %1494 = call i32 @memcpy(i32 %1490, i32 %1493, i32 4)
  %1495 = load %struct.hfi_vpe_color_space_conversion*, %struct.hfi_vpe_color_space_conversion** %118, align 8
  %1496 = getelementptr inbounds %struct.hfi_vpe_color_space_conversion, %struct.hfi_vpe_color_space_conversion* %1495, i32 0, i32 0
  %1497 = load i32, i32* %1496, align 4
  %1498 = load %struct.hfi_vpe_color_space_conversion*, %struct.hfi_vpe_color_space_conversion** %117, align 8
  %1499 = getelementptr inbounds %struct.hfi_vpe_color_space_conversion, %struct.hfi_vpe_color_space_conversion* %1498, i32 0, i32 0
  %1500 = load i32, i32* %1499, align 4
  %1501 = call i32 @memcpy(i32 %1497, i32 %1500, i32 4)
  %1502 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %1503 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %1502, i32 0, i32 2
  %1504 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1503, i32 0, i32 0
  %1505 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1504, i32 0, i32 0
  %1506 = load i32, i32* %1505, align 4
  %1507 = sext i32 %1506 to i64
  %1508 = add i64 %1507, 16
  %1509 = trunc i64 %1508 to i32
  store i32 %1509, i32* %1505, align 4
  br label %1620

1510:                                             ; preds = %140
  %1511 = load i8*, i8** %9, align 8
  %1512 = bitcast i8* %1511 to %struct.hfi_enable*
  store %struct.hfi_enable* %1512, %struct.hfi_enable** %119, align 8
  %1513 = load i8*, i8** %10, align 8
  %1514 = bitcast i8* %1513 to %struct.hfi_enable*
  store %struct.hfi_enable* %1514, %struct.hfi_enable** %120, align 8
  %1515 = load %struct.hfi_enable*, %struct.hfi_enable** %119, align 8
  %1516 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %1515, i32 0, i32 0
  %1517 = load i32, i32* %1516, align 4
  %1518 = load %struct.hfi_enable*, %struct.hfi_enable** %120, align 8
  %1519 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %1518, i32 0, i32 0
  store i32 %1517, i32* %1519, align 4
  %1520 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %1521 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %1520, i32 0, i32 2
  %1522 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1521, i32 0, i32 0
  %1523 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1522, i32 0, i32 0
  %1524 = load i32, i32* %1523, align 4
  %1525 = sext i32 %1524 to i64
  %1526 = add i64 %1525, 8
  %1527 = trunc i64 %1526 to i32
  store i32 %1527, i32* %1523, align 4
  br label %1620

1528:                                             ; preds = %140
  %1529 = load i8*, i8** %9, align 8
  %1530 = bitcast i8* %1529 to %struct.hfi_enable*
  store %struct.hfi_enable* %1530, %struct.hfi_enable** %121, align 8
  %1531 = load i8*, i8** %10, align 8
  %1532 = bitcast i8* %1531 to %struct.hfi_enable*
  store %struct.hfi_enable* %1532, %struct.hfi_enable** %122, align 8
  %1533 = load %struct.hfi_enable*, %struct.hfi_enable** %121, align 8
  %1534 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %1533, i32 0, i32 0
  %1535 = load i32, i32* %1534, align 4
  %1536 = load %struct.hfi_enable*, %struct.hfi_enable** %122, align 8
  %1537 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %1536, i32 0, i32 0
  store i32 %1535, i32* %1537, align 4
  %1538 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %1539 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %1538, i32 0, i32 2
  %1540 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1539, i32 0, i32 0
  %1541 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1540, i32 0, i32 0
  %1542 = load i32, i32* %1541, align 4
  %1543 = sext i32 %1542 to i64
  %1544 = add i64 %1543, 8
  %1545 = trunc i64 %1544 to i32
  store i32 %1545, i32* %1541, align 4
  br label %1620

1546:                                             ; preds = %140
  %1547 = load i8*, i8** %9, align 8
  %1548 = bitcast i8* %1547 to i32*
  store i32* %1548, i32** %123, align 8
  %1549 = load i32*, i32** %123, align 8
  %1550 = load i32, i32* %1549, align 4
  %1551 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %1552 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %1551, i32 0, i32 0
  %1553 = load i32*, i32** %1552, align 8
  %1554 = getelementptr inbounds i32, i32* %1553, i64 1
  store i32 %1550, i32* %1554, align 4
  %1555 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %1556 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %1555, i32 0, i32 2
  %1557 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1556, i32 0, i32 0
  %1558 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1557, i32 0, i32 0
  %1559 = load i32, i32* %1558, align 4
  %1560 = sext i32 %1559 to i64
  %1561 = add i64 %1560, 8
  %1562 = trunc i64 %1561 to i32
  store i32 %1562, i32* %1558, align 4
  br label %1620

1563:                                             ; preds = %140
  %1564 = load i8*, i8** %9, align 8
  %1565 = bitcast i8* %1564 to i32*
  store i32* %1565, i32** %124, align 8
  %1566 = load i32*, i32** %124, align 8
  %1567 = load i32, i32* %1566, align 4
  %1568 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %1569 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %1568, i32 0, i32 0
  %1570 = load i32*, i32** %1569, align 8
  %1571 = getelementptr inbounds i32, i32* %1570, i64 1
  store i32 %1567, i32* %1571, align 4
  %1572 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %1573 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %1572, i32 0, i32 2
  %1574 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1573, i32 0, i32 0
  %1575 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1574, i32 0, i32 0
  %1576 = load i32, i32* %1575, align 4
  %1577 = sext i32 %1576 to i64
  %1578 = add i64 %1577, 8
  %1579 = trunc i64 %1578 to i32
  store i32 %1579, i32* %1575, align 4
  br label %1620

1580:                                             ; preds = %140
  %1581 = load i8*, i8** %9, align 8
  %1582 = bitcast i8* %1581 to %struct.hfi_enable*
  store %struct.hfi_enable* %1582, %struct.hfi_enable** %125, align 8
  %1583 = load i8*, i8** %10, align 8
  %1584 = bitcast i8* %1583 to %struct.hfi_enable*
  store %struct.hfi_enable* %1584, %struct.hfi_enable** %126, align 8
  %1585 = load %struct.hfi_enable*, %struct.hfi_enable** %125, align 8
  %1586 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %1585, i32 0, i32 0
  %1587 = load i32, i32* %1586, align 4
  %1588 = load %struct.hfi_enable*, %struct.hfi_enable** %126, align 8
  %1589 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %1588, i32 0, i32 0
  store i32 %1587, i32* %1589, align 4
  %1590 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %1591 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %1590, i32 0, i32 2
  %1592 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1591, i32 0, i32 0
  %1593 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1592, i32 0, i32 0
  %1594 = load i32, i32* %1593, align 4
  %1595 = sext i32 %1594 to i64
  %1596 = add i64 %1595, 8
  %1597 = trunc i64 %1596 to i32
  store i32 %1597, i32* %1593, align 4
  br label %1620

1598:                                             ; preds = %140
  %1599 = load i8*, i8** %9, align 8
  %1600 = bitcast i8* %1599 to %struct.hfi_hybrid_hierp*
  store %struct.hfi_hybrid_hierp* %1600, %struct.hfi_hybrid_hierp** %127, align 8
  %1601 = load i8*, i8** %10, align 8
  %1602 = bitcast i8* %1601 to %struct.hfi_hybrid_hierp*
  store %struct.hfi_hybrid_hierp* %1602, %struct.hfi_hybrid_hierp** %128, align 8
  %1603 = load %struct.hfi_hybrid_hierp*, %struct.hfi_hybrid_hierp** %127, align 8
  %1604 = getelementptr inbounds %struct.hfi_hybrid_hierp, %struct.hfi_hybrid_hierp* %1603, i32 0, i32 0
  %1605 = load i32, i32* %1604, align 4
  %1606 = load %struct.hfi_hybrid_hierp*, %struct.hfi_hybrid_hierp** %128, align 8
  %1607 = getelementptr inbounds %struct.hfi_hybrid_hierp, %struct.hfi_hybrid_hierp* %1606, i32 0, i32 0
  store i32 %1605, i32* %1607, align 4
  %1608 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %1609 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %1608, i32 0, i32 2
  %1610 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1609, i32 0, i32 0
  %1611 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1610, i32 0, i32 0
  %1612 = load i32, i32* %1611, align 4
  %1613 = sext i32 %1612 to i64
  %1614 = add i64 %1613, 8
  %1615 = trunc i64 %1614 to i32
  store i32 %1615, i32* %1611, align 4
  br label %1620

1616:                                             ; preds = %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140, %140
  br label %1617

1617:                                             ; preds = %140, %1616
  %1618 = load i32, i32* @EINVAL, align 4
  %1619 = sub nsw i32 0, %1618
  store i32 %1619, i32* %5, align 4
  br label %1622

1620:                                             ; preds = %1598, %1580, %1563, %1546, %1528, %1510, %1476, %1443, %1425, %1408, %1391, %1373, %1345, %1321, %1285, %1256, %1238, %1220, %1202, %1179, %1161, %1143, %1115, %1097, %1078, %1037, %1006, %969, %951, %928, %911, %884, %852, %849, %800, %776, %746, %728, %713, %695, %665, %611, %588, %587, %586, %577, %559, %541, %523, %505, %490, %458, %425, %407, %389, %371, %356, %329, %306, %283, %260, %242, %214, %191, %168
  %1621 = load i32, i32* %11, align 4
  store i32 %1621, i32* %5, align 4
  br label %1622

1622:                                             ; preds = %1620, %1617, %137
  %1623 = load i32, i32* %5, align 4
  ret i32 %1623
}

declare dso_local i32 @hash32_ptr(i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
