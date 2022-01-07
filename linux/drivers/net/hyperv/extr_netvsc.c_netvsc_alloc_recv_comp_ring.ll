; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_netvsc_alloc_recv_comp_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_netvsc_alloc_recv_comp_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netvsc_device = type { i32, %struct.netvsc_channel* }
%struct.netvsc_channel = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netvsc_alloc_recv_comp_ring(%struct.netvsc_device* %0, i64 %1) #0 {
  %3 = alloca %struct.netvsc_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.netvsc_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.netvsc_device* %0, %struct.netvsc_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %9 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %8, i32 0, i32 1
  %10 = load %struct.netvsc_channel*, %struct.netvsc_channel** %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %10, i64 %11
  store %struct.netvsc_channel* %12, %struct.netvsc_channel** %5, align 8
  %13 = load %struct.netvsc_channel*, %struct.netvsc_channel** %5, align 8
  %14 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cpu_to_node(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %20 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @vzalloc_node(i64 %24, i32 %25)
  %27 = load %struct.netvsc_channel*, %struct.netvsc_channel** %5, align 8
  %28 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i64 %26, i64* %29, align 8
  %30 = load %struct.netvsc_channel*, %struct.netvsc_channel** %5, align 8
  %31 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %2
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @vzalloc(i64 %36)
  %38 = load %struct.netvsc_channel*, %struct.netvsc_channel** %5, align 8
  %39 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i64 %37, i64* %40, align 8
  br label %41

41:                                               ; preds = %35, %2
  %42 = load %struct.netvsc_channel*, %struct.netvsc_channel** %5, align 8
  %43 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  br label %51

51:                                               ; preds = %48, %47
  %52 = phi i32 [ 0, %47 ], [ %50, %48 ]
  ret i32 %52
}

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i64 @vzalloc_node(i64, i32) #1

declare dso_local i64 @vzalloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
