; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_urb_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_urb_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.mt76_queue_entry = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76_dev*, %struct.mt76_queue_entry*, i32)* @mt76u_urb_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76u_urb_alloc(%struct.mt76_dev* %0, %struct.mt76_queue_entry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt76_dev*, align 8
  %6 = alloca %struct.mt76_queue_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %5, align 8
  store %struct.mt76_queue_entry* %1, %struct.mt76_queue_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 4, i32* %8, align 4
  %9 = load %struct.mt76_dev*, %struct.mt76_dev** %5, align 8
  %10 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = load i32, i32* %8, align 4
  %19 = zext i32 %18 to i64
  %20 = add i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %14, %3
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.TYPE_5__* @kzalloc(i32 %23, i32 %24)
  %26 = load %struct.mt76_queue_entry*, %struct.mt76_queue_entry** %6, align 8
  %27 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %26, i32 0, i32 0
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %27, align 8
  %28 = load %struct.mt76_queue_entry*, %struct.mt76_queue_entry** %6, align 8
  %29 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %22
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %56

35:                                               ; preds = %22
  %36 = load %struct.mt76_queue_entry*, %struct.mt76_queue_entry** %6, align 8
  %37 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = call i32 @usb_init_urb(%struct.TYPE_5__* %38)
  %40 = load %struct.mt76_dev*, %struct.mt76_dev** %5, align 8
  %41 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %35
  %46 = load %struct.mt76_queue_entry*, %struct.mt76_queue_entry** %6, align 8
  %47 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 1
  %50 = bitcast %struct.TYPE_5__* %49 to %struct.scatterlist*
  %51 = load %struct.mt76_queue_entry*, %struct.mt76_queue_entry** %6, align 8
  %52 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store %struct.scatterlist* %50, %struct.scatterlist** %54, align 8
  br label %55

55:                                               ; preds = %45, %35
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %32
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.TYPE_5__* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_init_urb(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
