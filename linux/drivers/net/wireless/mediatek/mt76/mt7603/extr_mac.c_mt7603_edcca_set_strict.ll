; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_edcca_set_strict.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_edcca_set_strict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { i32, i64 }

@MT_RXTD_6_CCAED_TH = common dso_local global i32 0, align 4
@MT_RXTD_6_ACI_TH = common dso_local global i32 0, align 4
@MT_RXTD_13_ACI_TH_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt7603_edcca_set_strict(%struct.mt7603_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mt7603_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -674758656, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %72

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %15 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %17 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %12
  %21 = load i32, i32* @MT_RXTD_6_CCAED_TH, align 4
  %22 = call i32 @FIELD_PREP(i32 %21, i32 52)
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %30

25:                                               ; preds = %12
  %26 = load i32, i32* @MT_RXTD_6_CCAED_TH, align 4
  %27 = call i32 @FIELD_PREP(i32 %26, i32 125)
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %32 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %37 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @MT_RXTD_6_ACI_TH, align 4
  %42 = call i32 @FIELD_PREP(i32 %41, i32 15)
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %50

45:                                               ; preds = %35, %30
  %46 = load i32, i32* @MT_RXTD_6_ACI_TH, align 4
  %47 = call i32 @FIELD_PREP(i32 %46, i32 16)
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %52 = call i32 @MT_RXTD(i32 6)
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @mt76_wr(%struct.mt7603_dev* %51, i32 %52, i32 %53)
  %55 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %56 = call i32 @MT_RXTD(i32 13)
  %57 = load i32, i32* @MT_RXTD_13_ACI_TH_EN, align 4
  %58 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %59 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %50
  %63 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %64 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br label %68

68:                                               ; preds = %62, %50
  %69 = phi i1 [ false, %50 ], [ %67, %62 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @mt76_rmw_field(%struct.mt7603_dev* %55, i32 %56, i32 %57, i32 %70)
  br label %72

72:                                               ; preds = %68, %11
  ret void
}

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @MT_RXTD(i32) #1

declare dso_local i32 @mt76_rmw_field(%struct.mt7603_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
