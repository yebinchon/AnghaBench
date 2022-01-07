; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_session_etb_encoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_session_etb_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi_session_empty_buffer_uncompressed_plane0_pkt = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.hfi_frame_data = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@HFI_CMD_SESSION_EMPTY_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pkt_session_etb_encoder(%struct.hfi_session_empty_buffer_uncompressed_plane0_pkt* %0, i8* %1, %struct.hfi_frame_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hfi_frame_data*, align 8
  store %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt* %0, %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.hfi_frame_data* %2, %struct.hfi_frame_data** %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load %struct.hfi_frame_data*, %struct.hfi_frame_data** %7, align 8
  %12 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10, %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %92

18:                                               ; preds = %10
  %19 = load %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt*, %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt** %5, align 8
  %20 = getelementptr inbounds %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt, %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt* %19, i32 0, i32 12
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 80, i32* %22, align 4
  %23 = load i32, i32* @HFI_CMD_SESSION_EMPTY_BUFFER, align 4
  %24 = load %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt*, %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt** %5, align 8
  %25 = getelementptr inbounds %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt, %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt* %24, i32 0, i32 12
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 %23, i32* %27, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @hash32_ptr(i8* %28)
  %30 = load %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt*, %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt** %5, align 8
  %31 = getelementptr inbounds %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt, %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt* %30, i32 0, i32 12
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt*, %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt** %5, align 8
  %34 = getelementptr inbounds %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt, %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt* %33, i32 0, i32 11
  store i64 0, i64* %34, align 8
  %35 = load %struct.hfi_frame_data*, %struct.hfi_frame_data** %7, align 8
  %36 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @upper_32_bits(i32 %37)
  %39 = load %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt*, %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt** %5, align 8
  %40 = getelementptr inbounds %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt, %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt* %39, i32 0, i32 10
  store i32 %38, i32* %40, align 8
  %41 = load %struct.hfi_frame_data*, %struct.hfi_frame_data** %7, align 8
  %42 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @lower_32_bits(i32 %43)
  %45 = load %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt*, %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt** %5, align 8
  %46 = getelementptr inbounds %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt, %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt* %45, i32 0, i32 9
  store i32 %44, i32* %46, align 4
  %47 = load %struct.hfi_frame_data*, %struct.hfi_frame_data** %7, align 8
  %48 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt*, %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt** %5, align 8
  %51 = getelementptr inbounds %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt, %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt* %50, i32 0, i32 8
  store i32 %49, i32* %51, align 8
  %52 = load %struct.hfi_frame_data*, %struct.hfi_frame_data** %7, align 8
  %53 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt*, %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt** %5, align 8
  %56 = getelementptr inbounds %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt, %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 4
  %57 = load %struct.hfi_frame_data*, %struct.hfi_frame_data** %7, align 8
  %58 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt*, %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt** %5, align 8
  %61 = getelementptr inbounds %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt, %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt* %60, i32 0, i32 6
  store i32 %59, i32* %61, align 8
  %62 = load %struct.hfi_frame_data*, %struct.hfi_frame_data** %7, align 8
  %63 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt*, %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt** %5, align 8
  %66 = getelementptr inbounds %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt, %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 4
  %67 = load %struct.hfi_frame_data*, %struct.hfi_frame_data** %7, align 8
  %68 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt*, %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt** %5, align 8
  %71 = getelementptr inbounds %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt, %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = load %struct.hfi_frame_data*, %struct.hfi_frame_data** %7, align 8
  %73 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt*, %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt** %5, align 8
  %76 = getelementptr inbounds %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt, %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.hfi_frame_data*, %struct.hfi_frame_data** %7, align 8
  %78 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt*, %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt** %5, align 8
  %81 = getelementptr inbounds %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt, %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.hfi_frame_data*, %struct.hfi_frame_data** %7, align 8
  %83 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt*, %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt** %5, align 8
  %86 = getelementptr inbounds %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt, %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load %struct.hfi_frame_data*, %struct.hfi_frame_data** %7, align 8
  %88 = getelementptr inbounds %struct.hfi_frame_data, %struct.hfi_frame_data* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt*, %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt** %5, align 8
  %91 = getelementptr inbounds %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt, %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %18, %15
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @hash32_ptr(i8*) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
