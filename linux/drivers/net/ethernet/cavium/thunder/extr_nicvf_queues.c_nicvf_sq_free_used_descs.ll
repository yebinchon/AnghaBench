; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_sq_free_used_descs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_sq_free_used_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.snd_queue = type { i32, i64* }
%struct.sk_buff = type { i32 }
%struct.nicvf = type { i32 }
%struct.sq_hdr_subdesc = type { i64, i32, i32 }

@NIC_QSET_SQ_0_7_HEAD = common dso_local global i32 0, align 4
@NIC_QSET_SQ_0_7_TAIL = common dso_local global i32 0, align 4
@SQ_DESC_TYPE_HEADER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nicvf_sq_free_used_descs(%struct.net_device* %0, %struct.snd_queue* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.snd_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.nicvf*, align 8
  %11 = alloca %struct.sq_hdr_subdesc*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.snd_queue* %1, %struct.snd_queue** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.nicvf* @netdev_priv(%struct.net_device* %12)
  store %struct.nicvf* %13, %struct.nicvf** %10, align 8
  %14 = load %struct.nicvf*, %struct.nicvf** %10, align 8
  %15 = load i32, i32* @NIC_QSET_SQ_0_7_HEAD, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %14, i32 %15, i32 %16)
  %18 = ashr i32 %17, 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.nicvf*, %struct.nicvf** %10, align 8
  %20 = load i32, i32* @NIC_QSET_SQ_0_7_TAIL, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %19, i32 %20, i32 %21)
  %23 = ashr i32 %22, 4
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %61, %42, %3
  %25 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %26 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %79

30:                                               ; preds = %24
  %31 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %32 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %33 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @GET_SQ_DESC(%struct.snd_queue* %31, i32 %34)
  %36 = inttoptr i64 %35 to %struct.sq_hdr_subdesc*
  store %struct.sq_hdr_subdesc* %36, %struct.sq_hdr_subdesc** %11, align 8
  %37 = load %struct.sq_hdr_subdesc*, %struct.sq_hdr_subdesc** %11, align 8
  %38 = getelementptr inbounds %struct.sq_hdr_subdesc, %struct.sq_hdr_subdesc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SQ_DESC_TYPE_HEADER, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %44 = call i32 @nicvf_put_sq_desc(%struct.snd_queue* %43, i32 1)
  br label %24

45:                                               ; preds = %30
  %46 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %47 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %50 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %48, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.sk_buff*
  store %struct.sk_buff* %55, %struct.sk_buff** %9, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %57 = icmp ne %struct.sk_buff* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %45
  %59 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %60 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %59)
  br label %61

61:                                               ; preds = %58, %45
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = call i32 @atomic64_add(i32 1, i32* %64)
  %66 = load %struct.sq_hdr_subdesc*, %struct.sq_hdr_subdesc** %11, align 8
  %67 = getelementptr inbounds %struct.sq_hdr_subdesc, %struct.sq_hdr_subdesc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.net_device*, %struct.net_device** %4, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = call i32 @atomic64_add(i32 %68, i32* %71)
  %73 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %74 = load %struct.sq_hdr_subdesc*, %struct.sq_hdr_subdesc** %11, align 8
  %75 = getelementptr inbounds %struct.sq_hdr_subdesc, %struct.sq_hdr_subdesc* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  %78 = call i32 @nicvf_put_sq_desc(%struct.snd_queue* %73, i32 %77)
  br label %24

79:                                               ; preds = %24
  ret void
}

declare dso_local %struct.nicvf* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nicvf_queue_reg_read(%struct.nicvf*, i32, i32) #1

declare dso_local i64 @GET_SQ_DESC(%struct.snd_queue*, i32) #1

declare dso_local i32 @nicvf_put_sq_desc(%struct.snd_queue*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @atomic64_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
