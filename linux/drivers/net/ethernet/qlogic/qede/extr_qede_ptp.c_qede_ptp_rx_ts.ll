; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ptp.c_qede_ptp_rx_ts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ptp.c_qede_ptp_rx_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32, %struct.qede_ptp* }
%struct.qede_ptp = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i32*)* }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Invalid Rx timestamp\0A\00", align 1
@QED_MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Rx timestamp, timestamp cycles = %llu, ns = %llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qede_ptp_rx_ts(%struct.qede_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.qede_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.qede_ptp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %10 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %9, i32 0, i32 1
  %11 = load %struct.qede_ptp*, %struct.qede_ptp** %10, align 8
  store %struct.qede_ptp* %11, %struct.qede_ptp** %5, align 8
  %12 = load %struct.qede_ptp*, %struct.qede_ptp** %5, align 8
  %13 = icmp ne %struct.qede_ptp* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %54

15:                                               ; preds = %2
  %16 = load %struct.qede_ptp*, %struct.qede_ptp** %5, align 8
  %17 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_bh(i32* %17)
  %19 = load %struct.qede_ptp*, %struct.qede_ptp** %5, align 8
  %20 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (i32, i32*)*, i32 (i32, i32*)** %22, align 8
  %24 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %25 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %23(i32 %26, i32* %6)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %15
  %31 = load %struct.qede_ptp*, %struct.qede_ptp** %5, align 8
  %32 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock_bh(i32* %32)
  %34 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %35 = call i32 @DP_INFO(%struct.qede_dev* %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %54

36:                                               ; preds = %15
  %37 = load %struct.qede_ptp*, %struct.qede_ptp** %5, align 8
  %38 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %37, i32 0, i32 1
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @timecounter_cyc2time(i32* %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.qede_ptp*, %struct.qede_ptp** %5, align 8
  %42 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock_bh(i32* %42)
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @ns_to_ktime(i32 %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call %struct.TYPE_4__* @skb_hwtstamps(%struct.sk_buff* %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %50 = load i32, i32* @QED_MSG_DEBUG, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @DP_VERBOSE(%struct.qede_dev* %49, i32 %50, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %36, %30, %14
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @DP_INFO(%struct.qede_dev*, i8*) #1

declare dso_local i32 @timecounter_cyc2time(i32*, i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local %struct.TYPE_4__* @skb_hwtstamps(%struct.sk_buff*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qede_dev*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
