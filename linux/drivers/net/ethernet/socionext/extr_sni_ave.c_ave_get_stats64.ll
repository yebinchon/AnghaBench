; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ave_private = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @ave_get_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ave_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.ave_private*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ave_private* @netdev_priv(%struct.net_device* %7)
  store %struct.ave_private* %8, %struct.ave_private** %5, align 8
  br label %9

9:                                                ; preds = %26, %2
  %10 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %11 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 5
  %13 = call i32 @u64_stats_fetch_begin_irq(i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %15 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %19 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %18, i32 0, i32 9
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %21 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %25 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %24, i32 0, i32 8
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %9
  %27 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %28 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 5
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @u64_stats_fetch_retry_irq(i32* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %9, label %33

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %51, %33
  %35 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %36 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 5
  %38 = call i32 @u64_stats_fetch_begin_irq(i32* %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %40 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %44 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %46 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %50 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %34
  %52 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %53 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 5
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @u64_stats_fetch_retry_irq(i32* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %34, label %58

58:                                               ; preds = %51
  %59 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %60 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %64 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %66 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %70 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %72 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %76 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %78 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %82 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %84 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %88 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %90 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %94 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  ret void
}

declare dso_local %struct.ave_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @u64_stats_fetch_begin_irq(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry_irq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
