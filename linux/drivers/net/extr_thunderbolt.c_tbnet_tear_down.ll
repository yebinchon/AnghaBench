; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_thunderbolt.c_tbnet_tear_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_thunderbolt.c_tbnet_tear_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tbnet = type { i32, i32, i32, i64, i32, i32, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TBNET_LOGOUT_RETRIES = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to disable DMA paths\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tbnet*, i32)* @tbnet_tear_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tbnet_tear_down(%struct.tbnet* %0, i32 %1) #0 {
  %3 = alloca %struct.tbnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tbnet* %0, %struct.tbnet** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tbnet*, %struct.tbnet** %3, align 8
  %8 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @netif_carrier_off(i32 %9)
  %11 = load %struct.tbnet*, %struct.tbnet** %3, align 8
  %12 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @netif_stop_queue(i32 %13)
  %15 = load %struct.tbnet*, %struct.tbnet** %3, align 8
  %16 = call i32 @stop_login(%struct.tbnet* %15)
  %17 = load %struct.tbnet*, %struct.tbnet** %3, align 8
  %18 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %17, i32 0, i32 2
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.tbnet*, %struct.tbnet** %3, align 8
  %21 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %77

24:                                               ; preds = %2
  %25 = load %struct.tbnet*, %struct.tbnet** %3, align 8
  %26 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %77

29:                                               ; preds = %24
  %30 = load i32, i32* @TBNET_LOGOUT_RETRIES, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %48, %29
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %5, align 4
  %37 = icmp sgt i32 %35, 0
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i1 [ false, %31 ], [ %37, %34 ]
  br i1 %39, label %40, label %49

40:                                               ; preds = %38
  %41 = load %struct.tbnet*, %struct.tbnet** %3, align 8
  %42 = call i32 @tbnet_logout_request(%struct.tbnet* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @ETIMEDOUT, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %49

48:                                               ; preds = %40
  br label %31

49:                                               ; preds = %47, %38
  %50 = load %struct.tbnet*, %struct.tbnet** %3, align 8
  %51 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %50, i32 0, i32 7
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @tb_ring_stop(i32 %53)
  %55 = load %struct.tbnet*, %struct.tbnet** %3, align 8
  %56 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @tb_ring_stop(i32 %58)
  %60 = load %struct.tbnet*, %struct.tbnet** %3, align 8
  %61 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %60, i32 0, i32 7
  %62 = call i32 @tbnet_free_buffers(%struct.TYPE_2__* %61)
  %63 = load %struct.tbnet*, %struct.tbnet** %3, align 8
  %64 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %63, i32 0, i32 6
  %65 = call i32 @tbnet_free_buffers(%struct.TYPE_2__* %64)
  %66 = load %struct.tbnet*, %struct.tbnet** %3, align 8
  %67 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @tb_xdomain_disable_paths(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %49
  %72 = load %struct.tbnet*, %struct.tbnet** %3, align 8
  %73 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @netdev_warn(i32 %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %71, %49
  br label %77

77:                                               ; preds = %76, %24, %2
  %78 = load %struct.tbnet*, %struct.tbnet** %3, align 8
  %79 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %78, i32 0, i32 3
  store i64 0, i64* %79, align 8
  %80 = load %struct.tbnet*, %struct.tbnet** %3, align 8
  %81 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  %82 = load %struct.tbnet*, %struct.tbnet** %3, align 8
  %83 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %82, i32 0, i32 1
  store i32 0, i32* %83, align 4
  %84 = load %struct.tbnet*, %struct.tbnet** %3, align 8
  %85 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %84, i32 0, i32 2
  %86 = call i32 @mutex_unlock(i32* %85)
  ret void
}

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @stop_login(%struct.tbnet*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tbnet_logout_request(%struct.tbnet*) #1

declare dso_local i32 @tb_ring_stop(i32) #1

declare dso_local i32 @tbnet_free_buffers(%struct.TYPE_2__*) #1

declare dso_local i64 @tb_xdomain_disable_paths(i32) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
