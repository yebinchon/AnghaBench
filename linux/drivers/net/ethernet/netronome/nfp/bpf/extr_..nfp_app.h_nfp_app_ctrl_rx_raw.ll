; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_..nfp_app.h_nfp_app_ctrl_rx_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_..nfp_app.h_nfp_app_ctrl_rx_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nfp_app*, i8*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_app*, i8*, i32)* @nfp_app_ctrl_rx_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_app_ctrl_rx_raw(%struct.nfp_app* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.nfp_app*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %8 = icmp ne %struct.nfp_app* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %11 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.nfp_app*, i8*, i32)*, i32 (%struct.nfp_app*, i8*, i32)** %13, align 8
  %15 = icmp ne i32 (%struct.nfp_app*, i8*, i32)* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %9, %3
  br label %34

17:                                               ; preds = %9
  %18 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %19 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @priv_to_devlink(i32 %20)
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @trace_devlink_hwmsg(i32 %21, i32 1, i32 0, i8* %22, i32 %23)
  %25 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %26 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.nfp_app*, i8*, i32)*, i32 (%struct.nfp_app*, i8*, i32)** %28, align 8
  %30 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 %29(%struct.nfp_app* %30, i8* %31, i32 %32)
  br label %34

34:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @trace_devlink_hwmsg(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @priv_to_devlink(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
