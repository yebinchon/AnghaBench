; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_intr.c_mic_register_intr_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_intr.c_mic_register_intr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_intr_cb = type { i32, i32, i8*, i8*, i8* }
%struct.mic_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mic_intr_cb* (%struct.mic_device*, i64, i8*, i8*, i8*)* @mic_register_intr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mic_intr_cb* @mic_register_intr_callback(%struct.mic_device* %0, i64 %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.mic_intr_cb*, align 8
  %7 = alloca %struct.mic_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.mic_intr_cb*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.mic_device* %0, %struct.mic_device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.mic_intr_cb* @kmalloc(i32 32, i32 %15)
  store %struct.mic_intr_cb* %16, %struct.mic_intr_cb** %12, align 8
  %17 = load %struct.mic_intr_cb*, %struct.mic_intr_cb** %12, align 8
  %18 = icmp ne %struct.mic_intr_cb* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.mic_intr_cb* @ERR_PTR(i32 %21)
  store %struct.mic_intr_cb* %22, %struct.mic_intr_cb** %6, align 8
  br label %82

23:                                               ; preds = %5
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.mic_intr_cb*, %struct.mic_intr_cb** %12, align 8
  %26 = getelementptr inbounds %struct.mic_intr_cb, %struct.mic_intr_cb* %25, i32 0, i32 4
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load %struct.mic_intr_cb*, %struct.mic_intr_cb** %12, align 8
  %29 = getelementptr inbounds %struct.mic_intr_cb, %struct.mic_intr_cb* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load %struct.mic_intr_cb*, %struct.mic_intr_cb** %12, align 8
  %32 = getelementptr inbounds %struct.mic_intr_cb, %struct.mic_intr_cb* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %34 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i32 @ida_simple_get(i32* %35, i32 0, i32 0, i32 %36)
  %38 = load %struct.mic_intr_cb*, %struct.mic_intr_cb** %12, align 8
  %39 = getelementptr inbounds %struct.mic_intr_cb, %struct.mic_intr_cb* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.mic_intr_cb*, %struct.mic_intr_cb** %12, align 8
  %41 = getelementptr inbounds %struct.mic_intr_cb, %struct.mic_intr_cb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %23
  %45 = load %struct.mic_intr_cb*, %struct.mic_intr_cb** %12, align 8
  %46 = getelementptr inbounds %struct.mic_intr_cb, %struct.mic_intr_cb* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %14, align 4
  br label %77

48:                                               ; preds = %23
  %49 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %50 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @spin_lock(i32* %51)
  %53 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %54 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %13, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load %struct.mic_intr_cb*, %struct.mic_intr_cb** %12, align 8
  %59 = getelementptr inbounds %struct.mic_intr_cb, %struct.mic_intr_cb* %58, i32 0, i32 1
  %60 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %61 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = call i32 @list_add_tail(i32* %59, i32* %65)
  %67 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %68 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64, i64* %13, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %73 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = call i32 @spin_unlock(i32* %74)
  %76 = load %struct.mic_intr_cb*, %struct.mic_intr_cb** %12, align 8
  store %struct.mic_intr_cb* %76, %struct.mic_intr_cb** %6, align 8
  br label %82

77:                                               ; preds = %44
  %78 = load %struct.mic_intr_cb*, %struct.mic_intr_cb** %12, align 8
  %79 = call i32 @kfree(%struct.mic_intr_cb* %78)
  %80 = load i32, i32* %14, align 4
  %81 = call %struct.mic_intr_cb* @ERR_PTR(i32 %80)
  store %struct.mic_intr_cb* %81, %struct.mic_intr_cb** %6, align 8
  br label %82

82:                                               ; preds = %77, %48, %19
  %83 = load %struct.mic_intr_cb*, %struct.mic_intr_cb** %6, align 8
  ret %struct.mic_intr_cb* %83
}

declare dso_local %struct.mic_intr_cb* @kmalloc(i32, i32) #1

declare dso_local %struct.mic_intr_cb* @ERR_PTR(i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.mic_intr_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
