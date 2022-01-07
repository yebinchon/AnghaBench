; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_fr.c_fr_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_fr.c_fr_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pvc_device = type { i64, i64, %struct.pvc_device* }
%struct.TYPE_2__ = type { i32, i64, %struct.pvc_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @fr_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fr_destroy(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.pvc_device*, align 8
  %5 = alloca %struct.pvc_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32* @dev_to_hdlc(%struct.net_device* %6)
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call %struct.TYPE_2__* @state(i32* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load %struct.pvc_device*, %struct.pvc_device** %10, align 8
  store %struct.pvc_device* %11, %struct.pvc_device** %4, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call %struct.TYPE_2__* @state(i32* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  store %struct.pvc_device* null, %struct.pvc_device** %14, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call %struct.TYPE_2__* @state(i32* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call %struct.TYPE_2__* @state(i32* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  br label %21

21:                                               ; preds = %47, %1
  %22 = load %struct.pvc_device*, %struct.pvc_device** %4, align 8
  %23 = icmp ne %struct.pvc_device* %22, null
  br i1 %23, label %24, label %51

24:                                               ; preds = %21
  %25 = load %struct.pvc_device*, %struct.pvc_device** %4, align 8
  %26 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %25, i32 0, i32 2
  %27 = load %struct.pvc_device*, %struct.pvc_device** %26, align 8
  store %struct.pvc_device* %27, %struct.pvc_device** %5, align 8
  %28 = load %struct.pvc_device*, %struct.pvc_device** %4, align 8
  %29 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.pvc_device*, %struct.pvc_device** %4, align 8
  %34 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @unregister_netdevice(i64 %35)
  br label %37

37:                                               ; preds = %32, %24
  %38 = load %struct.pvc_device*, %struct.pvc_device** %4, align 8
  %39 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.pvc_device*, %struct.pvc_device** %4, align 8
  %44 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @unregister_netdevice(i64 %45)
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.pvc_device*, %struct.pvc_device** %4, align 8
  %49 = call i32 @kfree(%struct.pvc_device* %48)
  %50 = load %struct.pvc_device*, %struct.pvc_device** %5, align 8
  store %struct.pvc_device* %50, %struct.pvc_device** %4, align 8
  br label %21

51:                                               ; preds = %21
  ret void
}

declare dso_local i32* @dev_to_hdlc(%struct.net_device*) #1

declare dso_local %struct.TYPE_2__* @state(i32*) #1

declare dso_local i32 @unregister_netdevice(i64) #1

declare dso_local i32 @kfree(%struct.pvc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
