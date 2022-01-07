; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_sringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_sringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i64, i64 }
%struct.gfar_private = type { i32, i32, i32, %struct.TYPE_4__**, %struct.TYPE_3__** }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@GFAR_RX_MAX_RING_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Ring sizes must be a power of 2\0A\00", align 1
@GFAR_TX_MAX_RING_SIZE = common dso_local global i64 0, align 8
@GFAR_RESETTING = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @gfar_sringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_sringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.gfar_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %9)
  store %struct.gfar_private* %10, %struct.gfar_private** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @GFAR_RX_MAX_RING_SIZE, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %129

19:                                               ; preds = %2
  %20 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @is_power_of_2(i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call i32 @netdev_err(%struct.net_device* %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %129

30:                                               ; preds = %19
  %31 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @GFAR_TX_MAX_RING_SIZE, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %129

39:                                               ; preds = %30
  %40 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %41 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @is_power_of_2(i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = call i32 @netdev_err(%struct.net_device* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %129

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %57, %50
  %52 = load i32, i32* @GFAR_RESETTING, align 4
  %53 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %54 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %53, i32 0, i32 2
  %55 = call i64 @test_and_set_bit_lock(i32 %52, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = call i32 (...) @cpu_relax()
  br label %51

59:                                               ; preds = %51
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IFF_UP, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.net_device*, %struct.net_device** %4, align 8
  %68 = call i32 @stop_gfar(%struct.net_device* %67)
  br label %69

69:                                               ; preds = %66, %59
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %88, %69
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %73 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %70
  %77 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %78 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %81 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %80, i32 0, i32 4
  %82 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %82, i64 %84
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i64 %79, i64* %87, align 8
  br label %88

88:                                               ; preds = %76
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %70

91:                                               ; preds = %70
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %110, %91
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %95 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %113

98:                                               ; preds = %92
  %99 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %100 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %103 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %102, i32 0, i32 3
  %104 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %104, i64 %106
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i64 %101, i64* %109, align 8
  br label %110

110:                                              ; preds = %98
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %92

113:                                              ; preds = %92
  %114 = load %struct.net_device*, %struct.net_device** %4, align 8
  %115 = getelementptr inbounds %struct.net_device, %struct.net_device* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @IFF_UP, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  %121 = load %struct.net_device*, %struct.net_device** %4, align 8
  %122 = call i32 @startup_gfar(%struct.net_device* %121)
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %120, %113
  %124 = load i32, i32* @GFAR_RESETTING, align 4
  %125 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %126 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %125, i32 0, i32 2
  %127 = call i32 @clear_bit_unlock(i32 %124, i32* %126)
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %123, %45, %36, %25, %16
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_power_of_2(i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i64 @test_and_set_bit_lock(i32, i32*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @stop_gfar(%struct.net_device*) #1

declare dso_local i32 @startup_gfar(%struct.net_device*) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
