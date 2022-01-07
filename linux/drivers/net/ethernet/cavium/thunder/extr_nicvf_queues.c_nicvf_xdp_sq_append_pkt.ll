; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_xdp_sq_append_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_xdp_sq_append_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32 }
%struct.snd_queue = type { i32, i32 }

@MIN_SQ_DESC_PER_PKT_XMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nicvf_xdp_sq_append_pkt(%struct.nicvf* %0, %struct.snd_queue* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nicvf*, align 8
  %8 = alloca %struct.snd_queue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %7, align 8
  store %struct.snd_queue* %1, %struct.snd_queue** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @MIN_SQ_DESC_PER_PKT_XMIT, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = load %struct.snd_queue*, %struct.snd_queue** %8, align 8
  %17 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %45

21:                                               ; preds = %5
  %22 = load %struct.snd_queue*, %struct.snd_queue** %8, align 8
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @nicvf_get_sq_desc(%struct.snd_queue* %22, i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load %struct.snd_queue*, %struct.snd_queue** %8, align 8
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %12, align 4
  %28 = sub nsw i32 %27, 1
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @nicvf_xdp_sq_add_hdr_subdesc(%struct.snd_queue* %25, i32 %26, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.snd_queue*, %struct.snd_queue** %8, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @nicvf_get_nxt_sqentry(%struct.snd_queue* %32, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load %struct.snd_queue*, %struct.snd_queue** %8, align 8
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @nicvf_sq_add_gather_subdesc(%struct.snd_queue* %35, i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.snd_queue*, %struct.snd_queue** %8, align 8
  %42 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, %40
  store i32 %44, i32* %42, align 4
  store i32 1, i32* %6, align 4
  br label %45

45:                                               ; preds = %21, %20
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @nicvf_get_sq_desc(%struct.snd_queue*, i32) #1

declare dso_local i32 @nicvf_xdp_sq_add_hdr_subdesc(%struct.snd_queue*, i32, i32, i32, i32) #1

declare dso_local i32 @nicvf_get_nxt_sqentry(%struct.snd_queue*, i32) #1

declare dso_local i32 @nicvf_sq_add_gather_subdesc(%struct.snd_queue*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
