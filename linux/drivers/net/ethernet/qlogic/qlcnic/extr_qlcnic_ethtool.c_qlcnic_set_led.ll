; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_set_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_set_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.qlcnic_adapter*, i32, i32)* }
%struct.TYPE_4__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@QLCNIC_NON_PRIV_FUNC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"LED test not supported for non privilege function\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@__QLCNIC_LED_ENABLE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@__QLCNIC_RESETTING = common dso_local global i32 0, align 4
@__QLCNIC_DEV_UP = common dso_local global i32 0, align 4
@QLCNIC_LED_TEST = common dso_local global i32 0, align 4
@__QLCNIC_DIAG_RES_ALLOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to set LED blink state.\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to reset LED blink state.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @qlcnic_set_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_set_led(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.qlcnic_adapter* %11, %struct.qlcnic_adapter** %6, align 8
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %18 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @qlcnic_83xx_set_led(%struct.net_device* %21, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %154

24:                                               ; preds = %2
  %25 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %26 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %25, i32 0, i32 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @QLCNIC_NON_PRIV_FUNC, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = call i32 @netdev_warn(%struct.net_device* %33, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %154

37:                                               ; preds = %24
  %38 = load i32, i32* %5, align 4
  switch i32 %38, label %128 [
    i32 129, label %39
    i32 128, label %88
  ]

39:                                               ; preds = %37
  %40 = load i32, i32* @__QLCNIC_LED_ENABLE, align 4
  %41 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %42 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %41, i32 0, i32 1
  %43 = call i32 @test_and_set_bit(i32 %40, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %154

48:                                               ; preds = %39
  %49 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %50 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %51 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %50, i32 0, i32 1
  %52 = call i32 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %131

55:                                               ; preds = %48
  %56 = load i32, i32* @__QLCNIC_DEV_UP, align 4
  %57 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %58 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %57, i32 0, i32 1
  %59 = call i32 @test_bit(i32 %56, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %55
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = load i32, i32* @QLCNIC_LED_TEST, align 4
  %64 = call i32 @qlcnic_diag_alloc_res(%struct.net_device* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %131

67:                                               ; preds = %61
  %68 = load i32, i32* @__QLCNIC_DIAG_RES_ALLOC, align 4
  %69 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %70 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %69, i32 0, i32 1
  %71 = call i32 @set_bit(i32 %68, i32* %70)
  br label %72

72:                                               ; preds = %67, %55
  %73 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %74 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %73, i32 0, i32 3
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32 (%struct.qlcnic_adapter*, i32, i32)*, i32 (%struct.qlcnic_adapter*, i32, i32)** %76, align 8
  %78 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %79 = call i32 %77(%struct.qlcnic_adapter* %78, i32 1, i32 15)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  store i32 0, i32* %8, align 4
  br label %131

82:                                               ; preds = %72
  %83 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %84 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %83, i32 0, i32 2
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = call i32 @dev_err(i32* %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %131

88:                                               ; preds = %37
  store i32 0, i32* %9, align 4
  %89 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %90 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %91 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %90, i32 0, i32 1
  %92 = call i32 @test_bit(i32 %89, i32* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %131

95:                                               ; preds = %88
  %96 = load i32, i32* @__QLCNIC_DEV_UP, align 4
  %97 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %98 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %97, i32 0, i32 1
  %99 = call i32 @test_bit(i32 %96, i32* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %112, label %101

101:                                              ; preds = %95
  %102 = load %struct.net_device*, %struct.net_device** %4, align 8
  %103 = load i32, i32* @QLCNIC_LED_TEST, align 4
  %104 = call i32 @qlcnic_diag_alloc_res(%struct.net_device* %102, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %131

107:                                              ; preds = %101
  %108 = load i32, i32* @__QLCNIC_DIAG_RES_ALLOC, align 4
  %109 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %110 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %109, i32 0, i32 1
  %111 = call i32 @set_bit(i32 %108, i32* %110)
  br label %112

112:                                              ; preds = %107, %95
  %113 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %114 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %113, i32 0, i32 3
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32 (%struct.qlcnic_adapter*, i32, i32)*, i32 (%struct.qlcnic_adapter*, i32, i32)** %116, align 8
  %118 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %119 = call i32 %117(%struct.qlcnic_adapter* %118, i32 0, i32 15)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %112
  %122 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %123 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %122, i32 0, i32 2
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = call i32 @dev_err(i32* %125, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %127

127:                                              ; preds = %121, %112
  br label %131

128:                                              ; preds = %37
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %154

131:                                              ; preds = %127, %106, %94, %82, %81, %66, %54
  %132 = load i32, i32* @__QLCNIC_DIAG_RES_ALLOC, align 4
  %133 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %134 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %133, i32 0, i32 1
  %135 = call i64 @test_and_clear_bit(i32 %132, i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load %struct.net_device*, %struct.net_device** %4, align 8
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @qlcnic_diag_free_res(%struct.net_device* %138, i32 %139)
  br label %141

141:                                              ; preds = %137, %131
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %144, %141
  %148 = load i32, i32* @__QLCNIC_LED_ENABLE, align 4
  %149 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %150 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %149, i32 0, i32 1
  %151 = call i32 @clear_bit(i32 %148, i32* %150)
  br label %152

152:                                              ; preds = %147, %144
  %153 = load i32, i32* %8, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %152, %128, %45, %32, %20
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_set_led(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_diag_alloc_res(%struct.net_device*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_diag_free_res(%struct.net_device*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
