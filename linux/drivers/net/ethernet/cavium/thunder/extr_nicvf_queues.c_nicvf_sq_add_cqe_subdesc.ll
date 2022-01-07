; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_sq_add_cqe_subdesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_sq_add_cqe_subdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_queue = type { i64* }
%struct.sk_buff = type { i32 }
%struct.sq_imm_subdesc = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.sq_hdr_subdesc = type { i32, i32, i32, i32, i32, i32, i64 }

@SND_QUEUE_DESC_SIZE = common dso_local global i32 0, align 4
@SQ_DESC_TYPE_HEADER = common dso_local global i32 0, align 4
@POST_CQE_DESC_COUNT = common dso_local global i64 0, align 8
@SQ_DESC_TYPE_IMMEDIATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_queue*, i32, i32, %struct.sk_buff*)* @nicvf_sq_add_cqe_subdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_sq_add_cqe_subdesc(%struct.snd_queue* %0, i32 %1, i32 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.snd_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sq_imm_subdesc*, align 8
  %10 = alloca %struct.sq_hdr_subdesc*, align 8
  store %struct.snd_queue* %0, %struct.snd_queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %12 = ptrtoint %struct.sk_buff* %11 to i64
  %13 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %14 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  store i64 %12, i64* %18, align 8
  %19 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @GET_SQ_DESC(%struct.snd_queue* %19, i32 %20)
  %22 = inttoptr i64 %21 to %struct.sq_hdr_subdesc*
  store %struct.sq_hdr_subdesc* %22, %struct.sq_hdr_subdesc** %10, align 8
  %23 = load %struct.sq_hdr_subdesc*, %struct.sq_hdr_subdesc** %10, align 8
  %24 = bitcast %struct.sq_hdr_subdesc* %23 to %struct.sq_imm_subdesc*
  %25 = load i32, i32* @SND_QUEUE_DESC_SIZE, align 4
  %26 = call i32 @memset(%struct.sq_imm_subdesc* %24, i32 0, i32 %25)
  %27 = load i32, i32* @SQ_DESC_TYPE_HEADER, align 4
  %28 = load %struct.sq_hdr_subdesc*, %struct.sq_hdr_subdesc** %10, align 8
  %29 = getelementptr inbounds %struct.sq_hdr_subdesc, %struct.sq_hdr_subdesc* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.sq_hdr_subdesc*, %struct.sq_hdr_subdesc** %10, align 8
  %31 = getelementptr inbounds %struct.sq_hdr_subdesc, %struct.sq_hdr_subdesc* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.sq_hdr_subdesc*, %struct.sq_hdr_subdesc** %10, align 8
  %33 = getelementptr inbounds %struct.sq_hdr_subdesc, %struct.sq_hdr_subdesc* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = load i64, i64* @POST_CQE_DESC_COUNT, align 8
  %35 = sub nsw i64 %34, 1
  %36 = load %struct.sq_hdr_subdesc*, %struct.sq_hdr_subdesc** %10, align 8
  %37 = getelementptr inbounds %struct.sq_hdr_subdesc, %struct.sq_hdr_subdesc* %36, i32 0, i32 6
  store i64 %35, i64* %37, align 8
  %38 = load %struct.sq_hdr_subdesc*, %struct.sq_hdr_subdesc** %10, align 8
  %39 = getelementptr inbounds %struct.sq_hdr_subdesc, %struct.sq_hdr_subdesc* %38, i32 0, i32 2
  store i32 1, i32* %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.sq_hdr_subdesc*, %struct.sq_hdr_subdesc** %10, align 8
  %42 = getelementptr inbounds %struct.sq_hdr_subdesc, %struct.sq_hdr_subdesc* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @nicvf_get_nxt_sqentry(%struct.snd_queue* %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @GET_SQ_DESC(%struct.snd_queue* %46, i32 %47)
  %49 = inttoptr i64 %48 to %struct.sq_imm_subdesc*
  store %struct.sq_imm_subdesc* %49, %struct.sq_imm_subdesc** %9, align 8
  %50 = load %struct.sq_imm_subdesc*, %struct.sq_imm_subdesc** %9, align 8
  %51 = load i32, i32* @SND_QUEUE_DESC_SIZE, align 4
  %52 = call i32 @memset(%struct.sq_imm_subdesc* %50, i32 0, i32 %51)
  %53 = load i32, i32* @SQ_DESC_TYPE_IMMEDIATE, align 4
  %54 = load %struct.sq_imm_subdesc*, %struct.sq_imm_subdesc** %9, align 8
  %55 = getelementptr inbounds %struct.sq_imm_subdesc, %struct.sq_imm_subdesc* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  %56 = load %struct.sq_imm_subdesc*, %struct.sq_imm_subdesc** %9, align 8
  %57 = getelementptr inbounds %struct.sq_imm_subdesc, %struct.sq_imm_subdesc* %56, i32 0, i32 4
  store i32 1, i32* %57, align 8
  ret void
}

declare dso_local i64 @GET_SQ_DESC(%struct.snd_queue*, i32) #1

declare dso_local i32 @memset(%struct.sq_imm_subdesc*, i32, i32) #1

declare dso_local i32 @nicvf_get_nxt_sqentry(%struct.snd_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
