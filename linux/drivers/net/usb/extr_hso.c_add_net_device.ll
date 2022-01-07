; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_add_net_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_add_net_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_device = type { i32 }

@HSO_MAX_NET_DEVICES = common dso_local global i32 0, align 4
@network_table = common dso_local global %struct.hso_device** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hso_device*)* @add_net_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_net_device(%struct.hso_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hso_device*, align 8
  %4 = alloca i32, align 4
  store %struct.hso_device* %0, %struct.hso_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %23, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @HSO_MAX_NET_DEVICES, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = load %struct.hso_device**, %struct.hso_device*** @network_table, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.hso_device*, %struct.hso_device** %10, i64 %12
  %14 = load %struct.hso_device*, %struct.hso_device** %13, align 8
  %15 = icmp eq %struct.hso_device* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %9
  %17 = load %struct.hso_device*, %struct.hso_device** %3, align 8
  %18 = load %struct.hso_device**, %struct.hso_device*** @network_table, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.hso_device*, %struct.hso_device** %18, i64 %20
  store %struct.hso_device* %17, %struct.hso_device** %21, align 8
  br label %26

22:                                               ; preds = %9
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %5

26:                                               ; preds = %16, %5
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @HSO_MAX_NET_DEVICES, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 -1, i32* %2, align 4
  br label %32

31:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %30
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
