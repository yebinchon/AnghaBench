; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ocelot_port = type { %struct.ocelot* }
%struct.ocelot = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ETH_SS_STATS = common dso_local global i64 0, align 8
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i64, i32*)* @ocelot_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocelot_get_strings(%struct.net_device* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ocelot_port*, align 8
  %8 = alloca %struct.ocelot*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.ocelot_port* @netdev_priv(%struct.net_device* %10)
  store %struct.ocelot_port* %11, %struct.ocelot_port** %7, align 8
  %12 = load %struct.ocelot_port*, %struct.ocelot_port** %7, align 8
  %13 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %12, i32 0, i32 0
  %14 = load %struct.ocelot*, %struct.ocelot** %13, align 8
  store %struct.ocelot* %14, %struct.ocelot** %8, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @ETH_SS_STATS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %46

19:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %43, %19
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.ocelot*, %struct.ocelot** %8, align 8
  %23 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %20
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load %struct.ocelot*, %struct.ocelot** %8, align 8
  %34 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %42 = call i32 @memcpy(i32* %32, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %26
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %20

46:                                               ; preds = %18, %20
  ret void
}

declare dso_local %struct.ocelot_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
