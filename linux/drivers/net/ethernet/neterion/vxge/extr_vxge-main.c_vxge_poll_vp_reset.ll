; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_poll_vp_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_poll_vp_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxgedev = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.timer_list = type { i32 }

@vp_reset_timer = common dso_local global i32 0, align 4
@MSI_X = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@vdev = common dso_local global %struct.vxgedev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @vxge_poll_vp_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxge_poll_vp_reset(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.vxgedev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %7 = ptrtoint %struct.vxgedev* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @vp_reset_timer, align 4
  %10 = call %struct.vxgedev* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.vxgedev* %10, %struct.vxgedev** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %30, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %14 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %20 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %19, i32 0, i32 4
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @vxge_reset_vpath(%struct.vxgedev* %24, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %23, %17
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %11

33:                                               ; preds = %11
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %38 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MSI_X, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %45 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @vxge_hw_device_unmask_all(i32 %46)
  %48 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %49 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @vxge_hw_device_flush_io(i32 %50)
  br label %52

52:                                               ; preds = %43, %36, %33
  %53 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %54 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %53, i32 0, i32 1
  %55 = load i64, i64* @jiffies, align 8
  %56 = load i32, i32* @HZ, align 4
  %57 = sdiv i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %55, %58
  %60 = call i32 @mod_timer(i32* %54, i64 %59)
  ret void
}

declare dso_local %struct.vxgedev* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @vxge_reset_vpath(%struct.vxgedev*, i32) #1

declare dso_local i32 @vxge_hw_device_unmask_all(i32) #1

declare dso_local i32 @vxge_hw_device_flush_io(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
