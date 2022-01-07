; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_count_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_count_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pcpu_sw_netstats = type { i32, i32, i32 }

@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@NET_XMIT_CN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32)* @count_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @count_tx(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcpu_sw_netstats*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @NET_XMIT_CN, align 4
  %14 = icmp eq i32 %12, %13
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i1 [ true, %3 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i64 @likely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %15
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.pcpu_sw_netstats* @this_cpu_ptr(i32 %23)
  store %struct.pcpu_sw_netstats* %24, %struct.pcpu_sw_netstats** %7, align 8
  %25 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %7, align 8
  %26 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %25, i32 0, i32 1
  %27 = call i32 @u64_stats_update_begin(i32* %26)
  %28 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %7, align 8
  %29 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %7, align 8
  %34 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %7, align 8
  %38 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %37, i32 0, i32 1
  %39 = call i32 @u64_stats_update_end(i32* %38)
  br label %40

40:                                               ; preds = %20, %15
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.pcpu_sw_netstats* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
