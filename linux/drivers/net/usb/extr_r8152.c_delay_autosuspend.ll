; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_delay_autosuspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_delay_autosuspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64 (%struct.r8152.0*)* }
%struct.r8152.0 = type opaque
%struct.TYPE_3__ = type { i32 }

@LINK_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r8152*)* @delay_autosuspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delay_autosuspend(%struct.r8152* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r8152*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %3, align 8
  %6 = load %struct.r8152*, %struct.r8152** %3, align 8
  %7 = getelementptr inbounds %struct.r8152, %struct.r8152* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @netif_carrier_ok(i32 %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %4, align 4
  %14 = load %struct.r8152*, %struct.r8152** %3, align 8
  %15 = call i32 @rtl8152_get_speed(%struct.r8152* %14)
  %16 = load i32, i32* @LINK_STATUS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load %struct.r8152*, %struct.r8152** %3, align 8
  %23 = getelementptr inbounds %struct.r8152, %struct.r8152* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i64 @work_busy(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %1
  store i32 1, i32* %2, align 4
  br label %52

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = load %struct.r8152*, %struct.r8152** %3, align 8
  %37 = getelementptr inbounds %struct.r8152, %struct.r8152* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64 (%struct.r8152.0*)*, i64 (%struct.r8152.0*)** %38, align 8
  %40 = load %struct.r8152*, %struct.r8152** %3, align 8
  %41 = bitcast %struct.r8152* %40 to %struct.r8152.0*
  %42 = call i64 %39(%struct.r8152.0* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %52

45:                                               ; preds = %35, %32
  %46 = load %struct.r8152*, %struct.r8152** %3, align 8
  %47 = getelementptr inbounds %struct.r8152, %struct.r8152* %46, i32 0, i32 0
  %48 = call i32 @skb_queue_empty(i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  store i32 1, i32* %2, align 4
  br label %52

51:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %50, %44, %31
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @netif_carrier_ok(i32) #1

declare dso_local i32 @rtl8152_get_speed(%struct.r8152*) #1

declare dso_local i64 @work_busy(i32*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
