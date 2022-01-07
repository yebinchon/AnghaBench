; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.ena_adapter = type { i32, %struct.TYPE_6__, i32, %struct.ena_ring*, %struct.ena_ring*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.ena_ring = type { %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@ENA_FLAG_DEV_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @ena_get_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.ena_adapter*, align 8
  %6 = alloca %struct.ena_ring*, align 8
  %7 = alloca %struct.ena_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call %struct.ena_adapter* @netdev_priv(%struct.net_device* %13)
  store %struct.ena_adapter* %14, %struct.ena_adapter** %5, align 8
  %15 = load i32, i32* @ENA_FLAG_DEV_UP, align 4
  %16 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %16, i32 0, i32 5
  %18 = call i32 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %149

21:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %107, %21
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %25 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %110

28:                                               ; preds = %22
  %29 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %30 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %29, i32 0, i32 4
  %31 = load %struct.ena_ring*, %struct.ena_ring** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %31, i64 %33
  store %struct.ena_ring* %34, %struct.ena_ring** %7, align 8
  br label %35

35:                                               ; preds = %47, %28
  %36 = load %struct.ena_ring*, %struct.ena_ring** %7, align 8
  %37 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %36, i32 0, i32 1
  %38 = call i32 @u64_stats_fetch_begin_irq(i32* %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.ena_ring*, %struct.ena_ring** %7, align 8
  %40 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %12, align 8
  %43 = load %struct.ena_ring*, %struct.ena_ring** %7, align 8
  %44 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %11, align 8
  br label %47

47:                                               ; preds = %35
  %48 = load %struct.ena_ring*, %struct.ena_ring** %7, align 8
  %49 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %48, i32 0, i32 1
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @u64_stats_fetch_retry_irq(i32* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %35, label %53

53:                                               ; preds = %47
  %54 = load i64, i64* %12, align 8
  %55 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %56 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %55, i32 0, i32 14
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %54
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 4
  %61 = load i64, i64* %11, align 8
  %62 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %63 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %62, i32 0, i32 13
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %61
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 8
  %68 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %69 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %68, i32 0, i32 3
  %70 = load %struct.ena_ring*, %struct.ena_ring** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %70, i64 %72
  store %struct.ena_ring* %73, %struct.ena_ring** %6, align 8
  br label %74

74:                                               ; preds = %86, %53
  %75 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %76 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %75, i32 0, i32 1
  %77 = call i32 @u64_stats_fetch_begin_irq(i32* %76)
  store i32 %77, i32* %8, align 4
  %78 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %79 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %12, align 8
  %82 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %83 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %11, align 8
  br label %86

86:                                               ; preds = %74
  %87 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %88 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %87, i32 0, i32 1
  %89 = load i32, i32* %8, align 4
  %90 = call i64 @u64_stats_fetch_retry_irq(i32* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %74, label %92

92:                                               ; preds = %86
  %93 = load i64, i64* %12, align 8
  %94 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %95 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %94, i32 0, i32 12
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %93
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %95, align 4
  %100 = load i64, i64* %11, align 8
  %101 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %102 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %101, i32 0, i32 11
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %100
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 8
  br label %107

107:                                              ; preds = %92
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %22

110:                                              ; preds = %22
  br label %111

111:                                              ; preds = %119, %110
  %112 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %113 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %112, i32 0, i32 2
  %114 = call i32 @u64_stats_fetch_begin_irq(i32* %113)
  store i32 %114, i32* %8, align 4
  %115 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %116 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %9, align 8
  br label %119

119:                                              ; preds = %111
  %120 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %121 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %120, i32 0, i32 2
  %122 = load i32, i32* %8, align 4
  %123 = call i64 @u64_stats_fetch_retry_irq(i32* %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %111, label %125

125:                                              ; preds = %119
  %126 = load i64, i64* %9, align 8
  %127 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %128 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %127, i32 0, i32 10
  store i64 %126, i64* %128, align 8
  %129 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %130 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %129, i32 0, i32 9
  store i64 0, i64* %130, align 8
  %131 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %132 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %131, i32 0, i32 8
  store i64 0, i64* %132, align 8
  %133 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %134 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %133, i32 0, i32 7
  store i64 0, i64* %134, align 8
  %135 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %136 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %135, i32 0, i32 6
  store i64 0, i64* %136, align 8
  %137 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %138 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %137, i32 0, i32 5
  store i64 0, i64* %138, align 8
  %139 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %140 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %139, i32 0, i32 4
  store i64 0, i64* %140, align 8
  %141 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %142 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %141, i32 0, i32 3
  store i64 0, i64* %142, align 8
  %143 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %144 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %143, i32 0, i32 2
  store i64 0, i64* %144, align 8
  %145 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %146 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %145, i32 0, i32 1
  store i64 0, i64* %146, align 8
  %147 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %148 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %147, i32 0, i32 0
  store i64 0, i64* %148, align 8
  br label %149

149:                                              ; preds = %125, %20
  ret void
}

declare dso_local %struct.ena_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @u64_stats_fetch_begin_irq(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry_irq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
