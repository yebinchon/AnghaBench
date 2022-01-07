; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_process_rcv_diag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_process_rcv_diag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32, %struct.qlcnic_recv_context* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.qlcnic_recv_context = type { %struct.qlcnic_host_rds_ring* }
%struct.qlcnic_host_rds_ring = type { i32, i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*, i32, i32)* @qlcnic_process_rcv_diag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_process_rcv_diag(%struct.qlcnic_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qlcnic_recv_context*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.qlcnic_host_rds_ring*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 4
  %16 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %15, align 8
  store %struct.qlcnic_recv_context* %16, %struct.qlcnic_recv_context** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %19 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %17, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %116

26:                                               ; preds = %3
  %27 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %7, align 8
  %28 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %27, i32 0, i32 0
  %29 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %29, i64 %31
  store %struct.qlcnic_host_rds_ring* %32, %struct.qlcnic_host_rds_ring** %9, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @qlcnic_get_sts_refhandle(i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @qlcnic_get_sts_totallength(i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %9, align 8
  %39 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sge i32 %37, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %26
  br label %116

46:                                               ; preds = %26
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @qlcnic_get_sts_status(i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @qlcnic_get_sts_pkt_offset(i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %52 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call %struct.sk_buff* @qlcnic_process_rxbuf(%struct.qlcnic_adapter* %51, %struct.qlcnic_host_rds_ring* %52, i32 %53, i32 %54)
  store %struct.sk_buff* %55, %struct.sk_buff** %8, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %57 = icmp ne %struct.sk_buff* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %46
  br label %116

59:                                               ; preds = %46
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %9, align 8
  %62 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %60, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %67 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %9, align 8
  %68 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @skb_put(%struct.sk_buff* %66, i32 %69)
  br label %75

71:                                               ; preds = %59
  %72 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @skb_put(%struct.sk_buff* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %65
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @skb_pull(%struct.sk_buff* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %75
  %83 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %87 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @qlcnic_check_loopback_buff(i32 %85, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %82
  %92 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %93 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %92, i32 0, i32 2
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %102

98:                                               ; preds = %82
  %99 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %100 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %101 = call i32 @dump_skb(%struct.sk_buff* %99, %struct.qlcnic_adapter* %100)
  br label %102

102:                                              ; preds = %98, %91
  %103 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %104 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %103)
  %105 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %106 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %112 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, %110
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %102, %58, %45, %25
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @qlcnic_get_sts_refhandle(i32) #1

declare dso_local i32 @qlcnic_get_sts_totallength(i32) #1

declare dso_local i32 @qlcnic_get_sts_status(i32) #1

declare dso_local i32 @qlcnic_get_sts_pkt_offset(i32) #1

declare dso_local %struct.sk_buff* @qlcnic_process_rxbuf(%struct.qlcnic_adapter*, %struct.qlcnic_host_rds_ring*, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @qlcnic_check_loopback_buff(i32, i32) #1

declare dso_local i32 @dump_skb(%struct.sk_buff*, %struct.qlcnic_adapter*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
