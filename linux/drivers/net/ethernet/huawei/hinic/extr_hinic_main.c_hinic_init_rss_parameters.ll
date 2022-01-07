; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_hinic_init_rss_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_hinic_init_rss_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@HINIC_RSS_HASH_ENGINE_TYPE_XOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_dev*)* @hinic_init_rss_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hinic_init_rss_parameters(%struct.hinic_dev* %0) #0 {
  %2 = alloca %struct.hinic_dev*, align 8
  store %struct.hinic_dev* %0, %struct.hinic_dev** %2, align 8
  %3 = load i32, i32* @HINIC_RSS_HASH_ENGINE_TYPE_XOR, align 4
  %4 = load %struct.hinic_dev*, %struct.hinic_dev** %2, align 8
  %5 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %4, i32 0, i32 1
  store i32 %3, i32* %5, align 4
  %6 = load %struct.hinic_dev*, %struct.hinic_dev** %2, align 8
  %7 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load %struct.hinic_dev*, %struct.hinic_dev** %2, align 8
  %10 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i32 1, i32* %11, align 4
  %12 = load %struct.hinic_dev*, %struct.hinic_dev** %2, align 8
  %13 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  store i32 1, i32* %14, align 4
  %15 = load %struct.hinic_dev*, %struct.hinic_dev** %2, align 8
  %16 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  store i32 1, i32* %17, align 4
  %18 = load %struct.hinic_dev*, %struct.hinic_dev** %2, align 8
  %19 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 4
  store i32 1, i32* %20, align 4
  %21 = load %struct.hinic_dev*, %struct.hinic_dev** %2, align 8
  %22 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 5
  store i32 1, i32* %23, align 4
  %24 = load %struct.hinic_dev*, %struct.hinic_dev** %2, align 8
  %25 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 6
  store i32 1, i32* %26, align 4
  %27 = load %struct.hinic_dev*, %struct.hinic_dev** %2, align 8
  %28 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 7
  store i32 1, i32* %29, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
