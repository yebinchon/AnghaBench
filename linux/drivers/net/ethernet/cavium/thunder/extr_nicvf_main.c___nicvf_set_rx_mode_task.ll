; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c___nicvf_set_rx_mode_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c___nicvf_set_rx_mode_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xcast_addr_list = type { i32, i64* }
%struct.nicvf = type { i32 }
%union.nic_mbx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i64 }

@NIC_MBOX_MSG_RESET_XCAST = common dso_local global i8* null, align 8
@BGX_XCAST_MCAST_FILTER = common dso_local global i32 0, align 4
@NIC_MBOX_MSG_ADD_MCAST = common dso_local global i8* null, align 8
@NIC_MBOX_MSG_SET_XCAST = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.xcast_addr_list*, %struct.nicvf*)* @__nicvf_set_rx_mode_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__nicvf_set_rx_mode_task(i32 %0, %struct.xcast_addr_list* %1, %struct.nicvf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xcast_addr_list*, align 8
  %6 = alloca %struct.nicvf*, align 8
  %7 = alloca %union.nic_mbx, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.xcast_addr_list* %1, %struct.xcast_addr_list** %5, align 8
  store %struct.nicvf* %2, %struct.nicvf** %6, align 8
  %9 = bitcast %union.nic_mbx* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = load i8*, i8** @NIC_MBOX_MSG_RESET_XCAST, align 8
  %11 = bitcast %union.nic_mbx* %7 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  %13 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %14 = call i64 @nicvf_send_msg_to_pf(%struct.nicvf* %13, %union.nic_mbx* %7)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %74

17:                                               ; preds = %3
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @BGX_XCAST_MCAST_FILTER, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load i8*, i8** @NIC_MBOX_MSG_ADD_MCAST, align 8
  %24 = bitcast %union.nic_mbx* %7 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = bitcast %union.nic_mbx* %7 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %29 = call i64 @nicvf_send_msg_to_pf(%struct.nicvf* %28, %union.nic_mbx* %7)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %74

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %17
  %34 = load %struct.xcast_addr_list*, %struct.xcast_addr_list** %5, align 8
  %35 = icmp ne %struct.xcast_addr_list* %34, null
  br i1 %35, label %36, label %65

36:                                               ; preds = %33
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %61, %36
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.xcast_addr_list*, %struct.xcast_addr_list** %5, align 8
  %40 = getelementptr inbounds %struct.xcast_addr_list, %struct.xcast_addr_list* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %37
  %44 = load i8*, i8** @NIC_MBOX_MSG_ADD_MCAST, align 8
  %45 = bitcast %union.nic_mbx* %7 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.xcast_addr_list*, %struct.xcast_addr_list** %5, align 8
  %48 = getelementptr inbounds %struct.xcast_addr_list, %struct.xcast_addr_list* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = bitcast %union.nic_mbx* %7 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %57 = call i64 @nicvf_send_msg_to_pf(%struct.nicvf* %56, %union.nic_mbx* %7)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %43
  br label %74

60:                                               ; preds = %43
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %37

64:                                               ; preds = %37
  br label %65

65:                                               ; preds = %64, %33
  %66 = load i8*, i8** @NIC_MBOX_MSG_SET_XCAST, align 8
  %67 = bitcast %union.nic_mbx* %7 to %struct.TYPE_2__*
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* %4, align 4
  %70 = bitcast %union.nic_mbx* %7 to %struct.TYPE_2__*
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %73 = call i64 @nicvf_send_msg_to_pf(%struct.nicvf* %72, %union.nic_mbx* %7)
  br label %74

74:                                               ; preds = %65, %59, %31, %16
  %75 = load %struct.xcast_addr_list*, %struct.xcast_addr_list** %5, align 8
  %76 = call i32 @kfree(%struct.xcast_addr_list* %75)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @nicvf_send_msg_to_pf(%struct.nicvf*, %union.nic_mbx*) #2

declare dso_local i32 @kfree(%struct.xcast_addr_list*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
