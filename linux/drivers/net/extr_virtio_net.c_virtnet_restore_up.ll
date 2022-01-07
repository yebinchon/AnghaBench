; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_restore_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_restore_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { %struct.virtnet_info* }
%struct.virtnet_info = type { i32, i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_device*)* @virtnet_restore_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtnet_restore_up(%struct.virtio_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtio_device*, align 8
  %4 = alloca %struct.virtnet_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %3, align 8
  %7 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %8 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %7, i32 0, i32 0
  %9 = load %struct.virtnet_info*, %struct.virtnet_info** %8, align 8
  store %struct.virtnet_info* %9, %struct.virtnet_info** %4, align 8
  %10 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %11 = call i32 @init_vqs(%struct.virtnet_info* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %109

16:                                               ; preds = %1
  %17 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %18 = call i32 @virtio_device_ready(%struct.virtio_device* %17)
  %19 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %20 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @netif_running(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %95

24:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %47, %24
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %28 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %25
  %32 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %33 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %34 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %33, i32 0, i32 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i32 @try_fill_recv(%struct.virtnet_info* %32, %struct.TYPE_4__* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %31
  %43 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %44 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %43, i32 0, i32 5
  %45 = call i32 @schedule_delayed_work(i32* %44, i32 0)
  br label %46

46:                                               ; preds = %42, %31
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %25

50:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %91, %50
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %54 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %94

57:                                               ; preds = %51
  %58 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %59 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %58, i32 0, i32 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %67 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %66, i32 0, i32 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = call i32 @virtnet_napi_enable(i32 %65, i32* %72)
  %74 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %75 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %76 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %75, i32 0, i32 3
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %84 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %83, i32 0, i32 3
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = call i32 @virtnet_napi_tx_enable(%struct.virtnet_info* %74, i32 %82, i32* %89)
  br label %91

91:                                               ; preds = %57
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %51

94:                                               ; preds = %51
  br label %95

95:                                               ; preds = %94, %16
  %96 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %97 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @netif_tx_lock_bh(i32 %98)
  %100 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %101 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @netif_device_attach(i32 %102)
  %104 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %105 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @netif_tx_unlock_bh(i32 %106)
  %108 = load i32, i32* %5, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %95, %14
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @init_vqs(%struct.virtnet_info*) #1

declare dso_local i32 @virtio_device_ready(%struct.virtio_device*) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @try_fill_recv(%struct.virtnet_info*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @virtnet_napi_enable(i32, i32*) #1

declare dso_local i32 @virtnet_napi_tx_enable(%struct.virtnet_info*, i32, i32*) #1

declare dso_local i32 @netif_tx_lock_bh(i32) #1

declare dso_local i32 @netif_device_attach(i32) #1

declare dso_local i32 @netif_tx_unlock_bh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
