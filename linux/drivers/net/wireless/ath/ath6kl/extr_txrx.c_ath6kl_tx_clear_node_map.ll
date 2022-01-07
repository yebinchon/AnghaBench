; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_ath6kl_tx_clear_node_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_ath6kl_tx_clear_node_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_vif = type { i64, %struct.ath6kl* }
%struct.ath6kl = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@ADHOC_NETWORK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath6kl_vif*, i32, i64)* @ath6kl_tx_clear_node_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_tx_clear_node_map(%struct.ath6kl_vif* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ath6kl_vif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ath6kl*, align 8
  %8 = alloca i64, align 8
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %10 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %9, i32 0, i32 1
  %11 = load %struct.ath6kl*, %struct.ath6kl** %10, align 8
  store %struct.ath6kl* %11, %struct.ath6kl** %7, align 8
  %12 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %13 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ADHOC_NETWORK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %98

18:                                               ; preds = %3
  %19 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %20 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %98

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %27 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %98

31:                                               ; preds = %24
  %32 = load i64, i64* %6, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %98

35:                                               ; preds = %31
  %36 = load i64, i64* %6, align 8
  %37 = add i64 %36, -1
  store i64 %37, i64* %6, align 8
  %38 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %39 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, i64* %43, align 8
  %46 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %47 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %35
  br label %98

55:                                               ; preds = %35
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %58 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = icmp ne i64 %56, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %98

64:                                               ; preds = %55
  %65 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %66 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %8, align 8
  br label %69

69:                                               ; preds = %95, %64
  %70 = load i64, i64* %8, align 8
  %71 = icmp ugt i64 %70, 0
  br i1 %71, label %72, label %98

72:                                               ; preds = %69
  %73 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %74 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = sub i64 %76, 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  br label %98

83:                                               ; preds = %72
  %84 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %85 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i64, i64* %8, align 8
  %88 = sub i64 %87, 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = call i32 @memset(%struct.TYPE_2__* %89, i32 0, i32 4)
  %91 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %92 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %83
  %96 = load i64, i64* %8, align 8
  %97 = add i64 %96, -1
  store i64 %97, i64* %8, align 8
  br label %69

98:                                               ; preds = %17, %23, %30, %34, %54, %63, %82, %69
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
