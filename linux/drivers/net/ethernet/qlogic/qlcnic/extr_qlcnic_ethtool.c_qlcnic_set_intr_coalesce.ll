; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_set_intr_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_set_intr_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qlcnic_adapter = type { i32 }

@__QLCNIC_DEV_UP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @qlcnic_set_intr_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_set_intr_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.qlcnic_adapter* %9, %struct.qlcnic_adapter** %6, align 8
  %10 = load i32, i32* @__QLCNIC_DEV_UP, align 4
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %12 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %11, i32 0, i32 0
  %13 = call i32 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %131

18:                                               ; preds = %2
  %19 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 65535
  br i1 %22, label %123, label %23

23:                                               ; preds = %18
  %24 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 65535
  br i1 %27, label %123, label %28

28:                                               ; preds = %23
  %29 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %31, 65535
  br i1 %32, label %123, label %33

33:                                               ; preds = %28
  %34 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 65535
  br i1 %37, label %123, label %38

38:                                               ; preds = %33
  %39 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %39, i32 0, i32 20
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %123, label %43

43:                                               ; preds = %38
  %44 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %44, i32 0, i32 19
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %123, label %48

48:                                               ; preds = %43
  %49 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %49, i32 0, i32 18
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %123, label %53

53:                                               ; preds = %48
  %54 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %55 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %54, i32 0, i32 17
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %123, label %58

58:                                               ; preds = %53
  %59 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %60 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %59, i32 0, i32 16
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %123, label %63

63:                                               ; preds = %58
  %64 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %65 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %64, i32 0, i32 15
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %123, label %68

68:                                               ; preds = %63
  %69 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %70 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %69, i32 0, i32 14
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %123, label %73

73:                                               ; preds = %68
  %74 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %75 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %74, i32 0, i32 13
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %123, label %78

78:                                               ; preds = %73
  %79 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %80 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %79, i32 0, i32 12
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %123, label %83

83:                                               ; preds = %78
  %84 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %85 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %84, i32 0, i32 11
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %123, label %88

88:                                               ; preds = %83
  %89 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %90 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %89, i32 0, i32 10
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %123, label %93

93:                                               ; preds = %88
  %94 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %95 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %94, i32 0, i32 9
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %123, label %98

98:                                               ; preds = %93
  %99 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %100 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %99, i32 0, i32 8
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %123, label %103

103:                                              ; preds = %98
  %104 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %105 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %104, i32 0, i32 7
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %123, label %108

108:                                              ; preds = %103
  %109 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %110 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %109, i32 0, i32 6
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %123, label %113

113:                                              ; preds = %108
  %114 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %115 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %120 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %118, %113, %108, %103, %98, %93, %88, %83, %78, %73, %68, %63, %58, %53, %48, %43, %38, %33, %28, %23, %18
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %131

126:                                              ; preds = %118
  %127 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %128 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %129 = call i32 @qlcnic_config_intr_coalesce(%struct.qlcnic_adapter* %127, %struct.ethtool_coalesce* %128)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %126, %123, %15
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_config_intr_coalesce(%struct.qlcnic_adapter*, %struct.ethtool_coalesce*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
