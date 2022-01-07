; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_usbnet.c_usbnet_update_max_qlen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_usbnet.c_usbnet_update_max_qlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAX_QUEUE_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbnet_update_max_qlen(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %4 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %5 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %4, i32 0, i32 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %10 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %15 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %1
  br label %54

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4
  switch i32 %20, label %53 [
    i32 130, label %21
    i32 129, label %36
    i32 128, label %36
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* @MAX_QUEUE_MEMORY, align 4
  %23 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %24 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sdiv i32 %22, %25
  %27 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %28 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @MAX_QUEUE_MEMORY, align 4
  %30 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %31 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %29, %32
  %34 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %35 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  br label %59

36:                                               ; preds = %19, %19
  %37 = load i32, i32* @MAX_QUEUE_MEMORY, align 4
  %38 = mul nsw i32 5, %37
  %39 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %40 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sdiv i32 %38, %41
  %43 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %44 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @MAX_QUEUE_MEMORY, align 4
  %46 = mul nsw i32 5, %45
  %47 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %48 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %46, %49
  %51 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %52 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  br label %59

53:                                               ; preds = %19
  br label %54

54:                                               ; preds = %53, %18
  %55 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %56 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %55, i32 0, i32 3
  store i32 4, i32* %56, align 4
  %57 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %58 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %57, i32 0, i32 2
  store i32 4, i32* %58, align 8
  br label %59

59:                                               ; preds = %54, %36, %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
