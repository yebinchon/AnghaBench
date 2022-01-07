; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_session_ftb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_session_ftb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi_session_fill_buffer_pkt = type { i32, i32*, i32, i32, i32, i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.hfi_frame_data = type { i64, i32, i32, i32, i32, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@HFI_CMD_SESSION_FILL_BUFFER = common dso_local global i32 0, align 4
@HFI_BUFFER_OUTPUT = common dso_local global i64 0, align 8
@HFI_BUFFER_OUTPUT2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pkt_session_ftb(%struct.hfi_session_fill_buffer_pkt* %0, i8* %1, %struct.hfi_frame_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi_session_fill_buffer_pkt*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hfi_frame_data*, align 8
  store %struct.hfi_session_fill_buffer_pkt* %0, %struct.hfi_session_fill_buffer_pkt** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.hfi_frame_data* %2, %struct.hfi_frame_data** %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load %struct.hfi_frame_data*, %struct.hfi_frame_data** %7, align 8
  %12 = icmp ne %struct.hfi_frame_data* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load %struct.hfi_frame_data*, %struct.hfi_frame_data** %7, align 8
  %15 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13, %10, %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %92

21:                                               ; preds = %13
  %22 = load %struct.hfi_session_fill_buffer_pkt*, %struct.hfi_session_fill_buffer_pkt** %5, align 8
  %23 = getelementptr inbounds %struct.hfi_session_fill_buffer_pkt, %struct.hfi_session_fill_buffer_pkt* %22, i32 0, i32 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 56, i32* %25, align 4
  %26 = load i32, i32* @HFI_CMD_SESSION_FILL_BUFFER, align 4
  %27 = load %struct.hfi_session_fill_buffer_pkt*, %struct.hfi_session_fill_buffer_pkt** %5, align 8
  %28 = getelementptr inbounds %struct.hfi_session_fill_buffer_pkt, %struct.hfi_session_fill_buffer_pkt* %27, i32 0, i32 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 %26, i32* %30, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @hash32_ptr(i8* %31)
  %33 = load %struct.hfi_session_fill_buffer_pkt*, %struct.hfi_session_fill_buffer_pkt** %5, align 8
  %34 = getelementptr inbounds %struct.hfi_session_fill_buffer_pkt, %struct.hfi_session_fill_buffer_pkt* %33, i32 0, i32 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load %struct.hfi_frame_data*, %struct.hfi_frame_data** %7, align 8
  %37 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @HFI_BUFFER_OUTPUT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %21
  %42 = load %struct.hfi_session_fill_buffer_pkt*, %struct.hfi_session_fill_buffer_pkt** %5, align 8
  %43 = getelementptr inbounds %struct.hfi_session_fill_buffer_pkt, %struct.hfi_session_fill_buffer_pkt* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  br label %54

44:                                               ; preds = %21
  %45 = load %struct.hfi_frame_data*, %struct.hfi_frame_data** %7, align 8
  %46 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @HFI_BUFFER_OUTPUT2, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.hfi_session_fill_buffer_pkt*, %struct.hfi_session_fill_buffer_pkt** %5, align 8
  %52 = getelementptr inbounds %struct.hfi_session_fill_buffer_pkt, %struct.hfi_session_fill_buffer_pkt* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %44
  br label %54

54:                                               ; preds = %53, %41
  %55 = load %struct.hfi_frame_data*, %struct.hfi_frame_data** %7, align 8
  %56 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.hfi_session_fill_buffer_pkt*, %struct.hfi_session_fill_buffer_pkt** %5, align 8
  %59 = getelementptr inbounds %struct.hfi_session_fill_buffer_pkt, %struct.hfi_session_fill_buffer_pkt* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 8
  %60 = load %struct.hfi_frame_data*, %struct.hfi_frame_data** %7, align 8
  %61 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.hfi_session_fill_buffer_pkt*, %struct.hfi_session_fill_buffer_pkt** %5, align 8
  %64 = getelementptr inbounds %struct.hfi_session_fill_buffer_pkt, %struct.hfi_session_fill_buffer_pkt* %63, i32 0, i32 6
  store i64 %62, i64* %64, align 8
  %65 = load %struct.hfi_frame_data*, %struct.hfi_frame_data** %7, align 8
  %66 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.hfi_session_fill_buffer_pkt*, %struct.hfi_session_fill_buffer_pkt** %5, align 8
  %69 = getelementptr inbounds %struct.hfi_session_fill_buffer_pkt, %struct.hfi_session_fill_buffer_pkt* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  %70 = load %struct.hfi_frame_data*, %struct.hfi_frame_data** %7, align 8
  %71 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.hfi_session_fill_buffer_pkt*, %struct.hfi_session_fill_buffer_pkt** %5, align 8
  %74 = getelementptr inbounds %struct.hfi_session_fill_buffer_pkt, %struct.hfi_session_fill_buffer_pkt* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load %struct.hfi_frame_data*, %struct.hfi_frame_data** %7, align 8
  %76 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.hfi_session_fill_buffer_pkt*, %struct.hfi_session_fill_buffer_pkt** %5, align 8
  %79 = getelementptr inbounds %struct.hfi_session_fill_buffer_pkt, %struct.hfi_session_fill_buffer_pkt* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.hfi_frame_data*, %struct.hfi_frame_data** %7, align 8
  %81 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.hfi_session_fill_buffer_pkt*, %struct.hfi_session_fill_buffer_pkt** %5, align 8
  %84 = getelementptr inbounds %struct.hfi_session_fill_buffer_pkt, %struct.hfi_session_fill_buffer_pkt* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.hfi_frame_data*, %struct.hfi_frame_data** %7, align 8
  %86 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.hfi_session_fill_buffer_pkt*, %struct.hfi_session_fill_buffer_pkt** %5, align 8
  %89 = getelementptr inbounds %struct.hfi_session_fill_buffer_pkt, %struct.hfi_session_fill_buffer_pkt* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 %87, i32* %91, align 4
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %54, %18
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @hash32_ptr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
