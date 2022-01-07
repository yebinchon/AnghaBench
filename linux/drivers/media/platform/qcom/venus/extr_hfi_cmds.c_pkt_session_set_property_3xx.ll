; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_session_set_property_3xx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_session_set_property_3xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi_session_set_property_pkt = type { i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.hfi_multi_stream = type { i32, i32 }
%struct.hfi_multi_stream_3x = type { i32, i32 }
%struct.hfi_intra_refresh = type { i32, i32 }
%struct.hfi_intra_refresh_3x = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@HFI_CMD_SESSION_SET_PROPERTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi_session_set_property_pkt*, i8*, i32, i8*)* @pkt_session_set_property_3xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkt_session_set_property_3xx(%struct.hfi_session_set_property_pkt* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfi_session_set_property_pkt*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.hfi_multi_stream*, align 8
  %13 = alloca %struct.hfi_multi_stream_3x*, align 8
  %14 = alloca %struct.hfi_intra_refresh*, align 8
  %15 = alloca %struct.hfi_intra_refresh_3x*, align 8
  store %struct.hfi_session_set_property_pkt* %0, %struct.hfi_session_set_property_pkt** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %17 = icmp ne %struct.hfi_session_set_property_pkt* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21, %18, %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %118

27:                                               ; preds = %21
  %28 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %29 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = bitcast i32* %31 to i8*
  store i8* %32, i8** %10, align 8
  %33 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %34 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 24, i32* %36, align 4
  %37 = load i32, i32* @HFI_CMD_SESSION_SET_PROPERTY, align 4
  %38 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %39 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i32 %37, i32* %41, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @hash32_ptr(i8* %42)
  %44 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %45 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %48 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %47, i32 0, i32 1
  store i32 1, i32* %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %51 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %49, i32* %53, align 4
  %54 = load i32, i32* %8, align 4
  switch i32 %54, label %110 [
    i32 129, label %55
    i32 128, label %78
    i32 130, label %109
  ]

55:                                               ; preds = %27
  %56 = load i8*, i8** %9, align 8
  %57 = bitcast i8* %56 to %struct.hfi_multi_stream*
  store %struct.hfi_multi_stream* %57, %struct.hfi_multi_stream** %12, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = bitcast i8* %58 to %struct.hfi_multi_stream_3x*
  store %struct.hfi_multi_stream_3x* %59, %struct.hfi_multi_stream_3x** %13, align 8
  %60 = load %struct.hfi_multi_stream*, %struct.hfi_multi_stream** %12, align 8
  %61 = getelementptr inbounds %struct.hfi_multi_stream, %struct.hfi_multi_stream* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.hfi_multi_stream_3x*, %struct.hfi_multi_stream_3x** %13, align 8
  %64 = getelementptr inbounds %struct.hfi_multi_stream_3x, %struct.hfi_multi_stream_3x* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.hfi_multi_stream*, %struct.hfi_multi_stream** %12, align 8
  %66 = getelementptr inbounds %struct.hfi_multi_stream, %struct.hfi_multi_stream* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.hfi_multi_stream_3x*, %struct.hfi_multi_stream_3x** %13, align 8
  %69 = getelementptr inbounds %struct.hfi_multi_stream_3x, %struct.hfi_multi_stream_3x* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %71 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = add i64 %75, 12
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 4
  br label %116

78:                                               ; preds = %27
  %79 = load i8*, i8** %9, align 8
  %80 = bitcast i8* %79 to %struct.hfi_intra_refresh*
  store %struct.hfi_intra_refresh* %80, %struct.hfi_intra_refresh** %14, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = bitcast i8* %81 to %struct.hfi_intra_refresh_3x*
  store %struct.hfi_intra_refresh_3x* %82, %struct.hfi_intra_refresh_3x** %15, align 8
  %83 = load %struct.hfi_intra_refresh*, %struct.hfi_intra_refresh** %14, align 8
  %84 = getelementptr inbounds %struct.hfi_intra_refresh, %struct.hfi_intra_refresh* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %87 [
    i32 132, label %86
    i32 135, label %86
    i32 134, label %86
    i32 133, label %86
    i32 131, label %86
  ]

86:                                               ; preds = %78, %78, %78, %78, %78
  br label %90

87:                                               ; preds = %78
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %87, %86
  %91 = load %struct.hfi_intra_refresh*, %struct.hfi_intra_refresh** %14, align 8
  %92 = getelementptr inbounds %struct.hfi_intra_refresh, %struct.hfi_intra_refresh* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.hfi_intra_refresh_3x*, %struct.hfi_intra_refresh_3x** %15, align 8
  %95 = getelementptr inbounds %struct.hfi_intra_refresh_3x, %struct.hfi_intra_refresh_3x* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.hfi_intra_refresh*, %struct.hfi_intra_refresh** %14, align 8
  %97 = getelementptr inbounds %struct.hfi_intra_refresh, %struct.hfi_intra_refresh* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.hfi_intra_refresh_3x*, %struct.hfi_intra_refresh_3x** %15, align 8
  %100 = getelementptr inbounds %struct.hfi_intra_refresh_3x, %struct.hfi_intra_refresh_3x* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %102 = getelementptr inbounds %struct.hfi_session_set_property_pkt, %struct.hfi_session_set_property_pkt* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = add i64 %106, 12
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %104, align 4
  br label %116

109:                                              ; preds = %27
  br label %116

110:                                              ; preds = %27
  %111 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load i8*, i8** %9, align 8
  %115 = call i32 @pkt_session_set_property_1x(%struct.hfi_session_set_property_pkt* %111, i8* %112, i32 %113, i8* %114)
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %110, %109, %90, %55
  %117 = load i32, i32* %11, align 4
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %116, %24
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @hash32_ptr(i8*) #1

declare dso_local i32 @pkt_session_set_property_1x(%struct.hfi_session_set_property_pkt*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
