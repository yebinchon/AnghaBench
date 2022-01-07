; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_82xx_mq_intrpt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_82xx_mq_intrpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.TYPE_3__*, %struct.qlcnic_hardware_context* }
%struct.TYPE_3__ = type { i32 }
%struct.qlcnic_hardware_context = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i64, i32 }

@QLCNIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QLCNIC_INTRPT_MSIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to configure Interrupt for %d vector\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_82xx_mq_intrpt(%struct.qlcnic_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_hardware_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %9, i32 0, i32 2
  %11 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %10, align 8
  store %struct.qlcnic_hardware_context* %11, %struct.qlcnic_hardware_context** %6, align 8
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %13 = call i64 @qlcnic_check_multi_tx(%struct.qlcnic_adapter* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %92

15:                                               ; preds = %2
  %16 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %17 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %92, label %20

20:                                               ; preds = %15
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %22 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %92

27:                                               ; preds = %20
  %28 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %29 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @array_size(i32 4, i32 %30)
  %32 = call %struct.TYPE_4__* @vzalloc(i32 %31)
  %33 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %34 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %33, i32 0, i32 1
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %34, align 8
  %35 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %36 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = icmp ne %struct.TYPE_4__* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %93

42:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %73, %42
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %46 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %76

49:                                               ; preds = %43
  %50 = load i32, i32* @QLCNIC_INTRPT_MSIX, align 4
  %51 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %52 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  store i32 %50, i32* %57, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %60 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %58, i32* %65, align 8
  %66 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %67 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %49
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %43

76:                                               ; preds = %43
  %77 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %78 = call i32 @qlcnic_82xx_config_intrpt(%struct.qlcnic_adapter* %77, i32 1)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %83 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %82, i32 0, i32 1
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %87 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @dev_err(i32* %85, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %81, %76
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %3, align 4
  br label %93

92:                                               ; preds = %20, %15, %2
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %90, %39
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @qlcnic_check_multi_tx(%struct.qlcnic_adapter*) #1

declare dso_local %struct.TYPE_4__* @vzalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local i32 @qlcnic_82xx_config_intrpt(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
