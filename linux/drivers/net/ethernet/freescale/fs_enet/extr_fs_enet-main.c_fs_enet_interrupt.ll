; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fs_enet/extr_fs_enet-main.c_fs_enet_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fs_enet/extr_fs_enet-main.c_fs_enet_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fs_enet_private = type { i32, i32, i32, i32, %struct.TYPE_2__*, %struct.fs_platform_info* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*)*, i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, i32)* }
%struct.fs_platform_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fs_enet_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_enet_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.fs_enet_private*, align 8
  %7 = alloca %struct.fs_platform_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.net_device*
  store %struct.net_device* %14, %struct.net_device** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.fs_enet_private* @netdev_priv(%struct.net_device* %15)
  store %struct.fs_enet_private* %16, %struct.fs_enet_private** %6, align 8
  %17 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %18 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %17, i32 0, i32 5
  %19 = load %struct.fs_platform_info*, %struct.fs_platform_info** %18, align 8
  store %struct.fs_platform_info* %19, %struct.fs_platform_info** %7, align 8
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %97, %2
  %21 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %22 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %21, i32 0, i32 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %24, align 8
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = call i32 %25(%struct.net_device* %26)
  store i32 %27, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %98

29:                                               ; preds = %20
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %9, align 4
  %33 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %34 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %9, align 4
  %39 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %40 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %39, i32 0, i32 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %42, align 8
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 %43(%struct.net_device* %44, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %49 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %29
  %54 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %55 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %54, i32 0, i32 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %57, align 8
  %59 = load %struct.net_device*, %struct.net_device** %5, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 %58(%struct.net_device* %59, i32 %60)
  br label %62

62:                                               ; preds = %53, %29
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %65 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %97

69:                                               ; preds = %62
  %70 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %71 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %70, i32 0, i32 3
  %72 = call i32 @napi_schedule_prep(i32* %71)
  store i32 %72, i32* %11, align 4
  %73 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %74 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %73, i32 0, i32 4
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %76, align 8
  %78 = load %struct.net_device*, %struct.net_device** %5, align 8
  %79 = call i32 %77(%struct.net_device* %78)
  %80 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %81 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %80, i32 0, i32 4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %83, align 8
  %85 = load %struct.net_device*, %struct.net_device** %5, align 8
  %86 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %87 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 %84(%struct.net_device* %85, i32 %88)
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %69
  %93 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %94 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %93, i32 0, i32 3
  %95 = call i32 @__napi_schedule(i32* %94)
  br label %96

96:                                               ; preds = %92, %69
  br label %97

97:                                               ; preds = %96, %62
  br label %20

98:                                               ; preds = %20
  %99 = load i32, i32* %10, align 4
  %100 = icmp sgt i32 %99, 0
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @IRQ_RETVAL(i32 %102)
  ret i32 %103
}

declare dso_local %struct.fs_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @napi_schedule_prep(i32*) #1

declare dso_local i32 @__napi_schedule(i32*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
