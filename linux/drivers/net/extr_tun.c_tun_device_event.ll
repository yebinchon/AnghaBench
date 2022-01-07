; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_device_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_device_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32* }
%struct.tun_struct = type { i32, i32* }
%struct.tun_file = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*)* }

@tun_link_ops = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@NOTIFY_BAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @tun_device_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tun_device_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.tun_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tun_file*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %12)
  store %struct.net_device* %13, %struct.net_device** %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %8, align 8
  %15 = call %struct.tun_struct* @netdev_priv(%struct.net_device* %14)
  store %struct.tun_struct* %15, %struct.tun_struct** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, @tun_link_ops
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %21, i32* %4, align 4
  br label %65

22:                                               ; preds = %3
  %23 = load i64, i64* %6, align 8
  switch i64 %23, label %62 [
    i64 129, label %24
    i64 128, label %31
  ]

24:                                               ; preds = %22
  %25 = load %struct.tun_struct*, %struct.tun_struct** %9, align 8
  %26 = call i32 @tun_queue_resize(%struct.tun_struct* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %29, i32* %4, align 4
  br label %65

30:                                               ; preds = %24
  br label %63

31:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %58, %31
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.tun_struct*, %struct.tun_struct** %9, align 8
  %35 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %32
  %39 = load %struct.tun_struct*, %struct.tun_struct** %9, align 8
  %40 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.tun_file* @rtnl_dereference(i32 %45)
  store %struct.tun_file* %46, %struct.tun_file** %11, align 8
  %47 = load %struct.tun_file*, %struct.tun_file** %11, align 8
  %48 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %51, align 8
  %53 = load %struct.tun_file*, %struct.tun_file** %11, align 8
  %54 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = call i32 %52(%struct.TYPE_4__* %56)
  br label %58

58:                                               ; preds = %38
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %32

61:                                               ; preds = %32
  br label %63

62:                                               ; preds = %22
  br label %63

63:                                               ; preds = %62, %61, %30
  %64 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %28, %20
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local %struct.tun_struct* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @tun_queue_resize(%struct.tun_struct*) #1

declare dso_local %struct.tun_file* @rtnl_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
