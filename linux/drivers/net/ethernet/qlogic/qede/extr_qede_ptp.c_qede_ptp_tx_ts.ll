; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ptp.c_qede_ptp_tx_ts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ptp.c_qede_ptp_tx_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32, i32, %struct.qede_ptp* }
%struct.qede_ptp = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@QEDE_FLAGS_PTP_TX_IN_PRORGESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Timestamping in progress\0A\00", align 1
@QEDE_FLAGS_TX_TIMESTAMPING_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"Tx timestamping was not enabled, this packet will not be timestamped\0A\00", align 1
@.str.2 = private unnamed_addr constant [104 x i8] c"The device supports only a single outstanding packet to timestamp, this packet will not be timestamped\0A\00", align 1
@SKBTX_IN_PROGRESS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qede_ptp_tx_ts(%struct.qede_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.qede_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.qede_ptp*, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %7 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %6, i32 0, i32 2
  %8 = load %struct.qede_ptp*, %struct.qede_ptp** %7, align 8
  store %struct.qede_ptp* %8, %struct.qede_ptp** %5, align 8
  %9 = load %struct.qede_ptp*, %struct.qede_ptp** %5, align 8
  %10 = icmp ne %struct.qede_ptp* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %81

12:                                               ; preds = %2
  %13 = load i32, i32* @QEDE_FLAGS_PTP_TX_IN_PRORGESS, align 4
  %14 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %15 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %14, i32 0, i32 1
  %16 = call i64 @test_and_set_bit_lock(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %20 = call i32 @DP_ERR(%struct.qede_dev* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %22 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  br label %81

25:                                               ; preds = %12
  %26 = load i32, i32* @QEDE_FLAGS_TX_TIMESTAMPING_EN, align 4
  %27 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %28 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %27, i32 0, i32 1
  %29 = call i32 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %25
  %36 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %37 = call i32 @DP_ERR(%struct.qede_dev* %36, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @QEDE_FLAGS_PTP_TX_IN_PRORGESS, align 4
  %39 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %40 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %39, i32 0, i32 1
  %41 = call i32 @clear_bit_unlock(i32 %38, i32* %40)
  %42 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %43 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  br label %81

46:                                               ; preds = %25
  %47 = load %struct.qede_ptp*, %struct.qede_ptp** %5, align 8
  %48 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %46
  %53 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %54 = call i32 @DP_ERR(%struct.qede_dev* %53, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @QEDE_FLAGS_PTP_TX_IN_PRORGESS, align 4
  %56 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %57 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %56, i32 0, i32 1
  %58 = call i32 @clear_bit_unlock(i32 %55, i32* %57)
  %59 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %60 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  br label %80

63:                                               ; preds = %46
  %64 = load i32, i32* @SKBTX_IN_PROGRESS, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %65)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %64
  store i32 %69, i32* %67, align 4
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = call i32 @skb_get(%struct.sk_buff* %70)
  %72 = load %struct.qede_ptp*, %struct.qede_ptp** %5, align 8
  %73 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @jiffies, align 4
  %75 = load %struct.qede_ptp*, %struct.qede_ptp** %5, align 8
  %76 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.qede_ptp*, %struct.qede_ptp** %5, align 8
  %78 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %77, i32 0, i32 1
  %79 = call i32 @schedule_work(i32* %78)
  br label %80

80:                                               ; preds = %63, %52
  br label %81

81:                                               ; preds = %11, %18, %80, %35
  ret void
}

declare dso_local i64 @test_and_set_bit_lock(i32, i32*) #1

declare dso_local i32 @DP_ERR(%struct.qede_dev*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_get(%struct.sk_buff*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
