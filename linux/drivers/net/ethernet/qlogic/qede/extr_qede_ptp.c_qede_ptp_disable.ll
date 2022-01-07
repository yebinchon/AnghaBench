; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ptp.c_qede_ptp_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ptp.c_qede_ptp_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { %struct.qede_ptp*, i32 }
%struct.qede_ptp = type { i32, %struct.TYPE_2__*, i32*, i32, i32* }
%struct.TYPE_2__ = type { i32 (i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qede_ptp_disable(%struct.qede_dev* %0) #0 {
  %2 = alloca %struct.qede_dev*, align 8
  %3 = alloca %struct.qede_ptp*, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %2, align 8
  %4 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %5 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %4, i32 0, i32 0
  %6 = load %struct.qede_ptp*, %struct.qede_ptp** %5, align 8
  store %struct.qede_ptp* %6, %struct.qede_ptp** %3, align 8
  %7 = load %struct.qede_ptp*, %struct.qede_ptp** %3, align 8
  %8 = icmp ne %struct.qede_ptp* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %57

10:                                               ; preds = %1
  %11 = load %struct.qede_ptp*, %struct.qede_ptp** %3, align 8
  %12 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load %struct.qede_ptp*, %struct.qede_ptp** %3, align 8
  %17 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @ptp_clock_unregister(i32* %18)
  %20 = load %struct.qede_ptp*, %struct.qede_ptp** %3, align 8
  %21 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %20, i32 0, i32 4
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %15, %10
  %23 = load %struct.qede_ptp*, %struct.qede_ptp** %3, align 8
  %24 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %23, i32 0, i32 3
  %25 = call i32 @cancel_work_sync(i32* %24)
  %26 = load %struct.qede_ptp*, %struct.qede_ptp** %3, align 8
  %27 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %22
  %31 = load %struct.qede_ptp*, %struct.qede_ptp** %3, align 8
  %32 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @dev_kfree_skb_any(i32* %33)
  %35 = load %struct.qede_ptp*, %struct.qede_ptp** %3, align 8
  %36 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %30, %22
  %38 = load %struct.qede_ptp*, %struct.qede_ptp** %3, align 8
  %39 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %38, i32 0, i32 0
  %40 = call i32 @spin_lock_bh(i32* %39)
  %41 = load %struct.qede_ptp*, %struct.qede_ptp** %3, align 8
  %42 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (i32)*, i32 (i32)** %44, align 8
  %46 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %47 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 %45(i32 %48)
  %50 = load %struct.qede_ptp*, %struct.qede_ptp** %3, align 8
  %51 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock_bh(i32* %51)
  %53 = load %struct.qede_ptp*, %struct.qede_ptp** %3, align 8
  %54 = call i32 @kfree(%struct.qede_ptp* %53)
  %55 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %56 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %55, i32 0, i32 0
  store %struct.qede_ptp* null, %struct.qede_ptp** %56, align 8
  br label %57

57:                                               ; preds = %37, %9
  ret void
}

declare dso_local i32 @ptp_clock_unregister(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @kfree(%struct.qede_ptp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
