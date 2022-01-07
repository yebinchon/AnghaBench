; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_phy_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_phy_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i64, i64, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_3__ = type { i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.1*)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.xgbe_prv_data.1 = type opaque

@SPEED_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_phy_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_phy_adjust_link(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %5 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %4, i32 0, i32 4
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %94

9:                                                ; preds = %1
  %10 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %11 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %15 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %14, i32 0, i32 6
  store i32 %13, i32* %15, align 8
  %16 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %17 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %20 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %18, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  %25 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %26 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %30 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %32 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32 (%struct.xgbe_prv_data.1*)*, i32 (%struct.xgbe_prv_data.1*)** %33, align 8
  %35 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %36 = bitcast %struct.xgbe_prv_data* %35 to %struct.xgbe_prv_data.1*
  %37 = call i32 %34(%struct.xgbe_prv_data.1* %36)
  br label %38

38:                                               ; preds = %24, %9
  %39 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %40 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %43 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %41, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  %48 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %49 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %53 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %55 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.0*)** %56, align 8
  %58 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %59 = bitcast %struct.xgbe_prv_data* %58 to %struct.xgbe_prv_data.0*
  %60 = call i32 %57(%struct.xgbe_prv_data.0* %59)
  br label %61

61:                                               ; preds = %47, %38
  %62 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %63 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %66 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %64, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %61
  store i32 1, i32* %3, align 4
  %71 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %72 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %76 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %75, i32 0, i32 2
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %70, %61
  %78 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %79 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %82 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %80, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %77
  store i32 1, i32* %3, align 4
  %87 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %88 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %92 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %91, i32 0, i32 3
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %86, %77
  br label %106

94:                                               ; preds = %1
  %95 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %96 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  store i32 1, i32* %3, align 4
  %100 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %101 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %100, i32 0, i32 3
  store i64 0, i64* %101, align 8
  %102 = load i64, i64* @SPEED_UNKNOWN, align 8
  %103 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %104 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %103, i32 0, i32 2
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %99, %94
  br label %106

106:                                              ; preds = %105, %93
  %107 = load i32, i32* %3, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %111 = call i64 @netif_msg_link(%struct.xgbe_prv_data* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %115 = call i32 @xgbe_phy_print_status(%struct.xgbe_prv_data* %114)
  br label %116

116:                                              ; preds = %113, %109, %106
  ret void
}

declare dso_local i64 @netif_msg_link(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_phy_print_status(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
