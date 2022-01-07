; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_free_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_free_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtnet_info = type { i32, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtnet_info*)* @virtnet_free_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtnet_free_queues(%struct.virtnet_info* %0) #0 {
  %2 = alloca %struct.virtnet_info*, align 8
  %3 = alloca i32, align 4
  store %struct.virtnet_info* %0, %struct.virtnet_info** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %35, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %7 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %38

10:                                               ; preds = %4
  %11 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %12 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @napi_hash_del(i32* %17)
  %19 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %20 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @netif_napi_del(i32* %25)
  %27 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %28 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @netif_napi_del(i32* %33)
  br label %35

35:                                               ; preds = %10
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %4

38:                                               ; preds = %4
  %39 = call i32 (...) @synchronize_net()
  %40 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %41 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = call i32 @kfree(%struct.TYPE_2__* %42)
  %44 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %45 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = call i32 @kfree(%struct.TYPE_2__* %46)
  %48 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %49 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = call i32 @kfree(%struct.TYPE_2__* %50)
  ret void
}

declare dso_local i32 @napi_hash_del(i32*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @synchronize_net(...) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
