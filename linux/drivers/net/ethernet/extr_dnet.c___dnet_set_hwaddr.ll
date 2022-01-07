; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_dnet.c___dnet_set_hwaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_dnet.c___dnet_set_hwaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnet = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@DNET_INTERNAL_MAC_ADDR_0_REG = common dso_local global i32 0, align 4
@DNET_INTERNAL_MAC_ADDR_1_REG = common dso_local global i32 0, align 4
@DNET_INTERNAL_MAC_ADDR_2_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dnet*)* @__dnet_set_hwaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dnet_set_hwaddr(%struct.dnet* %0) #0 {
  %2 = alloca %struct.dnet*, align 8
  %3 = alloca i32, align 4
  store %struct.dnet* %0, %struct.dnet** %2, align 8
  %4 = load %struct.dnet*, %struct.dnet** %2, align 8
  %5 = getelementptr inbounds %struct.dnet, %struct.dnet* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i32*
  %10 = call i32 @be16_to_cpup(i32* %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.dnet*, %struct.dnet** %2, align 8
  %12 = load i32, i32* @DNET_INTERNAL_MAC_ADDR_0_REG, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @dnet_writew_mac(%struct.dnet* %11, i32 %12, i32 %13)
  %15 = load %struct.dnet*, %struct.dnet** %2, align 8
  %16 = getelementptr inbounds %struct.dnet, %struct.dnet* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 2
  %21 = inttoptr i64 %20 to i32*
  %22 = call i32 @be16_to_cpup(i32* %21)
  store i32 %22, i32* %3, align 4
  %23 = load %struct.dnet*, %struct.dnet** %2, align 8
  %24 = load i32, i32* @DNET_INTERNAL_MAC_ADDR_1_REG, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @dnet_writew_mac(%struct.dnet* %23, i32 %24, i32 %25)
  %27 = load %struct.dnet*, %struct.dnet** %2, align 8
  %28 = getelementptr inbounds %struct.dnet, %struct.dnet* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 4
  %33 = inttoptr i64 %32 to i32*
  %34 = call i32 @be16_to_cpup(i32* %33)
  store i32 %34, i32* %3, align 4
  %35 = load %struct.dnet*, %struct.dnet** %2, align 8
  %36 = load i32, i32* @DNET_INTERNAL_MAC_ADDR_2_REG, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @dnet_writew_mac(%struct.dnet* %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @be16_to_cpup(i32*) #1

declare dso_local i32 @dnet_writew_mac(%struct.dnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
