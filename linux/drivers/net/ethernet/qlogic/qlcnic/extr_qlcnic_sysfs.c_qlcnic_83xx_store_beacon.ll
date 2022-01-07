; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sysfs.c_qlcnic_83xx_store_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sysfs.c_qlcnic_83xx_store_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.qlcnic_hardware_context* }
%struct.qlcnic_hardware_context = type { i64 }

@__QLCNIC_RESETTING = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@__QLCNIC_LED_ENABLE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, i8*, i64)* @qlcnic_83xx_store_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_83xx_store_beacon(%struct.qlcnic_adapter* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qlcnic_hardware_context*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %11, i32 0, i32 1
  %13 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %12, align 8
  store %struct.qlcnic_hardware_context* %13, %struct.qlcnic_hardware_context** %8, align 8
  %14 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 0
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %93

22:                                               ; preds = %3
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @kstrtoul(i8* %23, i32 2, i64* %9)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %93

29:                                               ; preds = %22
  %30 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %31 = call i32 @qlcnic_get_beacon_state(%struct.qlcnic_adapter* %30)
  %32 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  %33 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i64, i64* %7, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %4, align 4
  br label %93

40:                                               ; preds = %29
  %41 = call i32 (...) @rtnl_lock()
  %42 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  %43 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @__QLCNIC_LED_ENABLE, align 4
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %49 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %48, i32 0, i32 0
  %50 = call i64 @test_and_set_bit(i32 %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = call i32 (...) @rtnl_unlock()
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %93

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %40
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %62 = load i64, i64* %9, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @qlcnic_83xx_config_led(%struct.qlcnic_adapter* %61, i32 1, i32 %63)
  store i32 %64, i32* %10, align 4
  br label %72

65:                                               ; preds = %57
  %66 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %67 = load i64, i64* %9, align 8
  %68 = icmp ne i64 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i32 @qlcnic_83xx_config_led(%struct.qlcnic_adapter* %66, i32 0, i32 %70)
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %65, %60
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = load i64, i64* %9, align 8
  %77 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  %78 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %75, %72
  %80 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  %81 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* @__QLCNIC_LED_ENABLE, align 4
  %86 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %87 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %86, i32 0, i32 0
  %88 = call i32 @clear_bit(i32 %85, i32* %87)
  br label %89

89:                                               ; preds = %84, %79
  %90 = call i32 (...) @rtnl_unlock()
  %91 = load i64, i64* %7, align 8
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %89, %52, %37, %26, %19
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @qlcnic_get_beacon_state(%struct.qlcnic_adapter*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @qlcnic_83xx_config_led(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
