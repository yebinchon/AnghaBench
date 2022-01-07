; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_alloc_sqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_alloc_sqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { i32**, i64*, i32 }
%struct.sqs_alloc = type { i32, i64 }
%union.nic_mbx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@NIC_MBOX_MSG_ALLOC_SQS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicpf*, %struct.sqs_alloc*)* @nic_alloc_sqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nic_alloc_sqs(%struct.nicpf* %0, %struct.sqs_alloc* %1) #0 {
  %3 = alloca %struct.nicpf*, align 8
  %4 = alloca %struct.sqs_alloc*, align 8
  %5 = alloca %union.nic_mbx, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nicpf* %0, %struct.nicpf** %3, align 8
  store %struct.sqs_alloc* %1, %struct.sqs_alloc** %4, align 8
  %9 = bitcast %union.nic_mbx* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 16, i1 false)
  store i32 0, i32* %7, align 4
  %10 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %11 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %56

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %52, %15
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.sqs_alloc*, %struct.sqs_alloc** %4, align 8
  %19 = getelementptr inbounds %struct.sqs_alloc, %struct.sqs_alloc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %55

22:                                               ; preds = %16
  %23 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %24 = call i32 @nic_nxt_avail_sqs(%struct.nicpf* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %55

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %31 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %30, i32 0, i32 0
  %32 = load i32**, i32*** %31, align 8
  %33 = load %struct.sqs_alloc*, %struct.sqs_alloc** %4, align 8
  %34 = getelementptr inbounds %struct.sqs_alloc, %struct.sqs_alloc* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32*, i32** %32, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %29, i32* %40, align 4
  %41 = load %struct.sqs_alloc*, %struct.sqs_alloc** %4, align 8
  %42 = getelementptr inbounds %struct.sqs_alloc, %struct.sqs_alloc* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %45 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  store i64 %43, i64* %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %28
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %16

55:                                               ; preds = %27, %16
  br label %56

56:                                               ; preds = %55, %14
  %57 = load i32, i32* @NIC_MBOX_MSG_ALLOC_SQS, align 4
  %58 = bitcast %union.nic_mbx* %5 to %struct.TYPE_2__*
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.sqs_alloc*, %struct.sqs_alloc** %4, align 8
  %61 = getelementptr inbounds %struct.sqs_alloc, %struct.sqs_alloc* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = bitcast %union.nic_mbx* %5 to %struct.TYPE_2__*
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load i32, i32* %7, align 4
  %66 = bitcast %union.nic_mbx* %5 to %struct.TYPE_2__*
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %69 = load %struct.sqs_alloc*, %struct.sqs_alloc** %4, align 8
  %70 = getelementptr inbounds %struct.sqs_alloc, %struct.sqs_alloc* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @nic_send_msg_to_vf(%struct.nicpf* %68, i64 %71, %union.nic_mbx* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nic_nxt_avail_sqs(%struct.nicpf*) #2

declare dso_local i32 @nic_send_msg_to_vf(%struct.nicpf*, i64, %union.nic_mbx*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
