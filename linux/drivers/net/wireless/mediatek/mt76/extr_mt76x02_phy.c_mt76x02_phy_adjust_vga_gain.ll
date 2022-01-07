; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_phy.c_mt76x02_phy_adjust_vga_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_phy.c_mt76x02_phy_adjust_vga_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i64, i32 }

@MT_RX_STAT_1_CCA_ERRORS = common dso_local global i32 0, align 4
@MT_RX_STAT_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76x02_phy_adjust_vga_gain(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %6 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %7 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 16, i32 4
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %3, align 8
  store i32 0, i32* %4, align 4
  %14 = load i32, i32* @MT_RX_STAT_1_CCA_ERRORS, align 4
  %15 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %16 = load i32, i32* @MT_RX_STAT_1, align 4
  %17 = call i32 @mt76_rr(%struct.mt76x02_dev* %15, i32 %16)
  %18 = call i32 @FIELD_GET(i32 %14, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %21 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = icmp sgt i32 %23, 800
  br i1 %24, label %25, label %38

25:                                               ; preds = %1
  %26 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %27 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %3, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %34 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 2
  store i64 %37, i64* %35, align 8
  store i32 1, i32* %4, align 4
  br label %64

38:                                               ; preds = %25, %1
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 10
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %43 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %41, %38
  %48 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %49 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %3, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %47
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 500
  br i1 %56, label %57, label %63

57:                                               ; preds = %54, %41
  %58 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %59 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %61, 2
  store i64 %62, i64* %60, align 8
  store i32 1, i32* %4, align 4
  br label %63

63:                                               ; preds = %57, %54, %47
  br label %64

64:                                               ; preds = %63, %32
  %65 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %66 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %3, align 8
  %70 = icmp sge i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %73 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  store i32 %71, i32* %74, align 8
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
