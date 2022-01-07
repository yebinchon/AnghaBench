; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hip04_eth.c_hip04_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hip04_eth.c_hip04_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.hip04_priv = type { i64, i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@HIP04_MAX_TX_COALESCE_USECS = common dso_local global i64 0, align 8
@HIP04_MIN_TX_COALESCE_USECS = common dso_local global i64 0, align 8
@HIP04_MAX_TX_COALESCE_FRAMES = common dso_local global i64 0, align 8
@HIP04_MIN_TX_COALESCE_FRAMES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @hip04_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hip04_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.hip04_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.hip04_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.hip04_priv* %8, %struct.hip04_priv** %6, align 8
  %9 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %9, i32 0, i32 21
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %108, label %13

13:                                               ; preds = %2
  %14 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %15 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %14, i32 0, i32 20
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %108, label %18

18:                                               ; preds = %13
  %19 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %19, i32 0, i32 19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %108, label %23

23:                                               ; preds = %18
  %24 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %24, i32 0, i32 18
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %108, label %28

28:                                               ; preds = %23
  %29 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %29, i32 0, i32 17
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %108, label %33

33:                                               ; preds = %28
  %34 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %34, i32 0, i32 16
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %108, label %38

38:                                               ; preds = %33
  %39 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %39, i32 0, i32 15
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %108, label %43

43:                                               ; preds = %38
  %44 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %44, i32 0, i32 14
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %108, label %48

48:                                               ; preds = %43
  %49 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %49, i32 0, i32 13
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %108, label %53

53:                                               ; preds = %48
  %54 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %55 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %54, i32 0, i32 12
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %108, label %58

58:                                               ; preds = %53
  %59 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %60 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %59, i32 0, i32 11
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %108, label %63

63:                                               ; preds = %58
  %64 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %65 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %64, i32 0, i32 10
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %108, label %68

68:                                               ; preds = %63
  %69 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %70 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %69, i32 0, i32 9
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %108, label %73

73:                                               ; preds = %68
  %74 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %75 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %74, i32 0, i32 8
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %108, label %78

78:                                               ; preds = %73
  %79 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %80 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %79, i32 0, i32 7
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %108, label %83

83:                                               ; preds = %78
  %84 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %85 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %84, i32 0, i32 6
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %108, label %88

88:                                               ; preds = %83
  %89 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %90 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %108, label %93

93:                                               ; preds = %88
  %94 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %95 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %93
  %99 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %100 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %105 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103, %98, %93, %88, %83, %78, %73, %68, %63, %58, %53, %48, %43, %38, %33, %28, %23, %18, %13, %2
  %109 = load i32, i32* @EOPNOTSUPP, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %149

111:                                              ; preds = %103
  %112 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %113 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @HIP04_MAX_TX_COALESCE_USECS, align 8
  %116 = icmp sgt i64 %114, %115
  br i1 %116, label %135, label %117

117:                                              ; preds = %111
  %118 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %119 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @HIP04_MIN_TX_COALESCE_USECS, align 8
  %122 = icmp slt i64 %120, %121
  br i1 %122, label %135, label %123

123:                                              ; preds = %117
  %124 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %125 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @HIP04_MAX_TX_COALESCE_FRAMES, align 8
  %128 = icmp sgt i64 %126, %127
  br i1 %128, label %135, label %129

129:                                              ; preds = %123
  %130 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %131 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @HIP04_MIN_TX_COALESCE_FRAMES, align 8
  %134 = icmp slt i64 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %129, %123, %117, %111
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %3, align 4
  br label %149

138:                                              ; preds = %129
  %139 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %140 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.hip04_priv*, %struct.hip04_priv** %6, align 8
  %143 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  %144 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %145 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.hip04_priv*, %struct.hip04_priv** %6, align 8
  %148 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %147, i32 0, i32 1
  store i64 %146, i64* %148, align 8
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %138, %135, %108
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local %struct.hip04_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
