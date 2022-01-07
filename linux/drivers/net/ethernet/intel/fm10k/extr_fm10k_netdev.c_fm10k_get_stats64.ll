; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32, i32 }
%struct.fm10k_intfc = type { i32, i32, i32*, i32* }
%struct.fm10k_ring = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @fm10k_get_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.fm10k_intfc*, align 8
  %6 = alloca %struct.fm10k_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.fm10k_intfc* @netdev_priv(%struct.net_device* %11)
  store %struct.fm10k_intfc* %12, %struct.fm10k_intfc** %5, align 8
  %13 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %66, %2
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %17 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %69

20:                                               ; preds = %14
  %21 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %22 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.fm10k_ring* @READ_ONCE(i32 %27)
  store %struct.fm10k_ring* %28, %struct.fm10k_ring** %6, align 8
  %29 = load %struct.fm10k_ring*, %struct.fm10k_ring** %6, align 8
  %30 = icmp ne %struct.fm10k_ring* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  br label %66

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %45, %32
  %34 = load %struct.fm10k_ring*, %struct.fm10k_ring** %6, align 8
  %35 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %34, i32 0, i32 1
  %36 = call i32 @u64_stats_fetch_begin_irq(i32* %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.fm10k_ring*, %struct.fm10k_ring** %6, align 8
  %38 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %10, align 8
  %41 = load %struct.fm10k_ring*, %struct.fm10k_ring** %6, align 8
  %42 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %9, align 8
  br label %45

45:                                               ; preds = %33
  %46 = load %struct.fm10k_ring*, %struct.fm10k_ring** %6, align 8
  %47 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %46, i32 0, i32 1
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @u64_stats_fetch_retry_irq(i32* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %33, label %51

51:                                               ; preds = %45
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %54 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %52
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %54, align 4
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %61 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %59
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 4
  br label %66

66:                                               ; preds = %51, %31
  %67 = load i32, i32* %8, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %14

69:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %122, %69
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %73 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ult i32 %71, %74
  br i1 %75, label %76, label %125

76:                                               ; preds = %70
  %77 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %78 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call %struct.fm10k_ring* @READ_ONCE(i32 %83)
  store %struct.fm10k_ring* %84, %struct.fm10k_ring** %6, align 8
  %85 = load %struct.fm10k_ring*, %struct.fm10k_ring** %6, align 8
  %86 = icmp ne %struct.fm10k_ring* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %76
  br label %122

88:                                               ; preds = %76
  br label %89

89:                                               ; preds = %101, %88
  %90 = load %struct.fm10k_ring*, %struct.fm10k_ring** %6, align 8
  %91 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %90, i32 0, i32 1
  %92 = call i32 @u64_stats_fetch_begin_irq(i32* %91)
  store i32 %92, i32* %7, align 4
  %93 = load %struct.fm10k_ring*, %struct.fm10k_ring** %6, align 8
  %94 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %10, align 8
  %97 = load %struct.fm10k_ring*, %struct.fm10k_ring** %6, align 8
  %98 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %9, align 8
  br label %101

101:                                              ; preds = %89
  %102 = load %struct.fm10k_ring*, %struct.fm10k_ring** %6, align 8
  %103 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %102, i32 0, i32 1
  %104 = load i32, i32* %7, align 4
  %105 = call i64 @u64_stats_fetch_retry_irq(i32* %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %89, label %107

107:                                              ; preds = %101
  %108 = load i64, i64* %10, align 8
  %109 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %110 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %108
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %110, align 4
  %115 = load i64, i64* %9, align 8
  %116 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %117 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %119, %115
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %117, align 4
  br label %122

122:                                              ; preds = %107, %87
  %123 = load i32, i32* %8, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %70

125:                                              ; preds = %70
  %126 = call i32 (...) @rcu_read_unlock()
  %127 = load %struct.net_device*, %struct.net_device** %3, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %132 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  ret void
}

declare dso_local %struct.fm10k_intfc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.fm10k_ring* @READ_ONCE(i32) #1

declare dso_local i32 @u64_stats_fetch_begin_irq(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry_irq(i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
