; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_debugfs.c_mt76_edcca_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_debugfs.c_mt76_edcca_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@NL80211_DFS_ETSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @mt76_edcca_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76_edcca_set(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt76x02_dev*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.mt76x02_dev*
  store %struct.mt76x02_dev* %8, %struct.mt76x02_dev** %5, align 8
  %9 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %10 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %14 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %23 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %25 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @NL80211_DFS_ETSI, align 4
  %31 = icmp eq i32 %29, %30
  br label %32

32:                                               ; preds = %28, %2
  %33 = phi i1 [ false, %2 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %36 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %38 = call i32 @mt76x02_edcca_init(%struct.mt76x02_dev* %37)
  %39 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %40 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = call i32 @mutex_unlock(i32* %41)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mt76x02_edcca_init(%struct.mt76x02_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
