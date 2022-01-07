; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_mac_tx_ba_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_mac_tx_ba_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { i32 }

@MT_WTBL2_W15_BA_EN_TIDS = common dso_local global i32 0, align 4
@MT_WTBL2_W15_BA_WIN_SIZE = common dso_local global i32 0, align 4
@MT_WTBL2_W15_BA_WIN_SIZE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt7603_mac_tx_ba_reset(%struct.mt7603_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mt7603_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @mt7603_wtbl2_addr(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @MT_WTBL2_W15_BA_EN_TIDS, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @BIT(i32 %16)
  %18 = call i32 @FIELD_PREP(i32 %15, i32 %17)
  %19 = load i32, i32* @MT_WTBL2_W15_BA_WIN_SIZE, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @MT_WTBL2_W15_BA_WIN_SIZE_SHIFT, align 4
  %22 = mul nsw i32 %20, %21
  %23 = shl i32 %19, %22
  %24 = or i32 %18, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %4
  %28 = load %struct.mt7603_dev*, %struct.mt7603_dev** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 60
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @mt76_clear(%struct.mt7603_dev* %28, i32 %30, i32 %31)
  br label %64

33:                                               ; preds = %4
  store i32 7, i32* %12, align 4
  br label %34

34:                                               ; preds = %44, %33
  %35 = load i32, i32* %12, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @MT_AGG_SIZE_LIMIT(i32 %39)
  %41 = icmp sge i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %47

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %12, align 4
  br label %34

47:                                               ; preds = %42, %34
  %48 = load i32, i32* @MT_WTBL2_W15_BA_EN_TIDS, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @BIT(i32 %49)
  %51 = call i32 @FIELD_PREP(i32 %48, i32 %50)
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @MT_WTBL2_W15_BA_WIN_SIZE_SHIFT, align 4
  %55 = mul nsw i32 %53, %54
  %56 = shl i32 %52, %55
  %57 = or i32 %51, %56
  store i32 %57, i32* %11, align 4
  %58 = load %struct.mt7603_dev*, %struct.mt7603_dev** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 60
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @mt76_rmw(%struct.mt7603_dev* %58, i32 %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %47, %27
  ret void
}

declare dso_local i32 @mt7603_wtbl2_addr(i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mt76_clear(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @MT_AGG_SIZE_LIMIT(i32) #1

declare dso_local i32 @mt76_rmw(%struct.mt7603_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
