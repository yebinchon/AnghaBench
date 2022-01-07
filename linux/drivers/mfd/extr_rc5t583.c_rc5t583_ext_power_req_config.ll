; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_rc5t583.c_rc5t583_ext_power_req_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_rc5t583.c_rc5t583_ext_power_req_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@EXT_PWR_REQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RC5T583_EXT_PWRREQ1_CONTROL = common dso_local global i32 0, align 4
@RC5T583_EXT_PWRREQ2_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rc5t583_ext_power_req_config(%struct.device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @EXT_PWR_REQ, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @EXT_PWR_REQ, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %40

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @RC5T583_EXT_PWRREQ1_CONTROL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @__rc5t583_set_ext_pwrreq1_control(%struct.device* %24, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %5, align 4
  br label %40

29:                                               ; preds = %18
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @RC5T583_EXT_PWRREQ2_CONTROL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @__rc5t583_set_ext_pwrreq2_control(%struct.device* %35, i32 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  br label %40

39:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %34, %23, %15
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @__rc5t583_set_ext_pwrreq1_control(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @__rc5t583_set_ext_pwrreq2_control(%struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
