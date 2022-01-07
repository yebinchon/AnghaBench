; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_alloc_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_alloc_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_cmd_work = type { %struct.be_adapter*, i32 }
%struct.be_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.work_struct = type opaque
%struct.work_struct.0 = type opaque

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"be_work memory allocation failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.be_cmd_work* (%struct.be_adapter*, void (%struct.work_struct*)*)* @be_alloc_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.be_cmd_work* @be_alloc_work(%struct.be_adapter* %0, void (%struct.work_struct*)* %1) #0 {
  %3 = alloca %struct.be_cmd_work*, align 8
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca void (%struct.work_struct*)*, align 8
  %6 = alloca %struct.be_cmd_work*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store void (%struct.work_struct*)* %1, void (%struct.work_struct*)** %5, align 8
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.be_cmd_work* @kzalloc(i32 16, i32 %7)
  store %struct.be_cmd_work* %8, %struct.be_cmd_work** %6, align 8
  %9 = load %struct.be_cmd_work*, %struct.be_cmd_work** %6, align 8
  %10 = icmp ne %struct.be_cmd_work* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store %struct.be_cmd_work* null, %struct.be_cmd_work** %3, align 8
  br label %27

17:                                               ; preds = %2
  %18 = load %struct.be_cmd_work*, %struct.be_cmd_work** %6, align 8
  %19 = getelementptr inbounds %struct.be_cmd_work, %struct.be_cmd_work* %18, i32 0, i32 1
  %20 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %5, align 8
  %21 = bitcast void (%struct.work_struct*)* %20 to void (%struct.work_struct.0*)*
  %22 = call i32 @INIT_WORK(i32* %19, void (%struct.work_struct.0*)* %21)
  %23 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %24 = load %struct.be_cmd_work*, %struct.be_cmd_work** %6, align 8
  %25 = getelementptr inbounds %struct.be_cmd_work, %struct.be_cmd_work* %24, i32 0, i32 0
  store %struct.be_adapter* %23, %struct.be_adapter** %25, align 8
  %26 = load %struct.be_cmd_work*, %struct.be_cmd_work** %6, align 8
  store %struct.be_cmd_work* %26, %struct.be_cmd_work** %3, align 8
  br label %27

27:                                               ; preds = %17, %11
  %28 = load %struct.be_cmd_work*, %struct.be_cmd_work** %3, align 8
  ret %struct.be_cmd_work* %28
}

declare dso_local %struct.be_cmd_work* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @INIT_WORK(i32*, void (%struct.work_struct.0*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
