; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_ath6kl_indicate_tx_activity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_ath6kl_indicate_tx_activity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32*, i32*, i64*, i64, i32, i32, i32 }

@WMI_ENABLED = common dso_local global i32 0, align 4
@WMM_NUM_AC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath6kl_indicate_tx_activity(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath6kl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.ath6kl*
  store %struct.ath6kl* %11, %struct.ath6kl** %7, align 8
  %12 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %13 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @WMI_ENABLED, align 4
  %19 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %20 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %19, i32 0, i32 6
  %21 = call i32 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %116

24:                                               ; preds = %3
  %25 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %26 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %25, i32 0, i32 5
  %27 = call i32 @spin_lock_bh(i32* %26)
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %30 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32 %28, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %24
  %37 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %38 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %37, i32 0, i32 2
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %44 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %36
  %48 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %49 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %48, i32 0, i32 2
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %55 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %54, i32 0, i32 3
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %47, %36
  br label %112

57:                                               ; preds = %24
  %58 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %59 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %62 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %60, %66
  br i1 %67, label %68, label %111

68:                                               ; preds = %57
  %69 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %70 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %69, i32 0, i32 3
  store i64 0, i64* %70, align 8
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %107, %68
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @WMM_NUM_AC, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %110

75:                                               ; preds = %71
  %76 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %77 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %106

84:                                               ; preds = %75
  %85 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %86 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %85, i32 0, i32 2
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %93 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %91, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %84
  %97 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %98 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %97, i32 0, i32 2
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %105 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %104, i32 0, i32 3
  store i64 %103, i64* %105, align 8
  br label %106

106:                                              ; preds = %96, %84, %75
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %9, align 4
  br label %71

110:                                              ; preds = %71
  br label %111

111:                                              ; preds = %110, %57
  br label %112

112:                                              ; preds = %111, %56
  %113 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %114 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %113, i32 0, i32 5
  %115 = call i32 @spin_unlock_bh(i32* %114)
  br label %116

116:                                              ; preds = %112, %23
  %117 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %118 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @ath6kl_htc_activity_changed(i32 %119, i32 %120, i32 %121)
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath6kl_htc_activity_changed(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
