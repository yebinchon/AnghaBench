; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_ethtool.c_enic_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_ethtool.c_enic_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.net_device = type { i32 }

@enic_n_tx_stats = common dso_local global i32 0, align 4
@enic_tx_stats = common dso_local global %struct.TYPE_4__* null, align 8
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@enic_n_rx_stats = common dso_local global i32 0, align 4
@enic_rx_stats = common dso_local global %struct.TYPE_5__* null, align 8
@enic_n_gen_stats = common dso_local global i32 0, align 4
@enic_gen_stats = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*)* @enic_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enic_get_strings(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %76 [
    i32 128, label %9
  ]

9:                                                ; preds = %3
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %28, %9
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @enic_n_tx_stats, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @enic_tx_stats, align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %23 = call i32 @memcpy(i32* %15, i32 %21, i32 %22)
  %24 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32* %27, i32** %6, align 8
  br label %28

28:                                               ; preds = %14
  %29 = load i32, i32* %7, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %10

31:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %50, %31
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @enic_n_rx_stats, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @enic_rx_stats, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %45 = call i32 @memcpy(i32* %37, i32 %43, i32 %44)
  %46 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %6, align 8
  br label %50

50:                                               ; preds = %36
  %51 = load i32, i32* %7, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %32

53:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %72, %53
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @enic_n_gen_stats, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %54
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @enic_gen_stats, align 8
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %67 = call i32 @memcpy(i32* %59, i32 %65, i32 %66)
  %68 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %6, align 8
  br label %72

72:                                               ; preds = %58
  %73 = load i32, i32* %7, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %54

75:                                               ; preds = %54
  br label %76

76:                                               ; preds = %3, %75
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
