; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_class_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_class_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_can_classdev = type { %struct.TYPE_5__*, i32, i64, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"registering %s failed (err=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"%s device registered (irq=%d, version=%d)\0A\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m_can_class_register(%struct.m_can_classdev* %0) #0 {
  %2 = alloca %struct.m_can_classdev*, align 8
  %3 = alloca i32, align 4
  store %struct.m_can_classdev* %0, %struct.m_can_classdev** %2, align 8
  %4 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %5 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %10 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @pm_runtime_enable(i32 %11)
  %13 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %14 = call i32 @m_can_clk_start(%struct.m_can_classdev* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  br label %68

18:                                               ; preds = %8
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %21 = call i32 @m_can_dev_setup(%struct.m_can_classdev* %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %65

25:                                               ; preds = %19
  %26 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %27 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = call i32 @register_m_can_dev(%struct.TYPE_5__* %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %34 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %37 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  br label %65

43:                                               ; preds = %25
  %44 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %45 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = call i32 @devm_can_led_init(%struct.TYPE_5__* %46)
  %48 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %49 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = call i32 @of_can_transceiver(%struct.TYPE_5__* %50)
  %52 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %53 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @KBUILD_MODNAME, align 4
  %56 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %57 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %62 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dev_info(i32 %54, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %43, %32, %24
  %66 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %67 = call i32 @m_can_clk_stop(%struct.m_can_classdev* %66)
  br label %68

68:                                               ; preds = %65, %17
  %69 = load i32, i32* %3, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %68
  %72 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %73 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %78 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @pm_runtime_disable(i32 %79)
  br label %81

81:                                               ; preds = %76, %71
  %82 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %83 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = call i32 @free_candev(%struct.TYPE_5__* %84)
  br label %86

86:                                               ; preds = %81, %68
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @pm_runtime_enable(i32) #1

declare dso_local i32 @m_can_clk_start(%struct.m_can_classdev*) #1

declare dso_local i32 @m_can_dev_setup(%struct.m_can_classdev*) #1

declare dso_local i32 @register_m_can_dev(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @devm_can_led_init(%struct.TYPE_5__*) #1

declare dso_local i32 @of_can_transceiver(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @m_can_clk_stop(%struct.m_can_classdev*) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i32 @free_candev(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
