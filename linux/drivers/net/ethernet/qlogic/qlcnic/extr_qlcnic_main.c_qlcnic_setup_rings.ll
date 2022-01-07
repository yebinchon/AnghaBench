; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_setup_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_setup_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i64, i64, i64, i64, i32, %struct.TYPE_2__*, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }

@__QLCNIC_RESETTING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to setup interrupt\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to setup mbx interrupt\0A\00", align 1
@NETDEV_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_setup_rings(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %8 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %8, i32 0, i32 7
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 4
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %144

19:                                               ; preds = %1
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %5, align 8
  %23 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call i32 @netif_device_detach(%struct.net_device* %26)
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @qlcnic_set_real_num_queues(%struct.qlcnic_adapter* %28, i64 %29, i64 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  br label %136

35:                                               ; preds = %19
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = call i64 @netif_running(%struct.net_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = call i32 @__qlcnic_down(%struct.qlcnic_adapter* %40, %struct.net_device* %41)
  br label %43

43:                                               ; preds = %39, %35
  %44 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %45 = call i32 @qlcnic_detach(%struct.qlcnic_adapter* %44)
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %47 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %51 = call i32 @qlcnic_83xx_free_mbx_intr(%struct.qlcnic_adapter* %50)
  %52 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %53 = call i32 @qlcnic_83xx_enable_mbx_poll(%struct.qlcnic_adapter* %52)
  br label %54

54:                                               ; preds = %49, %43
  %55 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %56 = call i32 @qlcnic_teardown_intr(%struct.qlcnic_adapter* %55)
  %57 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %58 = call i32 @qlcnic_setup_intr(%struct.qlcnic_adapter* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %63 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @kfree(i32 %64)
  %66 = load %struct.net_device*, %struct.net_device** %4, align 8
  %67 = call i32 @netdev_err(%struct.net_device* %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %144

69:                                               ; preds = %54
  %70 = load i64, i64* %5, align 8
  %71 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %72 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %70, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load i64, i64* %6, align 8
  %77 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %75, %69
  %82 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %83 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %84 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %87 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @qlcnic_set_real_num_queues(%struct.qlcnic_adapter* %82, i64 %85, i64 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  br label %136

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %93, %75
  %95 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %96 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %94
  %99 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %100 = call i32 @qlcnic_83xx_initialize_nic(%struct.qlcnic_adapter* %99, i32 1)
  %101 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %102 = call i32 @qlcnic_83xx_setup_mbx_intr(%struct.qlcnic_adapter* %101)
  store i32 %102, i32* %7, align 4
  %103 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %104 = call i32 @qlcnic_83xx_disable_mbx_poll(%struct.qlcnic_adapter* %103)
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %98
  %108 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %109 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %108, i32 0, i32 5
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = call i32 @dev_err(i32* %111, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %136

113:                                              ; preds = %98
  br label %114

114:                                              ; preds = %113, %94
  %115 = load %struct.net_device*, %struct.net_device** %4, align 8
  %116 = call i64 @netif_running(%struct.net_device* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %114
  %119 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %120 = call i32 @qlcnic_attach(%struct.qlcnic_adapter* %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %136

124:                                              ; preds = %118
  %125 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %126 = load %struct.net_device*, %struct.net_device** %4, align 8
  %127 = call i32 @__qlcnic_up(%struct.qlcnic_adapter* %125, %struct.net_device* %126)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %136

131:                                              ; preds = %124
  %132 = load %struct.net_device*, %struct.net_device** %4, align 8
  %133 = load i32, i32* @NETDEV_UP, align 4
  %134 = call i32 @qlcnic_restore_indev_addr(%struct.net_device* %132, i32 %133)
  br label %135

135:                                              ; preds = %131, %114
  br label %136

136:                                              ; preds = %135, %130, %123, %107, %92, %34
  %137 = load %struct.net_device*, %struct.net_device** %4, align 8
  %138 = call i32 @netif_device_attach(%struct.net_device* %137)
  %139 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %140 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %141 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %140, i32 0, i32 4
  %142 = call i32 @clear_bit(i32 %139, i32* %141)
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %136, %61, %16
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @qlcnic_set_real_num_queues(%struct.qlcnic_adapter*, i64, i64) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @__qlcnic_down(%struct.qlcnic_adapter*, %struct.net_device*) #1

declare dso_local i32 @qlcnic_detach(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_free_mbx_intr(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_enable_mbx_poll(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_teardown_intr(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_setup_intr(%struct.qlcnic_adapter*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @qlcnic_83xx_initialize_nic(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_83xx_setup_mbx_intr(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_disable_mbx_poll(%struct.qlcnic_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @qlcnic_attach(%struct.qlcnic_adapter*) #1

declare dso_local i32 @__qlcnic_up(%struct.qlcnic_adapter*, %struct.net_device*) #1

declare dso_local i32 @qlcnic_restore_indev_addr(%struct.net_device*, i32) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
