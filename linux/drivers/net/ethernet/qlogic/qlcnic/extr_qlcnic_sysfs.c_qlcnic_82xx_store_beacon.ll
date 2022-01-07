; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sysfs.c_qlcnic_82xx_store_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sysfs.c_qlcnic_82xx_store_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, i32, %struct.qlcnic_hardware_context* }
%struct.qlcnic_hardware_context = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@__QLCNIC_LED_ENABLE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@__QLCNIC_RESETTING = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@__QLCNIC_DEV_UP = common dso_local global i32 0, align 4
@QLCNIC_LED_TEST = common dso_local global i32 0, align 4
@__QLCNIC_DIAG_RES_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, i8*, i64)* @qlcnic_82xx_store_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_82xx_store_beacon(%struct.qlcnic_adapter* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qlcnic_hardware_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 3
  %16 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %15, align 8
  store %struct.qlcnic_hardware_context* %16, %struct.qlcnic_hardware_context** %8, align 8
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %18 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %10, align 4
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 4
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %131

25:                                               ; preds = %3
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @memcpy(i32* %11, i8* %26, i32 4)
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @qlcnic_validate_beacon(%struct.qlcnic_adapter* %28, i32 %29, i64* %12, i64* %13)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %131

35:                                               ; preds = %25
  %36 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %37 = call i32 @qlcnic_get_beacon_state(%struct.qlcnic_adapter* %36)
  %38 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  %39 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %12, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i64, i64* %7, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %4, align 4
  br label %131

46:                                               ; preds = %35
  %47 = call i32 (...) @rtnl_lock()
  %48 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  %49 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @__QLCNIC_LED_ENABLE, align 4
  %54 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %55 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %54, i32 0, i32 1
  %56 = call i64 @test_and_set_bit(i32 %53, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = call i32 (...) @rtnl_unlock()
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %131

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %46
  %64 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %65 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %66 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %65, i32 0, i32 1
  %67 = call i64 @test_bit(i32 %64, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %9, align 4
  br label %118

72:                                               ; preds = %63
  %73 = load i32, i32* @__QLCNIC_DEV_UP, align 4
  %74 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %75 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %74, i32 0, i32 1
  %76 = call i64 @test_bit(i32 %73, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %92, label %78

78:                                               ; preds = %72
  %79 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %80 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @QLCNIC_LED_TEST, align 4
  %83 = call i32 @qlcnic_diag_alloc_res(i32 %81, i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %118

87:                                               ; preds = %78
  %88 = load i32, i32* @__QLCNIC_DIAG_RES_ALLOC, align 4
  %89 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %90 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %89, i32 0, i32 1
  %91 = call i32 @set_bit(i32 %88, i32* %90)
  br label %92

92:                                               ; preds = %87, %72
  %93 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %94 = load i64, i64* %12, align 8
  %95 = load i64, i64* %13, align 8
  %96 = call i32 @qlcnic_config_led(%struct.qlcnic_adapter* %93, i64 %94, i64 %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %92
  %100 = load i64, i64* %7, align 8
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %9, align 4
  %102 = load i64, i64* %12, align 8
  %103 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  %104 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %99, %92
  %106 = load i32, i32* @__QLCNIC_DIAG_RES_ALLOC, align 4
  %107 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %108 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %107, i32 0, i32 1
  %109 = call i64 @test_and_clear_bit(i32 %106, i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %113 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @qlcnic_diag_free_res(i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %111, %105
  br label %118

118:                                              ; preds = %117, %86, %69
  %119 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  %120 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = load i32, i32* @__QLCNIC_LED_ENABLE, align 4
  %125 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %126 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %125, i32 0, i32 1
  %127 = call i32 @clear_bit(i32 %124, i32* %126)
  br label %128

128:                                              ; preds = %123, %118
  %129 = call i32 (...) @rtnl_unlock()
  %130 = load i32, i32* %9, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %128, %58, %43, %33, %22
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @qlcnic_validate_beacon(%struct.qlcnic_adapter*, i32, i64*, i64*) #1

declare dso_local i32 @qlcnic_get_beacon_state(%struct.qlcnic_adapter*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_diag_alloc_res(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_config_led(%struct.qlcnic_adapter*, i64, i64) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_diag_free_res(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
