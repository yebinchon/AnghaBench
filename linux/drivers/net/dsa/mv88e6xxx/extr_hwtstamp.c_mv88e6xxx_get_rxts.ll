; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_hwtstamp.c_mv88e6xxx_get_rxts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_hwtstamp.c_mv88e6xxx_get_rxts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }
%struct.mv88e6xxx_port_hwtstamp = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.skb_shared_hwtstamps = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"failed to get the receive time stamp\0A\00", align 1
@MV88E6XXX_PTP_TS_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to clear the receive status\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_port_hwtstamp*, %struct.sk_buff*, i32, %struct.sk_buff_head*)* @mv88e6xxx_get_rxts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv88e6xxx_get_rxts(%struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_port_hwtstamp* %1, %struct.sk_buff* %2, i32 %3, %struct.sk_buff_head* %4) #0 {
  %6 = alloca %struct.mv88e6xxx_chip*, align 8
  %7 = alloca %struct.mv88e6xxx_port_hwtstamp*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff_head*, align 8
  %11 = alloca [4 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.skb_shared_hwtstamps*, align 8
  %15 = alloca %struct.sk_buff_head, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %6, align 8
  store %struct.mv88e6xxx_port_hwtstamp* %1, %struct.mv88e6xxx_port_hwtstamp** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.sk_buff_head* %4, %struct.sk_buff_head** %10, align 8
  %21 = bitcast [4 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 16, i1 false)
  %22 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %15)
  %23 = load %struct.sk_buff_head*, %struct.sk_buff_head** %10, align 8
  %24 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %23, i32 0, i32 0
  %25 = load i64, i64* %19, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.sk_buff_head*, %struct.sk_buff_head** %10, align 8
  %28 = call i32 @skb_queue_splice_tail_init(%struct.sk_buff_head* %27, %struct.sk_buff_head* %15)
  %29 = load %struct.sk_buff_head*, %struct.sk_buff_head** %10, align 8
  %30 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %29, i32 0, i32 0
  %31 = load i64, i64* %19, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %34 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %33)
  %35 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %36 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %7, align 8
  %37 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %9, align 4
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %42 = call i32 @ARRAY_SIZE(i32* %41)
  %43 = call i32 @mv88e6xxx_port_ptp_read(%struct.mv88e6xxx_chip* %35, i32 %38, i32 %39, i32* %40, i32 %42)
  store i32 %43, i32* %20, align 4
  %44 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %45 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %44)
  %46 = load i32, i32* %20, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %5
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %5
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %52 = load i32, i32* %51, align 16
  store i32 %52, i32* %12, align 4
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %17, align 4
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %18, align 4
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @MV88E6XXX_PTP_TS_VALID, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %50
  %64 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %65 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %64)
  %66 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %67 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %7, align 8
  %68 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @mv88e6xxx_port_ptp_write(%struct.mv88e6xxx_chip* %66, i32 %69, i32 %70, i32 0)
  store i32 %71, i32* %20, align 4
  %72 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %73 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %72)
  %74 = load i32, i32* %20, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %63
  %77 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %63
  br label %79

79:                                               ; preds = %78, %50
  br label %80

80:                                               ; preds = %120, %79
  %81 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %82 = icmp ne %struct.sk_buff* %81, null
  br i1 %82, label %83, label %122

83:                                               ; preds = %80
  %84 = load i32, i32* %12, align 4
  %85 = call i64 @mv88e6xxx_ts_valid(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %117

87:                                               ; preds = %83
  %88 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %89 = load i32, i32* %13, align 4
  %90 = call i64 @seq_match(%struct.sk_buff* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %117

92:                                               ; preds = %87
  %93 = load i32, i32* %18, align 4
  %94 = shl i32 %93, 16
  %95 = load i32, i32* %17, align 4
  %96 = or i32 %94, %95
  store i32 %96, i32* %16, align 4
  %97 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %98 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %97)
  %99 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %100 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %99, i32 0, i32 0
  %101 = load i32, i32* %16, align 4
  %102 = call i32 @timecounter_cyc2time(i32* %100, i32 %101)
  store i32 %102, i32* %16, align 4
  %103 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %104 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %103)
  %105 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %106 = call %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff* %105)
  store %struct.skb_shared_hwtstamps* %106, %struct.skb_shared_hwtstamps** %14, align 8
  %107 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %14, align 8
  %108 = call i32 @memset(%struct.skb_shared_hwtstamps* %107, i32 0, i32 4)
  %109 = load i32, i32* %16, align 4
  %110 = call i32 @ns_to_ktime(i32 %109)
  %111 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %14, align 8
  %112 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @MV88E6XXX_PTP_TS_VALID, align 4
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %12, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %92, %87, %83
  %118 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %119 = call i32 @netif_rx_ni(%struct.sk_buff* %118)
  br label %120

120:                                              ; preds = %117
  %121 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %15)
  store %struct.sk_buff* %121, %struct.sk_buff** %8, align 8
  br label %80

122:                                              ; preds = %80
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @skb_queue_splice_tail_init(%struct.sk_buff_head*, %struct.sk_buff_head*) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip*) #2

declare dso_local i32 @mv88e6xxx_port_ptp_read(%struct.mv88e6xxx_chip*, i32, i32, i32*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip*) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i32 @mv88e6xxx_port_ptp_write(%struct.mv88e6xxx_chip*, i32, i32, i32) #2

declare dso_local i64 @mv88e6xxx_ts_valid(i32) #2

declare dso_local i64 @seq_match(%struct.sk_buff*, i32) #2

declare dso_local i32 @timecounter_cyc2time(i32*, i32) #2

declare dso_local %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff*) #2

declare dso_local i32 @memset(%struct.skb_shared_hwtstamps*, i32, i32) #2

declare dso_local i32 @ns_to_ktime(i32) #2

declare dso_local i32 @netif_rx_ni(%struct.sk_buff*) #2

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
