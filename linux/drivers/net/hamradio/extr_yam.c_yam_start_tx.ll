; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_yam.c_yam_start_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_yam.c_yam_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.yam_port = type { i64, i32, i32, i32 }

@TX_TAIL = common dso_local global i64 0, align 8
@TX_HEAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.yam_port*)* @yam_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yam_start_tx(%struct.net_device* %0, %struct.yam_port* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.yam_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.yam_port* %1, %struct.yam_port** %4, align 8
  %5 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %6 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @TX_TAIL, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %12 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10, %2
  %16 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %17 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %16, i32 0, i32 2
  store i32 1, i32* %17, align 4
  br label %29

18:                                               ; preds = %10
  %19 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %20 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %23 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 %21, %24
  %26 = sdiv i32 %25, 8000
  %27 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %28 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %18, %15
  %30 = load i64, i64* @TX_HEAD, align 8
  %31 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %32 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i32 @ptt_on(%struct.net_device* %33)
  ret void
}

declare dso_local i32 @ptt_on(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
