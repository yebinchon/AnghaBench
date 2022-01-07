; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_..nfp_app.h_nfp_app_vnic_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_..nfp_app.h_nfp_app_vnic_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.nfp_net = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.nfp_net*, i32)* @nfp_app_vnic_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_app_vnic_alloc(%struct.nfp_app* %0, %struct.nfp_net* %1, i32 %2) #0 {
  %4 = alloca %struct.nfp_app*, align 8
  %5 = alloca %struct.nfp_net*, align 8
  %6 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %4, align 8
  store %struct.nfp_net* %1, %struct.nfp_net** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %8 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to i32 (%struct.nfp_app*, %struct.nfp_net*, i32)**
  %12 = load i32 (%struct.nfp_app*, %struct.nfp_net*, i32)*, i32 (%struct.nfp_app*, %struct.nfp_net*, i32)** %11, align 8
  %13 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %14 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 %12(%struct.nfp_app* %13, %struct.nfp_net* %14, i32 %15)
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
