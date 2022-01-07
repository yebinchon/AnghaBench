; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_..nfp_app.h_nfp_app_setup_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_..nfp_app.h_nfp_app_setup_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nfp_app*, %struct.net_device*, i32, i8*)* }
%struct.net_device = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.net_device*, i32, i8*)* @nfp_app_setup_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_app_setup_tc(%struct.nfp_app* %0, %struct.net_device* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_app*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %10 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %11 = icmp ne %struct.nfp_app* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %14 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.nfp_app*, %struct.net_device*, i32, i8*)*, i32 (%struct.nfp_app*, %struct.net_device*, i32, i8*)** %16, align 8
  %18 = icmp ne i32 (%struct.nfp_app*, %struct.net_device*, i32, i8*)* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %12, %4
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %33

22:                                               ; preds = %12
  %23 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %24 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.nfp_app*, %struct.net_device*, i32, i8*)*, i32 (%struct.nfp_app*, %struct.net_device*, i32, i8*)** %26, align 8
  %28 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %29 = load %struct.net_device*, %struct.net_device** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 %27(%struct.nfp_app* %28, %struct.net_device* %29, i32 %30, i8* %31)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %22, %19
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
