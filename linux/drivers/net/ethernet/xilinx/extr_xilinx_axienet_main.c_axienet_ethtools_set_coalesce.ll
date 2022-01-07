; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_ethtools_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_ethtools_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.axienet_local = type { i64, i64 }

@.str = private unnamed_addr constant [49 x i8] c"Please stop netif before applying configuration\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @axienet_ethtools_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axienet_ethtools_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.axienet_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.axienet_local* @netdev_priv(%struct.net_device* %7)
  store %struct.axienet_local* %8, %struct.axienet_local** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call i64 @netif_running(%struct.net_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i32 @netdev_err(%struct.net_device* %13, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EFAULT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %143

17:                                               ; preds = %2
  %18 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %18, i32 0, i32 21
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %117, label %22

22:                                               ; preds = %17
  %23 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %23, i32 0, i32 20
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %117, label %27

27:                                               ; preds = %22
  %28 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %28, i32 0, i32 19
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %117, label %32

32:                                               ; preds = %27
  %33 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %33, i32 0, i32 18
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %117, label %37

37:                                               ; preds = %32
  %38 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %38, i32 0, i32 17
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %117, label %42

42:                                               ; preds = %37
  %43 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %44 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %43, i32 0, i32 16
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %117, label %47

47:                                               ; preds = %42
  %48 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %49 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %48, i32 0, i32 15
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %117, label %52

52:                                               ; preds = %47
  %53 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %54 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %53, i32 0, i32 14
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %117, label %57

57:                                               ; preds = %52
  %58 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %59 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %58, i32 0, i32 13
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %117, label %62

62:                                               ; preds = %57
  %63 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %64 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %63, i32 0, i32 12
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %117, label %67

67:                                               ; preds = %62
  %68 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %69 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %68, i32 0, i32 11
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %117, label %72

72:                                               ; preds = %67
  %73 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %74 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %73, i32 0, i32 10
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %117, label %77

77:                                               ; preds = %72
  %78 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %79 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %78, i32 0, i32 9
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %117, label %82

82:                                               ; preds = %77
  %83 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %84 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %83, i32 0, i32 8
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %117, label %87

87:                                               ; preds = %82
  %88 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %89 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %88, i32 0, i32 7
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %117, label %92

92:                                               ; preds = %87
  %93 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %94 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %93, i32 0, i32 6
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %117, label %97

97:                                               ; preds = %92
  %98 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %99 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %117, label %102

102:                                              ; preds = %97
  %103 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %104 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %102
  %108 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %109 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %114 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112, %107, %102, %97, %92, %87, %82, %77, %72, %67, %62, %57, %52, %47, %42, %37, %32, %27, %22, %17
  %118 = load i32, i32* @EOPNOTSUPP, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %143

120:                                              ; preds = %112
  %121 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %122 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %127 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %130 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %129, i32 0, i32 1
  store i64 %128, i64* %130, align 8
  br label %131

131:                                              ; preds = %125, %120
  %132 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %133 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %138 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.axienet_local*, %struct.axienet_local** %6, align 8
  %141 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  br label %142

142:                                              ; preds = %136, %131
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %142, %117, %12
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local %struct.axienet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
