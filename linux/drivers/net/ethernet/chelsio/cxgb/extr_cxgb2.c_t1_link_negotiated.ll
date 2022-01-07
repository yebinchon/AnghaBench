; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_cxgb2.c_t1_link_negotiated.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_cxgb2.c_t1_link_negotiated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_2__, %struct.port_info* }
%struct.TYPE_2__ = type { i32 }
%struct.port_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t1_link_negotiated(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.port_info*, align 8
  %14 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.adapter*, %struct.adapter** %7, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 2
  %17 = load %struct.port_info*, %struct.port_info** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.port_info, %struct.port_info* %17, i64 %19
  store %struct.port_info* %20, %struct.port_info** %13, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.port_info*, %struct.port_info** %13, align 8
  %23 = getelementptr inbounds %struct.port_info, %struct.port_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @netif_carrier_ok(i32 %24)
  %26 = icmp ne i32 %21, %25
  br i1 %26, label %27, label %64

27:                                               ; preds = %6
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.port_info*, %struct.port_info** %13, align 8
  %32 = getelementptr inbounds %struct.port_info, %struct.port_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @netif_carrier_on(i32 %33)
  br label %40

35:                                               ; preds = %27
  %36 = load %struct.port_info*, %struct.port_info** %13, align 8
  %37 = getelementptr inbounds %struct.port_info, %struct.port_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @netif_carrier_off(i32 %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.port_info*, %struct.port_info** %13, align 8
  %42 = call i32 @link_report(%struct.port_info* %41)
  %43 = load i32, i32* %10, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %40
  %46 = load %struct.adapter*, %struct.adapter** %7, align 8
  %47 = getelementptr inbounds %struct.adapter, %struct.adapter* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  store i32 10, i32* %14, align 4
  %52 = load i32, i32* %10, align 4
  switch i32 %52, label %56 [
    i32 128, label %53
    i32 129, label %54
    i32 130, label %55
  ]

53:                                               ; preds = %51
  store i32 1000, i32* %14, align 4
  br label %56

54:                                               ; preds = %51
  store i32 100, i32* %14, align 4
  br label %56

55:                                               ; preds = %51
  store i32 10, i32* %14, align 4
  br label %56

56:                                               ; preds = %51, %55, %54, %53
  %57 = load %struct.adapter*, %struct.adapter** %7, align 8
  %58 = getelementptr inbounds %struct.adapter, %struct.adapter* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @t1_sched_update_parms(i32 %59, i32 %60, i32 0, i32 %61)
  br label %63

63:                                               ; preds = %56, %45, %40
  br label %64

64:                                               ; preds = %63, %6
  ret void
}

declare dso_local i32 @netif_carrier_ok(i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @link_report(%struct.port_info*) #1

declare dso_local i32 @t1_sched_update_parms(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
