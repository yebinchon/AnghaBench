; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_do_lb_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_do_lb_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32, %struct.qlcnic_recv_context* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.qlcnic_recv_context = type { %struct.qlcnic_host_sds_ring* }
%struct.qlcnic_host_sds_ring = type { i32 }
%struct.sk_buff = type { i32 }

@QLCNIC_NUM_ILB_PKT = common dso_local global i32 0, align 4
@QLCNIC_ILB_PKT_SIZE = common dso_local global i32 0, align 4
@QLCNIC_LB_PKT_POLL_DELAY_MSEC = common dso_local global i32 0, align 4
@QLCNIC_LB_PKT_POLL_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"LB Test: packet #%d was not received\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"LB Test: failed, TX[%d], RX[%d]\0A\00", align 1
@QLCNIC_ILB_MODE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"WARNING: Please check loopback cable\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_do_lb_test(%struct.qlcnic_adapter* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qlcnic_recv_context*, align 8
  %7 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 4
  %14 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %13, align 8
  store %struct.qlcnic_recv_context* %14, %struct.qlcnic_recv_context** %6, align 8
  %15 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %6, align 8
  %16 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %15, i32 0, i32 0
  %17 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %16, align 8
  %18 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %17, i64 0
  store %struct.qlcnic_host_sds_ring* %18, %struct.qlcnic_host_sds_ring** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %92, %2
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @QLCNIC_NUM_ILB_PKT, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %95

23:                                               ; preds = %19
  %24 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @QLCNIC_ILB_PKT_SIZE, align 4
  %28 = call %struct.sk_buff* @netdev_alloc_skb(i32 %26, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %8, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  br label %95

32:                                               ; preds = %23
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %37 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @qlcnic_create_loopback_buff(i32 %35, i32 %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = load i32, i32* @QLCNIC_ILB_PKT_SIZE, align 4
  %42 = call i32 @skb_put(%struct.sk_buff* %40, i32 %41)
  %43 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %44 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %49 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @qlcnic_xmit_frame(%struct.sk_buff* %47, i32 %50)
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %63, %32
  %53 = load i32, i32* @QLCNIC_LB_PKT_POLL_DELAY_MSEC, align 4
  %54 = call i32 @msleep(i32 %53)
  %55 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %7, align 8
  %56 = call i32 @qlcnic_process_rcv_ring_diag(%struct.qlcnic_host_sds_ring* %55)
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* @QLCNIC_LB_PKT_POLL_COUNT, align 4
  %60 = icmp sgt i32 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %71

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %65 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  %70 = xor i1 %69, true
  br i1 %70, label %52, label %71

71:                                               ; preds = %63, %61
  %72 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %73 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %72)
  %74 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %75 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %74, i32 0, i32 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %71
  %81 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %82 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  %87 = call i32 (i32*, i8*, ...) @dev_warn(i32* %84, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %86)
  br label %91

88:                                               ; preds = %71
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %88, %80
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %19

95:                                               ; preds = %31, %19
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %117

99:                                               ; preds = %95
  %100 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %101 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @dev_err(i32* %103, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %104, i32 %105)
  %107 = load i64, i64* %5, align 8
  %108 = load i64, i64* @QLCNIC_ILB_MODE, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %99
  %111 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %112 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = call i32 (i32*, i8*, ...) @dev_warn(i32* %114, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %116

116:                                              ; preds = %110, %99
  store i32 -1, i32* %3, align 4
  br label %118

117:                                              ; preds = %95
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %116
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i32) #1

declare dso_local i32 @qlcnic_create_loopback_buff(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @qlcnic_xmit_frame(%struct.sk_buff*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qlcnic_process_rcv_ring_diag(%struct.qlcnic_host_sds_ring*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
