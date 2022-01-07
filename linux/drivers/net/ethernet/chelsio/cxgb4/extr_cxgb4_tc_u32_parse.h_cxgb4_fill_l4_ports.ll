; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_tc_u32_parse.h_cxgb4_fill_l4_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_tc_u32_parse.h_cxgb4_fill_l4_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ch_filter_specification = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ch_filter_specification*, i32, i32)* @cxgb4_fill_l4_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb4_fill_l4_ports(%struct.ch_filter_specification* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ch_filter_specification*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ch_filter_specification* %0, %struct.ch_filter_specification** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @ntohl(i32 %7)
  %9 = ashr i32 %8, 16
  %10 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %4, align 8
  %11 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @ntohl(i32 %13)
  %15 = ashr i32 %14, 16
  %16 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %4, align 8
  %17 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ntohl(i32 %19)
  %21 = and i32 %20, 65535
  %22 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %4, align 8
  %23 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @ntohl(i32 %25)
  %27 = and i32 %26, 65535
  %28 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %4, align 8
  %29 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  ret i32 0
}

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
