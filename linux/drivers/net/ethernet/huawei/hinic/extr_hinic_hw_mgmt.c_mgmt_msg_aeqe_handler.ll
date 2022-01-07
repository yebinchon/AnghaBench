; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_mgmt.c_mgmt_msg_aeqe_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_mgmt.c_mgmt_msg_aeqe_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_pf_to_mgmt = type { %struct.hinic_recv_msg, %struct.hinic_recv_msg }
%struct.hinic_recv_msg = type { i32 }

@DIRECTION = common dso_local global i32 0, align 4
@MGMT_DIRECT_SEND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @mgmt_msg_aeqe_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mgmt_msg_aeqe_handler(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hinic_pf_to_mgmt*, align 8
  %8 = alloca %struct.hinic_recv_msg*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.hinic_pf_to_mgmt*
  store %struct.hinic_pf_to_mgmt* %11, %struct.hinic_pf_to_mgmt** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DIRECTION, align 4
  %17 = call i64 @HINIC_MSG_HEADER_GET(i32 %15, i32 %16)
  %18 = load i64, i64* @MGMT_DIRECT_SEND, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %7, align 8
  %22 = getelementptr inbounds %struct.hinic_pf_to_mgmt, %struct.hinic_pf_to_mgmt* %21, i32 0, i32 1
  br label %26

23:                                               ; preds = %3
  %24 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %7, align 8
  %25 = getelementptr inbounds %struct.hinic_pf_to_mgmt, %struct.hinic_pf_to_mgmt* %24, i32 0, i32 0
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi %struct.hinic_recv_msg* [ %22, %20 ], [ %25, %23 ]
  store %struct.hinic_recv_msg* %27, %struct.hinic_recv_msg** %8, align 8
  %28 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %7, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %8, align 8
  %31 = call i32 @recv_mgmt_msg_handler(%struct.hinic_pf_to_mgmt* %28, i32* %29, %struct.hinic_recv_msg* %30)
  ret void
}

declare dso_local i64 @HINIC_MSG_HEADER_GET(i32, i32) #1

declare dso_local i32 @recv_mgmt_msg_handler(%struct.hinic_pf_to_mgmt*, i32*, %struct.hinic_recv_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
