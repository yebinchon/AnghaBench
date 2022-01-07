; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_monitor_vdev_is_needed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_monitor_vdev_is_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, i32, %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@ATH10K_FW_FEATURE_ALLOWS_MESH_BCAST = common dso_local global i32 0, align 4
@FIF_OTHER_BSS = common dso_local global i32 0, align 4
@ATH10K_CAC_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_mac_monitor_vdev_is_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_mac_monitor_vdev_is_needed(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %5 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %6 = call i32 @ath10k_mac_num_chanctxs(%struct.ath10k* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

10:                                               ; preds = %1
  %11 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %12 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %47

16:                                               ; preds = %10
  %17 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %18 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %44, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ATH10K_FW_FEATURE_ALLOWS_MESH_BCAST, align 4
  %23 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %24 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @test_bit(i32 %22, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %21
  %32 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %33 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @FIF_OTHER_BSS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %31, %21
  %39 = load i32, i32* @ATH10K_CAC_RUNNING, align 4
  %40 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %41 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %40, i32 0, i32 1
  %42 = call i64 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %38, %31, %16
  %45 = phi i1 [ true, %31 ], [ true, %16 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %15, %9
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @ath10k_mac_num_chanctxs(%struct.ath10k*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
