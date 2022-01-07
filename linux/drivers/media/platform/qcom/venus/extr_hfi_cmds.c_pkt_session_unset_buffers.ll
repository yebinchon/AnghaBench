; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_session_unset_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_session_unset_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi_session_release_buffer_pkt = type { i32, i64, i32, %struct.TYPE_4__, i64, i32*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.hfi_buffer_desc = type { i32, i64, i32, i32, i32, i32 }
%struct.hfi_buffer_info = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@HFI_CMD_SESSION_RELEASE_BUFFERS = common dso_local global i32 0, align 4
@HFI_BUFFER_OUTPUT = common dso_local global i64 0, align 8
@HFI_BUFFER_OUTPUT2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pkt_session_unset_buffers(%struct.hfi_session_release_buffer_pkt* %0, i8* %1, %struct.hfi_buffer_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi_session_release_buffer_pkt*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hfi_buffer_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hfi_buffer_info*, align 8
  store %struct.hfi_session_release_buffer_pkt* %0, %struct.hfi_session_release_buffer_pkt** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.hfi_buffer_desc* %2, %struct.hfi_buffer_desc** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.hfi_session_release_buffer_pkt*, %struct.hfi_session_release_buffer_pkt** %5, align 8
  %14 = icmp ne %struct.hfi_session_release_buffer_pkt* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %7, align 8
  %17 = icmp ne %struct.hfi_buffer_desc* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %12, %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %136

21:                                               ; preds = %15
  %22 = load i32, i32* @HFI_CMD_SESSION_RELEASE_BUFFERS, align 4
  %23 = load %struct.hfi_session_release_buffer_pkt*, %struct.hfi_session_release_buffer_pkt** %5, align 8
  %24 = getelementptr inbounds %struct.hfi_session_release_buffer_pkt, %struct.hfi_session_release_buffer_pkt* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i32 %22, i32* %26, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @hash32_ptr(i8* %27)
  %29 = load %struct.hfi_session_release_buffer_pkt*, %struct.hfi_session_release_buffer_pkt** %5, align 8
  %30 = getelementptr inbounds %struct.hfi_session_release_buffer_pkt, %struct.hfi_session_release_buffer_pkt* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %7, align 8
  %33 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.hfi_session_release_buffer_pkt*, %struct.hfi_session_release_buffer_pkt** %5, align 8
  %36 = getelementptr inbounds %struct.hfi_session_release_buffer_pkt, %struct.hfi_session_release_buffer_pkt* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 8
  %37 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %7, align 8
  %38 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.hfi_session_release_buffer_pkt*, %struct.hfi_session_release_buffer_pkt** %5, align 8
  %41 = getelementptr inbounds %struct.hfi_session_release_buffer_pkt, %struct.hfi_session_release_buffer_pkt* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %7, align 8
  %43 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @HFI_BUFFER_OUTPUT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %21
  %48 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %7, align 8
  %49 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @HFI_BUFFER_OUTPUT2, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %90

53:                                               ; preds = %47, %21
  %54 = load %struct.hfi_session_release_buffer_pkt*, %struct.hfi_session_release_buffer_pkt** %5, align 8
  %55 = getelementptr inbounds %struct.hfi_session_release_buffer_pkt, %struct.hfi_session_release_buffer_pkt* %54, i32 0, i32 5
  %56 = load i32*, i32** %55, align 8
  %57 = bitcast i32* %56 to %struct.hfi_buffer_info*
  store %struct.hfi_buffer_info* %57, %struct.hfi_buffer_info** %9, align 8
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %75, %53
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.hfi_session_release_buffer_pkt*, %struct.hfi_session_release_buffer_pkt** %5, align 8
  %61 = getelementptr inbounds %struct.hfi_session_release_buffer_pkt, %struct.hfi_session_release_buffer_pkt* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ult i32 %59, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %58
  %65 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %7, align 8
  %66 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.hfi_buffer_info*, %struct.hfi_buffer_info** %9, align 8
  %69 = getelementptr inbounds %struct.hfi_buffer_info, %struct.hfi_buffer_info* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %7, align 8
  %71 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.hfi_buffer_info*, %struct.hfi_buffer_info** %9, align 8
  %74 = getelementptr inbounds %struct.hfi_buffer_info, %struct.hfi_buffer_info* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %64
  %76 = load i32, i32* %8, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %58

78:                                               ; preds = %58
  %79 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %7, align 8
  %80 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = zext i32 %81 to i64
  %83 = mul i64 %82, 8
  %84 = add i64 0, %83
  %85 = trunc i64 %84 to i32
  %86 = load %struct.hfi_session_release_buffer_pkt*, %struct.hfi_session_release_buffer_pkt** %5, align 8
  %87 = getelementptr inbounds %struct.hfi_session_release_buffer_pkt, %struct.hfi_session_release_buffer_pkt* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 4
  br label %125

90:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %107, %90
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.hfi_session_release_buffer_pkt*, %struct.hfi_session_release_buffer_pkt** %5, align 8
  %94 = getelementptr inbounds %struct.hfi_session_release_buffer_pkt, %struct.hfi_session_release_buffer_pkt* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ult i32 %92, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %91
  %98 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %7, align 8
  %99 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.hfi_session_release_buffer_pkt*, %struct.hfi_session_release_buffer_pkt** %5, align 8
  %102 = getelementptr inbounds %struct.hfi_session_release_buffer_pkt, %struct.hfi_session_release_buffer_pkt* %101, i32 0, i32 5
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %100, i32* %106, align 4
  br label %107

107:                                              ; preds = %97
  %108 = load i32, i32* %8, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %91

110:                                              ; preds = %91
  %111 = load %struct.hfi_session_release_buffer_pkt*, %struct.hfi_session_release_buffer_pkt** %5, align 8
  %112 = getelementptr inbounds %struct.hfi_session_release_buffer_pkt, %struct.hfi_session_release_buffer_pkt* %111, i32 0, i32 4
  store i64 0, i64* %112, align 8
  %113 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %7, align 8
  %114 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sub i32 %115, 1
  %117 = zext i32 %116 to i64
  %118 = mul i64 %117, 4
  %119 = add i64 4, %118
  %120 = trunc i64 %119 to i32
  %121 = load %struct.hfi_session_release_buffer_pkt*, %struct.hfi_session_release_buffer_pkt** %5, align 8
  %122 = getelementptr inbounds %struct.hfi_session_release_buffer_pkt, %struct.hfi_session_release_buffer_pkt* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  store i32 %120, i32* %124, align 4
  br label %125

125:                                              ; preds = %110, %78
  %126 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %7, align 8
  %127 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.hfi_session_release_buffer_pkt*, %struct.hfi_session_release_buffer_pkt** %5, align 8
  %130 = getelementptr inbounds %struct.hfi_session_release_buffer_pkt, %struct.hfi_session_release_buffer_pkt* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  %131 = load %struct.hfi_buffer_desc*, %struct.hfi_buffer_desc** %7, align 8
  %132 = getelementptr inbounds %struct.hfi_buffer_desc, %struct.hfi_buffer_desc* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.hfi_session_release_buffer_pkt*, %struct.hfi_session_release_buffer_pkt** %5, align 8
  %135 = getelementptr inbounds %struct.hfi_session_release_buffer_pkt, %struct.hfi_session_release_buffer_pkt* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %125, %18
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @hash32_ptr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
