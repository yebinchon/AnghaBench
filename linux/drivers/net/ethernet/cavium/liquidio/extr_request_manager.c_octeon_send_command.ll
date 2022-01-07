; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_request_manager.c_octeon_send_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_request_manager.c_octeon_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.octeon_instr_queue** }
%struct.octeon_instr_queue = type { i64, i32, i64 }
%struct.iq_post_status = type { i64, i32 }

@IQ_SEND_FAILED = common dso_local global i64 0, align 8
@bytes_sent = common dso_local global i32 0, align 4
@instr_posted = common dso_local global i32 0, align 4
@MAX_OCTEON_FILL_COUNT = common dso_local global i64 0, align 8
@IQ_SEND_STOP = common dso_local global i64 0, align 8
@instr_dropped = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @octeon_send_command(%struct.octeon_device* %0, i64 %1, i64 %2, i8* %3, i8* %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.octeon_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.iq_post_status, align 8
  %17 = alloca %struct.octeon_instr_queue*, align 8
  %18 = alloca %struct.iq_post_status, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %19 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %20 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %19, i32 0, i32 0
  %21 = load %struct.octeon_instr_queue**, %struct.octeon_instr_queue*** %20, align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %21, i64 %22
  %24 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %23, align 8
  store %struct.octeon_instr_queue* %24, %struct.octeon_instr_queue** %17, align 8
  %25 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %17, align 8
  %26 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %7
  %30 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %17, align 8
  %31 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %30, i32 0, i32 1
  %32 = call i32 @spin_lock_bh(i32* %31)
  br label %33

33:                                               ; preds = %29, %7
  %34 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %17, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = call { i64, i32 } @__post_command2(%struct.octeon_instr_queue* %34, i8* %35)
  %37 = bitcast %struct.iq_post_status* %18 to { i64, i32 }*
  %38 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %37, i32 0, i32 0
  %39 = extractvalue { i64, i32 } %36, 0
  store i64 %39, i64* %38, align 8
  %40 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %37, i32 0, i32 1
  %41 = extractvalue { i64, i32 } %36, 1
  store i32 %41, i32* %40, align 8
  %42 = bitcast %struct.iq_post_status* %16 to i8*
  %43 = bitcast %struct.iq_post_status* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 16, i1 false)
  %44 = getelementptr inbounds %struct.iq_post_status, %struct.iq_post_status* %16, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IQ_SEND_FAILED, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %89

48:                                               ; preds = %33
  %49 = load i8*, i8** %12, align 8
  %50 = load i64, i64* %14, align 8
  %51 = call i32 @octeon_report_sent_bytes_to_bql(i8* %49, i64 %50)
  store i32 %51, i32* %15, align 4
  %52 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %17, align 8
  %53 = getelementptr inbounds %struct.iq_post_status, %struct.iq_post_status* %16, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = load i64, i64* %14, align 8
  %57 = call i32 @__add_to_request_list(%struct.octeon_instr_queue* %52, i32 %54, i8* %55, i64 %56)
  %58 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i32, i32* @bytes_sent, align 4
  %61 = load i64, i64* %13, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @INCR_INSTRQUEUE_PKT_COUNT(%struct.octeon_device* %58, i64 %59, i32 %60, i32 %62)
  %64 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i32, i32* @instr_posted, align 4
  %67 = call i32 @INCR_INSTRQUEUE_PKT_COUNT(%struct.octeon_device* %64, i64 %65, i32 %66, i32 1)
  %68 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %17, align 8
  %69 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @MAX_OCTEON_FILL_COUNT, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %84, label %73

73:                                               ; preds = %48
  %74 = load i64, i64* %10, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.iq_post_status, %struct.iq_post_status* %16, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IQ_SEND_STOP, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %79, %76, %73, %48
  %85 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %86 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %17, align 8
  %87 = call i32 @ring_doorbell(%struct.octeon_device* %85, %struct.octeon_instr_queue* %86)
  br label %88

88:                                               ; preds = %84, %79
  br label %94

89:                                               ; preds = %33
  %90 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %91 = load i64, i64* %9, align 8
  %92 = load i32, i32* @instr_dropped, align 4
  %93 = call i32 @INCR_INSTRQUEUE_PKT_COUNT(%struct.octeon_device* %90, i64 %91, i32 %92, i32 1)
  br label %94

94:                                               ; preds = %89, %88
  %95 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %17, align 8
  %96 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %17, align 8
  %101 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %100, i32 0, i32 1
  %102 = call i32 @spin_unlock_bh(i32* %101)
  br label %103

103:                                              ; preds = %99, %94
  %104 = getelementptr inbounds %struct.iq_post_status, %struct.iq_post_status* %16, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  ret i32 %106
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local { i64, i32 } @__post_command2(%struct.octeon_instr_queue*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @octeon_report_sent_bytes_to_bql(i8*, i64) #1

declare dso_local i32 @__add_to_request_list(%struct.octeon_instr_queue*, i32, i8*, i64) #1

declare dso_local i32 @INCR_INSTRQUEUE_PKT_COUNT(%struct.octeon_device*, i64, i32, i32) #1

declare dso_local i32 @ring_doorbell(%struct.octeon_device*, %struct.octeon_instr_queue*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
