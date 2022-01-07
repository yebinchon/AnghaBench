; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_..nfp_app.h_nfp_app_sriov_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_..nfp_app.h_nfp_app_sriov_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, i32)* @nfp_app_sriov_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_app_sriov_enable(%struct.nfp_app* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_app*, align 8
  %5 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %7 = icmp ne %struct.nfp_app* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %10 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to i32 (%struct.nfp_app*, i32)**
  %14 = load i32 (%struct.nfp_app*, i32)*, i32 (%struct.nfp_app*, i32)** %13, align 8
  %15 = icmp ne i32 (%struct.nfp_app*, i32)* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %8, %2
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %29

19:                                               ; preds = %8
  %20 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %21 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.nfp_app*, i32)**
  %25 = load i32 (%struct.nfp_app*, i32)*, i32 (%struct.nfp_app*, i32)** %24, align 8
  %26 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 %25(%struct.nfp_app* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %19, %16
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
