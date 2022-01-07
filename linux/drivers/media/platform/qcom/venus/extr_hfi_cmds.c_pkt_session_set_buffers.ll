; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_session_set_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_session_set_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi_session_set_buffers_pkt = type { i32, i64, i32*, %struct.TYPE_4__, i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.hfi_buffer_desc = type { i32, i64, i32, i32, i64, i32 }
%struct.hfi_buffer_info = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@HFI_CMD_SESSION_SET_BUFFERS = common dso_local global i32 0, align 4
@HFI_BUFFER_OUTPUT = common dso_local global i64 0, align 8
@HFI_BUFFER_OUTPUT2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pkt_session_set_buffers(%struct.hfi_session_set_buffers_pkt* %0, i8* %1, %struct.hfi_buffer_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi_session_set_buffers_pkt*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hfi_buffer_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hfi_buffer_info*, align 8
  store %struct.hfi_session_set_buffers_pkt* %0, %struct.hfi_session_set_buffers_pkt** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.hfi_buffer_desc* %2, %struct.hfi_buffer_desc** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.hfi_session_set_buffers_pkt*, %struct.hfi_session_set_buffers_pkt** %5, align 8
  %14 = icmp ne %struct.hfi_session_set_buffers_pkt* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %7, align 8
  %17 = icmp ne %struct.hfi_buffer_desc* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %12, %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %141

21:                                               ; preds = %15
  %22 = load i32, i32* @HFI_CMD_SESSION_SET_BUFFERS, align 4
  %23 = load %struct.hfi_session_set_buffers_pkt*, %struct.hfi_session_set_buffers_pkt** %5, align 8
  %24 = getelementptr inbounds %struct.hfi_session_set_buffers_pkt, %struct.hfi_session_set_buffers_pkt* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i32 %22, i32* %26, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @hash32_ptr(i8* %27)
  %29 = load %struct.hfi_session_set_buffers_pkt*, %struct.hfi_session_set_buffers_pkt** %5, align 8
  %30 = getelementptr inbounds %struct.hfi_session_set_buffers_pkt, %struct.hfi_session_set_buffers_pkt* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 8
  %32 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %7, align 8
  %33 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.hfi_session_set_buffers_pkt*, %struct.hfi_session_set_buffers_pkt** %5, align 8
  %36 = getelementptr inbounds %struct.hfi_session_set_buffers_pkt, %struct.hfi_session_set_buffers_pkt* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  %37 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %7, align 8
  %38 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.hfi_session_set_buffers_pkt*, %struct.hfi_session_set_buffers_pkt** %5, align 8
  %41 = getelementptr inbounds %struct.hfi_session_set_buffers_pkt, %struct.hfi_session_set_buffers_pkt* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 8
  %42 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %7, align 8
  %43 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.hfi_session_set_buffers_pkt*, %struct.hfi_session_set_buffers_pkt** %5, align 8
  %46 = getelementptr inbounds %struct.hfi_session_set_buffers_pkt, %struct.hfi_session_set_buffers_pkt* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %7, align 8
  %48 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @HFI_BUFFER_OUTPUT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %21
  %53 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %7, align 8
  %54 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @HFI_BUFFER_OUTPUT2, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %100

58:                                               ; preds = %52, %21
  %59 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %7, align 8
  %60 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.hfi_session_set_buffers_pkt*, %struct.hfi_session_set_buffers_pkt** %5, align 8
  %63 = getelementptr inbounds %struct.hfi_session_set_buffers_pkt, %struct.hfi_session_set_buffers_pkt* %62, i32 0, i32 4
  store i64 %61, i64* %63, align 8
  %64 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %7, align 8
  %65 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = zext i32 %66 to i64
  %68 = mul i64 %67, 8
  %69 = add i64 52, %68
  %70 = trunc i64 %69 to i32
  %71 = load %struct.hfi_session_set_buffers_pkt*, %struct.hfi_session_set_buffers_pkt** %5, align 8
  %72 = getelementptr inbounds %struct.hfi_session_set_buffers_pkt, %struct.hfi_session_set_buffers_pkt* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32 %70, i32* %74, align 8
  %75 = load %struct.hfi_session_set_buffers_pkt*, %struct.hfi_session_set_buffers_pkt** %5, align 8
  %76 = getelementptr inbounds %struct.hfi_session_set_buffers_pkt, %struct.hfi_session_set_buffers_pkt* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = bitcast i32* %77 to %struct.hfi_buffer_info*
  store %struct.hfi_buffer_info* %78, %struct.hfi_buffer_info** %9, align 8
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %96, %58
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.hfi_session_set_buffers_pkt*, %struct.hfi_session_set_buffers_pkt** %5, align 8
  %82 = getelementptr inbounds %struct.hfi_session_set_buffers_pkt, %struct.hfi_session_set_buffers_pkt* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ult i32 %80, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %79
  %86 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %7, align 8
  %87 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.hfi_buffer_info*, %struct.hfi_buffer_info** %9, align 8
  %90 = getelementptr inbounds %struct.hfi_buffer_info, %struct.hfi_buffer_info* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %7, align 8
  %92 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.hfi_buffer_info*, %struct.hfi_buffer_info** %9, align 8
  %95 = getelementptr inbounds %struct.hfi_buffer_info, %struct.hfi_buffer_info* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %85
  %97 = load i32, i32* %8, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %79

99:                                               ; preds = %79
  br label %135

100:                                              ; preds = %52
  %101 = load %struct.hfi_session_set_buffers_pkt*, %struct.hfi_session_set_buffers_pkt** %5, align 8
  %102 = getelementptr inbounds %struct.hfi_session_set_buffers_pkt, %struct.hfi_session_set_buffers_pkt* %101, i32 0, i32 4
  store i64 0, i64* %102, align 8
  %103 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %7, align 8
  %104 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sub i32 %105, 1
  %107 = zext i32 %106 to i64
  %108 = mul i64 %107, 4
  %109 = add i64 56, %108
  %110 = trunc i64 %109 to i32
  %111 = load %struct.hfi_session_set_buffers_pkt*, %struct.hfi_session_set_buffers_pkt** %5, align 8
  %112 = getelementptr inbounds %struct.hfi_session_set_buffers_pkt, %struct.hfi_session_set_buffers_pkt* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  store i32 %110, i32* %114, align 8
  store i32 0, i32* %8, align 4
  br label %115

115:                                              ; preds = %131, %100
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.hfi_session_set_buffers_pkt*, %struct.hfi_session_set_buffers_pkt** %5, align 8
  %118 = getelementptr inbounds %struct.hfi_session_set_buffers_pkt, %struct.hfi_session_set_buffers_pkt* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ult i32 %116, %119
  br i1 %120, label %121, label %134

121:                                              ; preds = %115
  %122 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %7, align 8
  %123 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.hfi_session_set_buffers_pkt*, %struct.hfi_session_set_buffers_pkt** %5, align 8
  %126 = getelementptr inbounds %struct.hfi_session_set_buffers_pkt, %struct.hfi_session_set_buffers_pkt* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %124, i32* %130, align 4
  br label %131

131:                                              ; preds = %121
  %132 = load i32, i32* %8, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %8, align 4
  br label %115

134:                                              ; preds = %115
  br label %135

135:                                              ; preds = %134, %99
  %136 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %7, align 8
  %137 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.hfi_session_set_buffers_pkt*, %struct.hfi_session_set_buffers_pkt** %5, align 8
  %140 = getelementptr inbounds %struct.hfi_session_set_buffers_pkt, %struct.hfi_session_set_buffers_pkt* %139, i32 0, i32 1
  store i64 %138, i64* %140, align 8
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %135, %18
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @hash32_ptr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
