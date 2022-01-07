; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_..nfp_app.h_nfp_app_extra_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_..nfp_app.h_nfp_app_extra_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.nfp_net = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.nfp_app*, %struct.nfp_net*)* @nfp_app_extra_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nfp_app_extra_cap(%struct.nfp_app* %0, %struct.nfp_net* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.nfp_app*, align 8
  %5 = alloca %struct.nfp_net*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %4, align 8
  store %struct.nfp_net* %1, %struct.nfp_net** %5, align 8
  %6 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %7 = icmp ne %struct.nfp_app* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %10 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to i8* (%struct.nfp_app*, %struct.nfp_net*)**
  %14 = load i8* (%struct.nfp_app*, %struct.nfp_net*)*, i8* (%struct.nfp_app*, %struct.nfp_net*)** %13, align 8
  %15 = icmp ne i8* (%struct.nfp_app*, %struct.nfp_net*)* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %8, %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %27

17:                                               ; preds = %8
  %18 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %19 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i8* (%struct.nfp_app*, %struct.nfp_net*)**
  %23 = load i8* (%struct.nfp_app*, %struct.nfp_net*)*, i8* (%struct.nfp_app*, %struct.nfp_net*)** %22, align 8
  %24 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %25 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %26 = call i8* %23(%struct.nfp_app* %24, %struct.nfp_net* %25)
  store i8* %26, i8** %3, align 8
  br label %27

27:                                               ; preds = %17, %16
  %28 = load i8*, i8** %3, align 8
  ret i8* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
