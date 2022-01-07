; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32, i32, i32 }
%struct.net_device_context = type { i32 }
%struct.netvsc_device = type { i32, %struct.netvsc_channel* }
%struct.netvsc_channel = type { %struct.netvsc_stats, %struct.netvsc_stats }
%struct.netvsc_stats = type { i64, i64, i64, i64, i32 }
%struct.netvsc_vf_pcpu_stats = type { i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @netvsc_get_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netvsc_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.net_device_context*, align 8
  %6 = alloca %struct.netvsc_device*, align 8
  %7 = alloca %struct.netvsc_vf_pcpu_stats, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netvsc_channel*, align 8
  %10 = alloca %struct.netvsc_stats*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %15)
  store %struct.net_device_context* %16, %struct.net_device_context** %5, align 8
  %17 = call i32 (...) @rcu_read_lock()
  %18 = load %struct.net_device_context*, %struct.net_device_context** %5, align 8
  %19 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.netvsc_device* @rcu_dereference(i32 %20)
  store %struct.netvsc_device* %21, %struct.netvsc_device** %6, align 8
  %22 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %23 = icmp ne %struct.netvsc_device* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %169

25:                                               ; preds = %2
  %26 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = call i32 @netdev_stats_to_stats64(%struct.rtnl_link_stats64* %26, i32* %28)
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = call i32 @netvsc_get_vf_stats(%struct.net_device* %30, %struct.netvsc_vf_pcpu_stats* %7)
  %32 = getelementptr inbounds %struct.netvsc_vf_pcpu_stats, %struct.netvsc_vf_pcpu_stats* %7, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %35 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %33
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 4
  %40 = getelementptr inbounds %struct.netvsc_vf_pcpu_stats, %struct.netvsc_vf_pcpu_stats* %7, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %43 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %41
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %43, align 4
  %48 = getelementptr inbounds %struct.netvsc_vf_pcpu_stats, %struct.netvsc_vf_pcpu_stats* %7, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %51 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %49
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 4
  %56 = getelementptr inbounds %struct.netvsc_vf_pcpu_stats, %struct.netvsc_vf_pcpu_stats* %7, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %59 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %57
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 4
  %64 = getelementptr inbounds %struct.netvsc_vf_pcpu_stats, %struct.netvsc_vf_pcpu_stats* %7, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %67 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %65
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 4
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %165, %25
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %75 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %168

78:                                               ; preds = %72
  %79 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %80 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %79, i32 0, i32 1
  %81 = load %struct.netvsc_channel*, %struct.netvsc_channel** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %81, i64 %83
  store %struct.netvsc_channel* %84, %struct.netvsc_channel** %9, align 8
  %85 = load %struct.netvsc_channel*, %struct.netvsc_channel** %9, align 8
  %86 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %85, i32 0, i32 1
  store %struct.netvsc_stats* %86, %struct.netvsc_stats** %10, align 8
  br label %87

87:                                               ; preds = %97, %78
  %88 = load %struct.netvsc_stats*, %struct.netvsc_stats** %10, align 8
  %89 = getelementptr inbounds %struct.netvsc_stats, %struct.netvsc_stats* %88, i32 0, i32 4
  %90 = call i32 @u64_stats_fetch_begin_irq(i32* %89)
  store i32 %90, i32* %14, align 4
  %91 = load %struct.netvsc_stats*, %struct.netvsc_stats** %10, align 8
  %92 = getelementptr inbounds %struct.netvsc_stats, %struct.netvsc_stats* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %11, align 8
  %94 = load %struct.netvsc_stats*, %struct.netvsc_stats** %10, align 8
  %95 = getelementptr inbounds %struct.netvsc_stats, %struct.netvsc_stats* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %12, align 8
  br label %97

97:                                               ; preds = %87
  %98 = load %struct.netvsc_stats*, %struct.netvsc_stats** %10, align 8
  %99 = getelementptr inbounds %struct.netvsc_stats, %struct.netvsc_stats* %98, i32 0, i32 4
  %100 = load i32, i32* %14, align 4
  %101 = call i64 @u64_stats_fetch_retry_irq(i32* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %87, label %103

103:                                              ; preds = %97
  %104 = load i64, i64* %12, align 8
  %105 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %106 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %104
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %106, align 4
  %111 = load i64, i64* %11, align 8
  %112 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %113 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %111
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %113, align 4
  %118 = load %struct.netvsc_channel*, %struct.netvsc_channel** %9, align 8
  %119 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %118, i32 0, i32 0
  store %struct.netvsc_stats* %119, %struct.netvsc_stats** %10, align 8
  br label %120

120:                                              ; preds = %137, %103
  %121 = load %struct.netvsc_stats*, %struct.netvsc_stats** %10, align 8
  %122 = getelementptr inbounds %struct.netvsc_stats, %struct.netvsc_stats* %121, i32 0, i32 4
  %123 = call i32 @u64_stats_fetch_begin_irq(i32* %122)
  store i32 %123, i32* %14, align 4
  %124 = load %struct.netvsc_stats*, %struct.netvsc_stats** %10, align 8
  %125 = getelementptr inbounds %struct.netvsc_stats, %struct.netvsc_stats* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %11, align 8
  %127 = load %struct.netvsc_stats*, %struct.netvsc_stats** %10, align 8
  %128 = getelementptr inbounds %struct.netvsc_stats, %struct.netvsc_stats* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %12, align 8
  %130 = load %struct.netvsc_stats*, %struct.netvsc_stats** %10, align 8
  %131 = getelementptr inbounds %struct.netvsc_stats, %struct.netvsc_stats* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.netvsc_stats*, %struct.netvsc_stats** %10, align 8
  %134 = getelementptr inbounds %struct.netvsc_stats, %struct.netvsc_stats* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %132, %135
  store i64 %136, i64* %13, align 8
  br label %137

137:                                              ; preds = %120
  %138 = load %struct.netvsc_stats*, %struct.netvsc_stats** %10, align 8
  %139 = getelementptr inbounds %struct.netvsc_stats, %struct.netvsc_stats* %138, i32 0, i32 4
  %140 = load i32, i32* %14, align 4
  %141 = call i64 @u64_stats_fetch_retry_irq(i32* %139, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %120, label %143

143:                                              ; preds = %137
  %144 = load i64, i64* %12, align 8
  %145 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %146 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %148, %144
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %146, align 4
  %151 = load i64, i64* %11, align 8
  %152 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %153 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %155, %151
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %153, align 4
  %158 = load i64, i64* %13, align 8
  %159 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %160 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %162, %158
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %160, align 4
  br label %165

165:                                              ; preds = %143
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %8, align 4
  br label %72

168:                                              ; preds = %72
  br label %169

169:                                              ; preds = %168, %24
  %170 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.netvsc_device* @rcu_dereference(i32) #1

declare dso_local i32 @netdev_stats_to_stats64(%struct.rtnl_link_stats64*, i32*) #1

declare dso_local i32 @netvsc_get_vf_stats(%struct.net_device*, %struct.netvsc_vf_pcpu_stats*) #1

declare dso_local i32 @u64_stats_fetch_begin_irq(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry_irq(i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
