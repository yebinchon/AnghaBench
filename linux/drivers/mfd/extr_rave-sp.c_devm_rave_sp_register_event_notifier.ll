; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_rave-sp.c_devm_rave_sp_register_event_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_rave-sp.c_devm_rave_sp_register_event_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.notifier_block = type { i32 }
%struct.rave_sp = type { i32 }

@rave_sp_unregister_event_notifier = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_rave_sp_register_event_notifier(%struct.device* %0, %struct.notifier_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca %struct.rave_sp*, align 8
  %7 = alloca %struct.notifier_block**, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.notifier_block* %1, %struct.notifier_block** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.rave_sp* @dev_get_drvdata(i32 %11)
  store %struct.rave_sp* %12, %struct.rave_sp** %6, align 8
  %13 = load i32, i32* @rave_sp_unregister_event_notifier, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.notifier_block** @devres_alloc(i32 %13, i32 8, i32 %14)
  store %struct.notifier_block** %15, %struct.notifier_block*** %7, align 8
  %16 = load %struct.notifier_block**, %struct.notifier_block*** %7, align 8
  %17 = icmp ne %struct.notifier_block** %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %39

21:                                               ; preds = %2
  %22 = load %struct.rave_sp*, %struct.rave_sp** %6, align 8
  %23 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %22, i32 0, i32 0
  %24 = load %struct.notifier_block*, %struct.notifier_block** %5, align 8
  %25 = call i32 @blocking_notifier_chain_register(i32* %23, %struct.notifier_block* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %21
  %29 = load %struct.notifier_block*, %struct.notifier_block** %5, align 8
  %30 = load %struct.notifier_block**, %struct.notifier_block*** %7, align 8
  store %struct.notifier_block* %29, %struct.notifier_block** %30, align 8
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load %struct.notifier_block**, %struct.notifier_block*** %7, align 8
  %33 = call i32 @devres_add(%struct.device* %31, %struct.notifier_block** %32)
  br label %37

34:                                               ; preds = %21
  %35 = load %struct.notifier_block**, %struct.notifier_block*** %7, align 8
  %36 = call i32 @devres_free(%struct.notifier_block** %35)
  br label %37

37:                                               ; preds = %34, %28
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %18
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.rave_sp* @dev_get_drvdata(i32) #1

declare dso_local %struct.notifier_block** @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @blocking_notifier_chain_register(i32*, %struct.notifier_block*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.notifier_block**) #1

declare dso_local i32 @devres_free(%struct.notifier_block**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
