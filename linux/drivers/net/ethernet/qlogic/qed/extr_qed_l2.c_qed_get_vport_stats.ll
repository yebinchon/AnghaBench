; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_get_vport_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_get_vport_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i64 }
%struct.qed_eth_stats = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_get_vport_stats(%struct.qed_dev* %0, %struct.qed_eth_stats* %1) #0 {
  %3 = alloca %struct.qed_dev*, align 8
  %4 = alloca %struct.qed_eth_stats*, align 8
  %5 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %3, align 8
  store %struct.qed_eth_stats* %1, %struct.qed_eth_stats** %4, align 8
  %6 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %7 = icmp ne %struct.qed_dev* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load %struct.qed_eth_stats*, %struct.qed_eth_stats** %4, align 8
  %10 = call i32 @memset(%struct.qed_eth_stats* %9, i32 0, i32 4)
  br label %44

11:                                               ; preds = %2
  %12 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %13 = load %struct.qed_eth_stats*, %struct.qed_eth_stats** %4, align 8
  %14 = call i32 @_qed_get_vport_stats(%struct.qed_dev* %12, %struct.qed_eth_stats* %13)
  %15 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %16 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  br label %44

20:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %41, %20
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %21
  %26 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %27 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i64*
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.qed_eth_stats*, %struct.qed_eth_stats** %4, align 8
  %35 = bitcast %struct.qed_eth_stats* %34 to i64*
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %39, %33
  store i64 %40, i64* %38, align 8
  br label %41

41:                                               ; preds = %25
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %21

44:                                               ; preds = %8, %19, %21
  ret void
}

declare dso_local i32 @memset(%struct.qed_eth_stats*, i32, i32) #1

declare dso_local i32 @_qed_get_vport_stats(%struct.qed_dev*, %struct.qed_eth_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
