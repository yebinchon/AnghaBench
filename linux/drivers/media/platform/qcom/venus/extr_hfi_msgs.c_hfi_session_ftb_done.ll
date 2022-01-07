; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_msgs.c_hfi_session_ftb_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_msgs.c_hfi_session_ftb_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_core = type { i32 }
%struct.venus_inst = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.venus_inst*, i64, i64, i64, i64, i64, i64, i32)* }
%struct.hfi_msg_session_fbd_compressed_pkt = type { i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.hfi_msg_session_fbd_uncompressed_plane0_pkt = type { i64, i64, i64, i64, i64, i64, i64, i32, i32 }

@VIDC_SESSION_TYPE_ENC = common dso_local global i64 0, align 8
@HFI_BUFFER_OUTPUT = common dso_local global i64 0, align 8
@VIDC_SESSION_TYPE_DEC = common dso_local global i64 0, align 8
@HFI_BUFFER_OUTPUT2 = common dso_local global i64 0, align 8
@HFI_ERR_SESSION_INVALID_PARAMETER = common dso_local global i32 0, align 4
@HFI_BUFFERFLAG_EOS = common dso_local global i64 0, align 8
@V4L2_BUF_FLAG_LAST = common dso_local global i64 0, align 8
@V4L2_BUF_FLAG_KEYFRAME = common dso_local global i64 0, align 8
@V4L2_BUF_FLAG_PFRAME = common dso_local global i64 0, align 8
@V4L2_BUF_FLAG_BFRAME = common dso_local global i64 0, align 8
@HFI_BUFFERFLAG_TIMESTAMPINVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.venus_core*, %struct.venus_inst*, i8*)* @hfi_session_ftb_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfi_session_ftb_done(%struct.venus_core* %0, %struct.venus_inst* %1, i8* %2) #0 {
  %4 = alloca %struct.venus_core*, align 8
  %5 = alloca %struct.venus_inst*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.hfi_msg_session_fbd_compressed_pkt*, align 8
  %20 = alloca %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt*, align 8
  store %struct.venus_core* %0, %struct.venus_core** %4, align 8
  store %struct.venus_inst* %1, %struct.venus_inst** %5, align 8
  store i8* %2, i8** %6, align 8
  %21 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %22 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 -1, i64* %18, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @VIDC_SESSION_TYPE_ENC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %3
  %28 = load i8*, i8** %6, align 8
  %29 = bitcast i8* %28 to %struct.hfi_msg_session_fbd_compressed_pkt*
  store %struct.hfi_msg_session_fbd_compressed_pkt* %29, %struct.hfi_msg_session_fbd_compressed_pkt** %19, align 8
  %30 = load %struct.hfi_msg_session_fbd_compressed_pkt*, %struct.hfi_msg_session_fbd_compressed_pkt** %19, align 8
  %31 = getelementptr inbounds %struct.hfi_msg_session_fbd_compressed_pkt, %struct.hfi_msg_session_fbd_compressed_pkt* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %9, align 8
  %33 = load %struct.hfi_msg_session_fbd_compressed_pkt*, %struct.hfi_msg_session_fbd_compressed_pkt** %19, align 8
  %34 = getelementptr inbounds %struct.hfi_msg_session_fbd_compressed_pkt, %struct.hfi_msg_session_fbd_compressed_pkt* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %10, align 8
  %36 = load %struct.hfi_msg_session_fbd_compressed_pkt*, %struct.hfi_msg_session_fbd_compressed_pkt** %19, align 8
  %37 = getelementptr inbounds %struct.hfi_msg_session_fbd_compressed_pkt, %struct.hfi_msg_session_fbd_compressed_pkt* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %13, align 8
  %39 = load %struct.hfi_msg_session_fbd_compressed_pkt*, %struct.hfi_msg_session_fbd_compressed_pkt** %19, align 8
  %40 = getelementptr inbounds %struct.hfi_msg_session_fbd_compressed_pkt, %struct.hfi_msg_session_fbd_compressed_pkt* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %14, align 8
  %42 = load %struct.hfi_msg_session_fbd_compressed_pkt*, %struct.hfi_msg_session_fbd_compressed_pkt** %19, align 8
  %43 = getelementptr inbounds %struct.hfi_msg_session_fbd_compressed_pkt, %struct.hfi_msg_session_fbd_compressed_pkt* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %15, align 8
  %45 = load %struct.hfi_msg_session_fbd_compressed_pkt*, %struct.hfi_msg_session_fbd_compressed_pkt** %19, align 8
  %46 = getelementptr inbounds %struct.hfi_msg_session_fbd_compressed_pkt, %struct.hfi_msg_session_fbd_compressed_pkt* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %16, align 8
  %48 = load %struct.hfi_msg_session_fbd_compressed_pkt*, %struct.hfi_msg_session_fbd_compressed_pkt** %19, align 8
  %49 = getelementptr inbounds %struct.hfi_msg_session_fbd_compressed_pkt, %struct.hfi_msg_session_fbd_compressed_pkt* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %18, align 8
  %51 = load i64, i64* @HFI_BUFFER_OUTPUT, align 8
  store i64 %51, i64* %17, align 8
  %52 = load %struct.hfi_msg_session_fbd_compressed_pkt*, %struct.hfi_msg_session_fbd_compressed_pkt** %19, align 8
  %53 = getelementptr inbounds %struct.hfi_msg_session_fbd_compressed_pkt, %struct.hfi_msg_session_fbd_compressed_pkt* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %11, align 4
  br label %104

