; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_intr.c_mic_setup_callbacks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_intr.c_mic_setup_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32* }

@MIC_NUM_OFFSETS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mic_device*)* @mic_setup_callbacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mic_setup_callbacks(%struct.mic_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mic_device*, align 8
  %4 = alloca i32, align 4
  store %struct.mic_device* %0, %struct.mic_device** %3, align 8
  %5 = load i32, i32* @MIC_NUM_OFFSETS, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i32* @kmalloc_array(i32 %5, i32 4, i32 %6)
  %8 = load %struct.mic_device*, %struct.mic_device** %3, align 8
  %9 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  store i32* %7, i32** %10, align 8
  %11 = load %struct.mic_device*, %struct.mic_device** %3, align 8
  %12 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %49

19:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %33, %19
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MIC_NUM_OFFSETS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load %struct.mic_device*, %struct.mic_device** %3, align 8
  %26 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %20

36:                                               ; preds = %20
  %37 = load %struct.mic_device*, %struct.mic_device** %3, align 8
  %38 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = call i32 @ida_init(i32* %39)
  %41 = load %struct.mic_device*, %struct.mic_device** %3, align 8
  %42 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = call i32 @spin_lock_init(i32* %43)
  %45 = load %struct.mic_device*, %struct.mic_device** %3, align 8
  %46 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @spin_lock_init(i32* %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %36, %16
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ida_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
