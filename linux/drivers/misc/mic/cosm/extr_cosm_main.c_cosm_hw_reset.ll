; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/cosm/extr_cosm_main.c_cosm_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/cosm/extr_cosm_main.c_cosm_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cosm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.cosm_device*)*, i32 (%struct.cosm_device*)*, i32 (%struct.cosm_device*)* }

@MIC_READY = common dso_local global i32 0, align 4
@MIC_RESET_FAILED = common dso_local global i32 0, align 4
@MIC_RESET_TO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cosm_device*, i32)* @cosm_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cosm_hw_reset(%struct.cosm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.cosm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cosm_device* %0, %struct.cosm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %10 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load i32 (%struct.cosm_device*)*, i32 (%struct.cosm_device*)** %12, align 8
  %14 = icmp ne i32 (%struct.cosm_device*)* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %8
  %16 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %17 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32 (%struct.cosm_device*)*, i32 (%struct.cosm_device*)** %19, align 8
  %21 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %22 = call i32 %20(%struct.cosm_device* %21)
  br label %31

23:                                               ; preds = %8, %2
  %24 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %25 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32 (%struct.cosm_device*)*, i32 (%struct.cosm_device*)** %27, align 8
  %29 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %30 = call i32 %28(%struct.cosm_device* %29)
  br label %31

31:                                               ; preds = %23, %15
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %50, %31
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 45
  br i1 %34, label %35, label %53

35:                                               ; preds = %32
  %36 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %37 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64 (%struct.cosm_device*)*, i64 (%struct.cosm_device*)** %39, align 8
  %41 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %42 = call i64 %40(%struct.cosm_device* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %46 = load i32, i32* @MIC_READY, align 4
  %47 = call i32 @cosm_set_state(%struct.cosm_device* %45, i32 %46)
  br label %57

48:                                               ; preds = %35
  %49 = call i32 @msleep(i32 1000)
  br label %50

50:                                               ; preds = %48
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %32

53:                                               ; preds = %32
  %54 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %55 = load i32, i32* @MIC_RESET_FAILED, align 4
  %56 = call i32 @cosm_set_state(%struct.cosm_device* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %44
  ret void
}

declare dso_local i32 @cosm_set_state(%struct.cosm_device*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
