; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_led.c_iwl_led_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_led.c_iwl_led_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64, i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_led_cmd = type { i8*, i8*, i32, i32 }

@IWL_DEF_LED_INTRVL = common dso_local global i32 0, align 4
@IWL_LED_LINK = common dso_local global i32 0, align 4
@STATUS_READY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IWL_LED_SOLID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, i64, i64)* @iwl_led_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_led_cmd(%struct.iwl_priv* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iwl_led_cmd, align 8
  %9 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = getelementptr inbounds %struct.iwl_led_cmd, %struct.iwl_led_cmd* %8, i32 0, i32 0
  store i8* null, i8** %10, align 8
  %11 = getelementptr inbounds %struct.iwl_led_cmd, %struct.iwl_led_cmd* %8, i32 0, i32 1
  store i8* null, i8** %11, align 8
  %12 = getelementptr inbounds %struct.iwl_led_cmd, %struct.iwl_led_cmd* %8, i32 0, i32 2
  %13 = load i32, i32* @IWL_DEF_LED_INTRVL, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.iwl_led_cmd, %struct.iwl_led_cmd* %8, i32 0, i32 3
  %15 = load i32, i32* @IWL_LED_LINK, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32, i32* @STATUS_READY, align 4
  %17 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %18 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %17, i32 0, i32 3
  %19 = call i32 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %82

24:                                               ; preds = %3
  %25 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %26 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %32 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %82

37:                                               ; preds = %30, %24
  %38 = load i64, i64* %7, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i64, i64* @IWL_LED_SOLID, align 8
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %40, %37
  %43 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %46 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %45, i32 0, i32 2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @iwl_blink_compensation(%struct.iwl_priv* %43, i64 %44, i32 %53)
  %55 = getelementptr inbounds %struct.iwl_led_cmd, %struct.iwl_led_cmd* %8, i32 0, i32 1
  store i8* %54, i8** %55, align 8
  %56 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %59 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %58, i32 0, i32 2
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @iwl_blink_compensation(%struct.iwl_priv* %56, i64 %57, i32 %66)
  %68 = getelementptr inbounds %struct.iwl_led_cmd, %struct.iwl_led_cmd* %8, i32 0, i32 0
  store i8* %67, i8** %68, align 8
  %69 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %70 = call i32 @iwl_send_led_cmd(%struct.iwl_priv* %69, %struct.iwl_led_cmd* %8)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %42
  %74 = load i64, i64* %6, align 8
  %75 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %76 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %79 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %73, %42
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %36, %21
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i8* @iwl_blink_compensation(%struct.iwl_priv*, i64, i32) #1

declare dso_local i32 @iwl_send_led_cmd(%struct.iwl_priv*, %struct.iwl_led_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