55:                                               ; preds = %3
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @VIDC_SESSION_TYPE_DEC, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %101

59:                                               ; preds = %55
  %60 = load i8*, i8** %6, align 8
  %61 = bitcast i8* %60 to %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt*
  store %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt* %61, %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt** %20, align 8
  %62 = load %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt*, %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt** %20, align 8
  %63 = getelementptr inbounds %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt, %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %9, align 8
  %65 = load %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt*, %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt** %20, align 8
  %66 = getelementptr inbounds %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt, %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %10, align 8
  %68 = load %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt*, %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt** %20, align 8
  %69 = getelementptr inbounds %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt, %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %13, align 8
  %71 = load %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt*, %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt** %20, align 8
  %72 = getelementptr inbounds %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt, %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %14, align 8
  %74 = load %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt*, %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt** %20, align 8
  %75 = getelementptr inbounds %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt, %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %15, align 8
  %77 = load %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt*, %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt** %20, align 8
  %78 = getelementptr inbounds %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt, %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %16, align 8
  %80 = load %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt*, %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt** %20, align 8
  %81 = getelementptr inbounds %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt, %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %18, align 8
  %83 = load %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt*, %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt** %20, align 8
  %84 = getelementptr inbounds %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt, %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %59
  %88 = load i64, i64* @HFI_BUFFER_OUTPUT, align 8
  store i64 %88, i64* %17, align 8
  br label %97

89:                                               ; preds = %59
  %90 = load %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt*, %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt** %20, align 8
  %91 = getelementptr inbounds %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt, %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i64, i64* @HFI_BUFFER_OUTPUT2, align 8
  store i64 %95, i64* %17, align 8
  br label %96

96:                                               ; preds = %94, %89
  br label %97

97:                                               ; preds = %96, %87
  %98 = load %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt*, %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt** %20, align 8
  %99 = getelementptr inbounds %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt, %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt* %98, i32 0, i32 8
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %11, align 4
  br label %103

101:                                              ; preds = %55
  %102 = load i32, i32* @HFI_ERR_SESSION_INVALID_PARAMETER, align 4
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %101, %97
  br label %104

104:                                              ; preds = %103, %27
  %105 = load i64, i64* %17, align 8
  %106 = load i64, i64* @HFI_BUFFER_OUTPUT, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load i64, i64* %17, align 8
  %110 = load i64, i64* @HFI_BUFFER_OUTPUT2, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %156

113:                                              ; preds = %108, %104
  %114 = load i64, i64* %13, align 8
  %115 = load i64, i64* @HFI_BUFFERFLAG_EOS, align 8
  %116 = and i64 %114, %115
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load i64, i64* @V4L2_BUF_FLAG_LAST, align 8
  %120 = load i64, i64* %12, align 8
  %121 = or i64 %120, %119
  store i64 %121, i64* %12, align 8
  br label %122

122:                                              ; preds = %118, %113
  %123 = load i64, i64* %16, align 8
  switch i64 %123, label %137 [
    i64 130, label %124
    i64 131, label %124
    i64 129, label %128
    i64 132, label %132
    i64 134, label %136
    i64 128, label %136
    i64 133, label %136
  ]

124:                                              ; preds = %122, %122
  %125 = load i64, i64* @V4L2_BUF_FLAG_KEYFRAME, align 8
  %126 = load i64, i64* %12, align 8
  %127 = or i64 %126, %125
  store i64 %127, i64* %12, align 8
  br label %138

128:                                              ; preds = %122
  %129 = load i64, i64* @V4L2_BUF_FLAG_PFRAME, align 8
  %130 = load i64, i64* %12, align 8
  %131 = or i64 %130, %129
  store i64 %131, i64* %12, align 8
  br label %138

132:                                              ; preds = %122
  %133 = load i64, i64* @V4L2_BUF_FLAG_BFRAME, align 8
  %134 = load i64, i64* %12, align 8
  %135 = or i64 %134, %133
  store i64 %135, i64* %12, align 8
  br label %138

136:                                              ; preds = %122, %122, %122
  br label %137

137:                                              ; preds = %122, %136
  br label %138

138:                                              ; preds = %137, %132, %128, %124
  %139 = load i64, i64* %13, align 8
  %140 = load i64, i64* @HFI_BUFFERFLAG_TIMESTAMPINVALID, align 8
  %141 = and i64 %139, %140
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %155, label %143

143:                                              ; preds = %138
  %144 = load i64, i64* %15, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %143
  %147 = load i64, i64* %9, align 8
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = shl i32 %149, 32
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* %10, align 8
  %153 = or i64 %151, %152
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %8, align 4
  br label %155

155:                                              ; preds = %146, %143, %138
  br label %156

156:                                              ; preds = %155, %112
  %157 = load i32, i32* %11, align 4
  %158 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %159 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 8
  %160 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %161 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %160, i32 0, i32 2
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i32 (%struct.venus_inst*, i64, i64, i64, i64, i64, i64, i32)*, i32 (%struct.venus_inst*, i64, i64, i64, i64, i64, i64, i32)** %163, align 8
  %165 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %166 = load i64, i64* %17, align 8
  %167 = load i64, i64* %18, align 8
  %168 = load i64, i64* %15, align 8
  %169 = load i64, i64* %14, align 8
  %170 = load i64, i64* %12, align 8
  %171 = load i64, i64* %13, align 8
  %172 = load i32, i32* %8, align 4
  %173 = call i32 %164(%struct.venus_inst* %165, i64 %166, i64 %167, i64 %168, i64 %169, i64 %170, i64 %171, i32 %172)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
