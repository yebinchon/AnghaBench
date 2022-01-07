; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_netdev_qidx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_netdev_qidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32, i64 }

@MAX_CMP_QUEUES_PER_QS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nicvf*, i64)* @nicvf_netdev_qidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nicvf_netdev_qidx(%struct.nicvf* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.nicvf*, align 8
  %5 = alloca i64, align 8
  store %struct.nicvf* %0, %struct.nicvf** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %7 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %13 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  %16 = load i32, i32* @MAX_CMP_QUEUES_PER_QS, align 4
  %17 = mul nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %11, %18
  store i64 %19, i64* %3, align 8
  br label %22

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  store i64 %21, i64* %3, align 8
  br label %22

22:                                               ; preds = %20, %10
  %23 = load i64, i64* %3, align 8
  ret i64 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
