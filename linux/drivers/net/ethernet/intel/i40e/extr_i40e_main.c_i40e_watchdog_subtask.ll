; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_watchdog_subtask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_watchdog_subtask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, i32, i64*, %struct.TYPE_2__**, i32, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@__I40E_DOWN = common dso_local global i32 0, align 4
@__I40E_CONFIG_BUSY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@I40E_FLAG_LINK_POLLING_ENABLED = common dso_local global i32 0, align 4
@__I40E_TEMP_LINK_POLLING = common dso_local global i32 0, align 4
@I40E_FLAG_VEB_STATS_ENABLED = common dso_local global i32 0, align 4
@I40E_MAX_VEB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_pf*)* @i40e_watchdog_subtask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_watchdog_subtask(%struct.i40e_pf* %0) #0 {
  %2 = alloca %struct.i40e_pf*, align 8
  %3 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %2, align 8
  %4 = load i32, i32* @__I40E_DOWN, align 4
  %5 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %6 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @test_bit(i32 %4, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @__I40E_CONFIG_BUSY, align 4
  %12 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %13 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @test_bit(i32 %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10, %1
  br label %130

18:                                               ; preds = %10
  %19 = load i64, i64* @jiffies, align 8
  %20 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %21 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %24 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = call i64 @time_before(i64 %19, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %130

30:                                               ; preds = %18
  %31 = load i64, i64* @jiffies, align 8
  %32 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %33 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %32, i32 0, i32 5
  store i64 %31, i64* %33, align 8
  %34 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %35 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @I40E_FLAG_LINK_POLLING_ENABLED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* @__I40E_TEMP_LINK_POLLING, align 4
  %42 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %43 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @test_bit(i32 %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40, %30
  %48 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %49 = call i32 @i40e_link_event(%struct.i40e_pf* %48)
  br label %50

50:                                               ; preds = %47, %40
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %87, %50
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %54 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %90

57:                                               ; preds = %51
  %58 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %59 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %60, i64 %62
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = icmp ne %struct.TYPE_2__* %64, null
  br i1 %65, label %66, label %86

66:                                               ; preds = %57
  %67 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %68 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %67, i32 0, i32 3
  %69 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %69, i64 %71
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %66
  %78 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %79 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %78, i32 0, i32 3
  %80 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %80, i64 %82
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = call i32 @i40e_update_stats(%struct.TYPE_2__* %84)
  br label %86

86:                                               ; preds = %77, %66, %57
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %51

90:                                               ; preds = %51
  %91 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %92 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @I40E_FLAG_VEB_STATS_ENABLED, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %125

97:                                               ; preds = %90
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %121, %97
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* @I40E_MAX_VEB, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %124

102:                                              ; preds = %98
  %103 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %104 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %103, i32 0, i32 2
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %102
  %112 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %113 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %112, i32 0, i32 2
  %114 = load i64*, i64** %113, align 8
  %115 = load i32, i32* %3, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @i40e_update_veb_stats(i64 %118)
  br label %120

120:                                              ; preds = %111, %102
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %3, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %3, align 4
  br label %98

124:                                              ; preds = %98
  br label %125

125:                                              ; preds = %124, %90
  %126 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %127 = call i32 @i40e_ptp_rx_hang(%struct.i40e_pf* %126)
  %128 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %129 = call i32 @i40e_ptp_tx_hang(%struct.i40e_pf* %128)
  br label %130

130:                                              ; preds = %125, %29, %17
  ret void
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @i40e_link_event(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_update_stats(%struct.TYPE_2__*) #1

declare dso_local i32 @i40e_update_veb_stats(i64) #1

declare dso_local i32 @i40e_ptp_rx_hang(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_ptp_tx_hang(%struct.i40e_pf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
