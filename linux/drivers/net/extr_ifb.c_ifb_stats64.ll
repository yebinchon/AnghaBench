; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_ifb.c_ifb_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_ifb.c_ifb_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32, i32, i32 }
%struct.ifb_dev_private = type { %struct.ifb_q_private* }
%struct.ifb_q_private = type { i64, i64, i32, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @ifb_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ifb_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.ifb_dev_private*, align 8
  %6 = alloca %struct.ifb_q_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.ifb_dev_private* @netdev_priv(%struct.net_device* %11)
  store %struct.ifb_dev_private* %12, %struct.ifb_dev_private** %5, align 8
  %13 = load %struct.ifb_dev_private*, %struct.ifb_dev_private** %5, align 8
  %14 = getelementptr inbounds %struct.ifb_dev_private, %struct.ifb_dev_private* %13, i32 0, i32 0
  %15 = load %struct.ifb_q_private*, %struct.ifb_q_private** %14, align 8
  store %struct.ifb_q_private* %15, %struct.ifb_q_private** %6, align 8
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %85, %2
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %90

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %33, %22
  %24 = load %struct.ifb_q_private*, %struct.ifb_q_private** %6, align 8
  %25 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %24, i32 0, i32 5
  %26 = call i32 @u64_stats_fetch_begin_irq(i32* %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.ifb_q_private*, %struct.ifb_q_private** %6, align 8
  %28 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %8, align 8
  %30 = load %struct.ifb_q_private*, %struct.ifb_q_private** %6, align 8
  %31 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %9, align 8
  br label %33

33:                                               ; preds = %23
  %34 = load %struct.ifb_q_private*, %struct.ifb_q_private** %6, align 8
  %35 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %34, i32 0, i32 5
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @u64_stats_fetch_retry_irq(i32* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %23, label %39

39:                                               ; preds = %33
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %42 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %49 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %47
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 4
  br label %54

54:                                               ; preds = %64, %39
  %55 = load %struct.ifb_q_private*, %struct.ifb_q_private** %6, align 8
  %56 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %55, i32 0, i32 2
  %57 = call i32 @u64_stats_fetch_begin_irq(i32* %56)
  store i32 %57, i32* %7, align 4
  %58 = load %struct.ifb_q_private*, %struct.ifb_q_private** %6, align 8
  %59 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %8, align 8
  %61 = load %struct.ifb_q_private*, %struct.ifb_q_private** %6, align 8
  %62 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %9, align 8
  br label %64

64:                                               ; preds = %54
  %65 = load %struct.ifb_q_private*, %struct.ifb_q_private** %6, align 8
  %66 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %65, i32 0, i32 2
  %67 = load i32, i32* %7, align 4
  %68 = call i64 @u64_stats_fetch_retry_irq(i32* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %54, label %70

70:                                               ; preds = %64
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %73 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %71
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 4
  %78 = load i64, i64* %9, align 8
  %79 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %80 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %78
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %80, align 4
  br label %85

85:                                               ; preds = %70
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  %88 = load %struct.ifb_q_private*, %struct.ifb_q_private** %6, align 8
  %89 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %88, i32 1
  store %struct.ifb_q_private* %89, %struct.ifb_q_private** %6, align 8
  br label %16

90:                                               ; preds = %16
  %91 = load %struct.net_device*, %struct.net_device** %3, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %96 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.net_device*, %struct.net_device** %3, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %102 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  ret void
}

declare dso_local %struct.ifb_dev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @u64_stats_fetch_begin_irq(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry_irq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
