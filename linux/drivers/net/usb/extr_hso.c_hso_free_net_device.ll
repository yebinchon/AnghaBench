; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_free_net_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_free_net_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_device = type { i32 }
%struct.hso_net = type { i64, %struct.hso_device*, i32, %struct.hso_device**, i32*, i32 }

@MUX_BULK_RX_BUF_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hso_device*)* @hso_free_net_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hso_free_net_device(%struct.hso_device* %0) #0 {
  %2 = alloca %struct.hso_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hso_net*, align 8
  store %struct.hso_device* %0, %struct.hso_device** %2, align 8
  %5 = load %struct.hso_device*, %struct.hso_device** %2, align 8
  %6 = call %struct.hso_net* @dev2net(%struct.hso_device* %5)
  store %struct.hso_net* %6, %struct.hso_net** %4, align 8
  %7 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %8 = icmp ne %struct.hso_net* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %78

10:                                               ; preds = %1
  %11 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %12 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @remove_net_device(i32 %13)
  %15 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %16 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %10
  %20 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %21 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @unregister_netdev(i64 %22)
  br label %24

24:                                               ; preds = %19, %10
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %52, %24
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @MUX_BULK_RX_BUF_COUNT, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %25
  %30 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %31 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @usb_free_urb(i32 %36)
  %38 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %39 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %38, i32 0, i32 3
  %40 = load %struct.hso_device**, %struct.hso_device*** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.hso_device*, %struct.hso_device** %40, i64 %42
  %44 = load %struct.hso_device*, %struct.hso_device** %43, align 8
  %45 = call i32 @kfree(%struct.hso_device* %44)
  %46 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %47 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %46, i32 0, i32 3
  %48 = load %struct.hso_device**, %struct.hso_device*** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.hso_device*, %struct.hso_device** %48, i64 %50
  store %struct.hso_device* null, %struct.hso_device** %51, align 8
  br label %52

52:                                               ; preds = %29
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %25

55:                                               ; preds = %25
  %56 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %57 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @usb_free_urb(i32 %58)
  %60 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %61 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %60, i32 0, i32 1
  %62 = load %struct.hso_device*, %struct.hso_device** %61, align 8
  %63 = call i32 @kfree(%struct.hso_device* %62)
  %64 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %65 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %64, i32 0, i32 1
  store %struct.hso_device* null, %struct.hso_device** %65, align 8
  %66 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %67 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %55
  %71 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %72 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @free_netdev(i64 %73)
  br label %75

75:                                               ; preds = %70, %55
  %76 = load %struct.hso_device*, %struct.hso_device** %2, align 8
  %77 = call i32 @kfree(%struct.hso_device* %76)
  br label %78

78:                                               ; preds = %75, %9
  ret void
}

declare dso_local %struct.hso_net* @dev2net(%struct.hso_device*) #1

declare dso_local i32 @remove_net_device(i32) #1

declare dso_local i32 @unregister_netdev(i64) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @kfree(%struct.hso_device*) #1

declare dso_local i32 @free_netdev(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
