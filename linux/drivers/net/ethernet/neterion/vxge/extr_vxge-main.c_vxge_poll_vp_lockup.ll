; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_poll_vp_lockup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_poll_vp_lockup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxgedev = type { i32, i32, %struct.vxge_vpath*, i32 }
%struct.vxge_vpath = type { %struct.TYPE_3__, %struct.vxge_ring }
%struct.TYPE_3__ = type { i32 }
%struct.vxge_ring = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.timer_list = type { i32 }

@vp_lockup_timer = common dso_local global i32 0, align 4
@VXGE_HW_OK = common dso_local global i32 0, align 4
@VXGE_HW_FAIL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@vdev = common dso_local global %struct.vxgedev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @vxge_poll_vp_lockup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxge_poll_vp_lockup(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.vxgedev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vxge_vpath*, align 8
  %6 = alloca %struct.vxge_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %9 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %10 = ptrtoint %struct.vxgedev* %9 to i32
  %11 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %12 = load i32, i32* @vp_lockup_timer, align 4
  %13 = call %struct.vxgedev* @from_timer(i32 %10, %struct.timer_list* %11, i32 %12)
  store %struct.vxgedev* %13, %struct.vxgedev** %3, align 8
  %14 = load i32, i32* @VXGE_HW_OK, align 4
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %85, %1
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %18 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %88

21:                                               ; preds = %15
  %22 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %23 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %22, i32 0, i32 2
  %24 = load %struct.vxge_vpath*, %struct.vxge_vpath** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %24, i64 %26
  %28 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %27, i32 0, i32 1
  store %struct.vxge_ring* %28, %struct.vxge_ring** %6, align 8
  %29 = load %struct.vxge_ring*, %struct.vxge_ring** %6, align 8
  %30 = getelementptr inbounds %struct.vxge_ring, %struct.vxge_ring* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @READ_ONCE(i32 %32)
  store i64 %33, i64* %8, align 8
  %34 = load %struct.vxge_ring*, %struct.vxge_ring** %6, align 8
  %35 = getelementptr inbounds %struct.vxge_ring, %struct.vxge_ring* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %77

40:                                               ; preds = %21
  %41 = load %struct.vxge_ring*, %struct.vxge_ring** %6, align 8
  %42 = getelementptr inbounds %struct.vxge_ring, %struct.vxge_ring* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @vxge_hw_vpath_check_leak(i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* @VXGE_HW_FAIL, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %76

48:                                               ; preds = %40
  %49 = load i32, i32* @VXGE_HW_FAIL, align 4
  %50 = load %struct.vxge_ring*, %struct.vxge_ring** %6, align 8
  %51 = getelementptr inbounds %struct.vxge_ring, %struct.vxge_ring* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %48
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %57 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %56, i32 0, i32 3
  %58 = call i32 @test_and_set_bit(i32 %55, i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %75, label %60

60:                                               ; preds = %54
  %61 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %62 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %61, i32 0, i32 2
  %63 = load %struct.vxge_vpath*, %struct.vxge_vpath** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %63, i64 %65
  store %struct.vxge_vpath* %66, %struct.vxge_vpath** %5, align 8
  %67 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @vxge_vpath_intr_disable(%struct.vxgedev* %67, i32 %68)
  %70 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %71 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @netif_tx_stop_queue(i32 %73)
  br label %85

75:                                               ; preds = %54
  br label %76

76:                                               ; preds = %75, %48, %40
  br label %77

77:                                               ; preds = %76, %21
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.vxge_ring*, %struct.vxge_ring** %6, align 8
  %80 = getelementptr inbounds %struct.vxge_ring, %struct.vxge_ring* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i64 %78, i64* %81, align 8
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.vxge_ring*, %struct.vxge_ring** %6, align 8
  %84 = getelementptr inbounds %struct.vxge_ring, %struct.vxge_ring* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %77, %60
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %15

88:                                               ; preds = %15
  %89 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %90 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %89, i32 0, i32 1
  %91 = load i64, i64* @jiffies, align 8
  %92 = load i32, i32* @HZ, align 4
  %93 = sdiv i32 %92, 1000
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %91, %94
  %96 = call i32 @mod_timer(i32* %90, i64 %95)
  ret void
}

declare dso_local %struct.vxgedev* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @vxge_hw_vpath_check_leak(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @vxge_vpath_intr_disable(%struct.vxgedev*, i32) #1

declare dso_local i32 @netif_tx_stop_queue(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
