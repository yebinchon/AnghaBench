; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_devlink_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_devlink_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32, %struct.devlink*, %struct.TYPE_2__* }
%struct.devlink = type { i32 }
%struct.TYPE_2__ = type { i32 }
%union.devlink_param_value = type { i32 }
%struct.qed_devlink = type { %struct.qed_dev* }

@qed_dl_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qed_devlink_params = common dso_local global i32 0, align 4
@QED_DEVLINK_PARAM_ID_IWARP_CMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*)* @qed_devlink_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_devlink_register(%struct.qed_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qed_dev*, align 8
  %4 = alloca %union.devlink_param_value, align 4
  %5 = alloca %struct.qed_devlink*, align 8
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %3, align 8
  %8 = call %struct.devlink* @devlink_alloc(i32* @qed_dl_ops, i32 8)
  store %struct.devlink* %8, %struct.devlink** %6, align 8
  %9 = load %struct.devlink*, %struct.devlink** %6, align 8
  %10 = icmp ne %struct.devlink* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %61

14:                                               ; preds = %1
  %15 = load %struct.devlink*, %struct.devlink** %6, align 8
  %16 = call %struct.qed_devlink* @devlink_priv(%struct.devlink* %15)
  store %struct.qed_devlink* %16, %struct.qed_devlink** %5, align 8
  %17 = load %struct.devlink*, %struct.devlink** %6, align 8
  %18 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %19 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %18, i32 0, i32 1
  store %struct.devlink* %17, %struct.devlink** %19, align 8
  %20 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %21 = load %struct.qed_devlink*, %struct.qed_devlink** %5, align 8
  %22 = getelementptr inbounds %struct.qed_devlink, %struct.qed_devlink* %21, i32 0, i32 0
  store %struct.qed_dev* %20, %struct.qed_dev** %22, align 8
  %23 = load %struct.devlink*, %struct.devlink** %6, align 8
  %24 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %25 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @devlink_register(%struct.devlink* %23, i32* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %14
  br label %55

32:                                               ; preds = %14
  %33 = load %struct.devlink*, %struct.devlink** %6, align 8
  %34 = load i32, i32* @qed_devlink_params, align 4
  %35 = load i32, i32* @qed_devlink_params, align 4
  %36 = call i32 @ARRAY_SIZE(i32 %35)
  %37 = call i32 @devlink_params_register(%struct.devlink* %33, i32 %34, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %52

41:                                               ; preds = %32
  %42 = bitcast %union.devlink_param_value* %4 to i32*
  store i32 0, i32* %42, align 4
  %43 = load %struct.devlink*, %struct.devlink** %6, align 8
  %44 = load i32, i32* @QED_DEVLINK_PARAM_ID_IWARP_CMT, align 4
  %45 = getelementptr inbounds %union.devlink_param_value, %union.devlink_param_value* %4, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @devlink_param_driverinit_value_set(%struct.devlink* %43, i32 %44, i32 %46)
  %48 = load %struct.devlink*, %struct.devlink** %6, align 8
  %49 = call i32 @devlink_params_publish(%struct.devlink* %48)
  %50 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %51 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  store i32 0, i32* %2, align 4
  br label %61

52:                                               ; preds = %40
  %53 = load %struct.devlink*, %struct.devlink** %6, align 8
  %54 = call i32 @devlink_unregister(%struct.devlink* %53)
  br label %55

55:                                               ; preds = %52, %31
  %56 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %57 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %56, i32 0, i32 1
  store %struct.devlink* null, %struct.devlink** %57, align 8
  %58 = load %struct.devlink*, %struct.devlink** %6, align 8
  %59 = call i32 @devlink_free(%struct.devlink* %58)
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %55, %41, %11
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.devlink* @devlink_alloc(i32*, i32) #1

declare dso_local %struct.qed_devlink* @devlink_priv(%struct.devlink*) #1

declare dso_local i32 @devlink_register(%struct.devlink*, i32*) #1

declare dso_local i32 @devlink_params_register(%struct.devlink*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devlink_param_driverinit_value_set(%struct.devlink*, i32, i32) #1

declare dso_local i32 @devlink_params_publish(%struct.devlink*) #1

declare dso_local i32 @devlink_unregister(%struct.devlink*) #1

declare dso_local i32 @devlink_free(%struct.devlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
