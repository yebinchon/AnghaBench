; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nic/extr_..nfp_app.h_nfp_app_sriov_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nic/extr_..nfp_app.h_nfp_app_sriov_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nfp_app*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_app*)* @nfp_app_sriov_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_app_sriov_disable(%struct.nfp_app* %0) #0 {
  %2 = alloca %struct.nfp_app*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %2, align 8
  %3 = load %struct.nfp_app*, %struct.nfp_app** %2, align 8
  %4 = icmp ne %struct.nfp_app* %3, null
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = load %struct.nfp_app*, %struct.nfp_app** %2, align 8
  %7 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.nfp_app*)*, i32 (%struct.nfp_app*)** %9, align 8
  %11 = icmp ne i32 (%struct.nfp_app*)* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %5
  %13 = load %struct.nfp_app*, %struct.nfp_app** %2, align 8
  %14 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.nfp_app*)*, i32 (%struct.nfp_app*)** %16, align 8
  %18 = load %struct.nfp_app*, %struct.nfp_app** %2, align 8
  %19 = call i32 %17(%struct.nfp_app* %18)
  br label %20

20:                                               ; preds = %12, %5, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
