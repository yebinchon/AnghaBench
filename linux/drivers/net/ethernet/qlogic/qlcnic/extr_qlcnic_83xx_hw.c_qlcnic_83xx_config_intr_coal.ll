; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_config_intr_coal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_config_intr_coal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.qlcnic_nic_intr_coalesce }
%struct.qlcnic_nic_intr_coalesce = type { i64, i64, i32, i64, i64, i32 }
%struct.ethtool_coalesce = type { i64, i64, i64, i64 }

@QLCNIC_HOST_CTX_STATE_FREED = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@QLCNIC_INTR_DEFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Invalid Interrupt coalescing type\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_config_intr_coal(%struct.qlcnic_adapter* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.qlcnic_nic_intr_coalesce*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.qlcnic_nic_intr_coalesce* %15, %struct.qlcnic_nic_intr_coalesce** %6, align 8
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @QLCNIC_HOST_CTX_STATE_FREED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %121

26:                                               ; preds = %2
  %27 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %9, align 8
  %30 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %10, align 8
  %33 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %7, align 8
  %36 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %8, align 8
  %39 = load i32, i32* @QLCNIC_INTR_DEFAULT, align 4
  %40 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %6, align 8
  %41 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 8
  %42 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %6, align 8
  %43 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %26
  %48 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %6, align 8
  %49 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %6, align 8
  %55 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %54, i32 0, i32 2
  store i32 128, i32* %55, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %6, align 8
  %58 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %57, i32 0, i32 3
  store i64 %56, i64* %58, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %6, align 8
  %61 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %60, i32 0, i32 4
  store i64 %59, i64* %61, align 8
  br label %99

62:                                               ; preds = %47, %26
  %63 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %6, align 8
  %64 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %62
  %69 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %6, align 8
  %70 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %10, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %6, align 8
  %76 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %75, i32 0, i32 2
  store i32 130, i32* %76, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %6, align 8
  %79 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %6, align 8
  %82 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  br label %98

83:                                               ; preds = %68, %62
  %84 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %6, align 8
  %85 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %84, i32 0, i32 2
  store i32 129, i32* %85, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %6, align 8
  %88 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %6, align 8
  %91 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %6, align 8
  %94 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %93, i32 0, i32 3
  store i64 %92, i64* %94, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %6, align 8
  %97 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %96, i32 0, i32 4
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %83, %74
  br label %99

99:                                               ; preds = %98, %53
  %100 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %6, align 8
  %101 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  switch i32 %102, label %112 [
    i32 130, label %103
    i32 128, label %106
    i32 129, label %109
  ]

103:                                              ; preds = %99
  %104 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %105 = call i32 @qlcnic_83xx_set_rx_intr_coal(%struct.qlcnic_adapter* %104)
  store i32 %105, i32* %11, align 4
  br label %119

106:                                              ; preds = %99
  %107 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %108 = call i32 @qlcnic_83xx_set_tx_intr_coal(%struct.qlcnic_adapter* %107)
  store i32 %108, i32* %11, align 4
  br label %119

109:                                              ; preds = %99
  %110 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %111 = call i32 @qlcnic_83xx_set_rx_tx_intr_coal(%struct.qlcnic_adapter* %110)
  store i32 %111, i32* %11, align 4
  br label %119

112:                                              ; preds = %99
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %11, align 4
  %115 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %116 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @netdev_err(i32 %117, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %119

119:                                              ; preds = %112, %109, %106, %103
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %119, %23
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @qlcnic_83xx_set_rx_intr_coal(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_set_tx_intr_coal(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_set_rx_tx_intr_coal(%struct.qlcnic_adapter*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
