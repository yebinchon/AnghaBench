; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_ppp.c_get_proto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_ppp.c_get_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto = type { i32 }
%struct.net_device = type { i32 }
%struct.ppp = type { %struct.proto* }

@IDX_LCP = common dso_local global i64 0, align 8
@IDX_IPCP = common dso_local global i64 0, align 8
@IDX_IPV6CP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.proto* (%struct.net_device*, i32)* @get_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.proto* @get_proto(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.proto*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ppp*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.ppp* @get_ppp(%struct.net_device* %7)
  store %struct.ppp* %8, %struct.ppp** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %28 [
    i32 128, label %10
    i32 130, label %16
    i32 129, label %22
  ]

10:                                               ; preds = %2
  %11 = load %struct.ppp*, %struct.ppp** %6, align 8
  %12 = getelementptr inbounds %struct.ppp, %struct.ppp* %11, i32 0, i32 0
  %13 = load %struct.proto*, %struct.proto** %12, align 8
  %14 = load i64, i64* @IDX_LCP, align 8
  %15 = getelementptr inbounds %struct.proto, %struct.proto* %13, i64 %14
  store %struct.proto* %15, %struct.proto** %3, align 8
  br label %29

16:                                               ; preds = %2
  %17 = load %struct.ppp*, %struct.ppp** %6, align 8
  %18 = getelementptr inbounds %struct.ppp, %struct.ppp* %17, i32 0, i32 0
  %19 = load %struct.proto*, %struct.proto** %18, align 8
  %20 = load i64, i64* @IDX_IPCP, align 8
  %21 = getelementptr inbounds %struct.proto, %struct.proto* %19, i64 %20
  store %struct.proto* %21, %struct.proto** %3, align 8
  br label %29

22:                                               ; preds = %2
  %23 = load %struct.ppp*, %struct.ppp** %6, align 8
  %24 = getelementptr inbounds %struct.ppp, %struct.ppp* %23, i32 0, i32 0
  %25 = load %struct.proto*, %struct.proto** %24, align 8
  %26 = load i64, i64* @IDX_IPV6CP, align 8
  %27 = getelementptr inbounds %struct.proto, %struct.proto* %25, i64 %26
  store %struct.proto* %27, %struct.proto** %3, align 8
  br label %29

28:                                               ; preds = %2
  store %struct.proto* null, %struct.proto** %3, align 8
  br label %29

29:                                               ; preds = %28, %22, %16, %10
  %30 = load %struct.proto*, %struct.proto** %3, align 8
  ret %struct.proto* %30
}

declare dso_local %struct.ppp* @get_ppp(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
