; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_phy.c_mt76x02_init_agc_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_phy.c_mt76x02_init_agc_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i8**, i32 }

@AGC = common dso_local global i32 0, align 4
@MT_BBP_AGC_GAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x02_init_agc_gain(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %3 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %4 = load i32, i32* @AGC, align 4
  %5 = call i32 @MT_BBP(i32 %4, i32 8)
  %6 = load i32, i32* @MT_BBP_AGC_GAIN, align 4
  %7 = call i8* @mt76_get_field(%struct.mt76x02_dev* %3, i32 %5, i32 %6)
  %8 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %9 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i8**, i8*** %10, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  store i8* %7, i8** %12, align 8
  %13 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %14 = load i32, i32* @AGC, align 4
  %15 = call i32 @MT_BBP(i32 %14, i32 9)
  %16 = load i32, i32* @MT_BBP_AGC_GAIN, align 4
  %17 = call i8* @mt76_get_field(%struct.mt76x02_dev* %13, i32 %15, i32 %16)
  %18 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %19 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i8**, i8*** %20, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  store i8* %17, i8** %22, align 8
  %23 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %24 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %28 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i8**, i8*** %29, align 8
  %31 = call i32 @memcpy(i32 %26, i8** %30, i32 4)
  %32 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %33 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 -1, i32* %34, align 8
  %35 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %36 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  ret void
}

declare dso_local i8* @mt76_get_field(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @MT_BBP(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
