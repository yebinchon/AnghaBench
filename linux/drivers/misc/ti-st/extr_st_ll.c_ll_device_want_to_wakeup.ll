; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_ll.c_ll_device_want_to_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_ll.c_ll_device_want_to_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_data_s = type { i32, %struct.kim_data_s* }
%struct.kim_data_s = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ti_st_plat_data* }
%struct.ti_st_plat_data = type { i32 (i32*)* }

@LL_WAKE_UP_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"duplicate wake_ind while waiting for Wake ack\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"duplicate wake_ind already AWAKE\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"duplicate wake_ind\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_data_s*)* @ll_device_want_to_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ll_device_want_to_wakeup(%struct.st_data_s* %0) #0 {
  %2 = alloca %struct.st_data_s*, align 8
  %3 = alloca %struct.kim_data_s*, align 8
  %4 = alloca %struct.ti_st_plat_data*, align 8
  store %struct.st_data_s* %0, %struct.st_data_s** %2, align 8
  %5 = load %struct.st_data_s*, %struct.st_data_s** %2, align 8
  %6 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %18 [
    i32 131, label %8
    i32 130, label %12
    i32 129, label %14
    i32 128, label %16
  ]

8:                                                ; preds = %1
  %9 = load %struct.st_data_s*, %struct.st_data_s** %2, align 8
  %10 = load i32, i32* @LL_WAKE_UP_ACK, align 4
  %11 = call i32 @send_ll_cmd(%struct.st_data_s* %9, i32 %10)
  br label %18

12:                                               ; preds = %1
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %18

14:                                               ; preds = %1
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %18

16:                                               ; preds = %1
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %18

18:                                               ; preds = %1, %16, %14, %12, %8
  %19 = load %struct.st_data_s*, %struct.st_data_s** %2, align 8
  %20 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %19, i32 0, i32 0
  store i32 129, i32* %20, align 8
  %21 = load %struct.st_data_s*, %struct.st_data_s** %2, align 8
  %22 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %21, i32 0, i32 1
  %23 = load %struct.kim_data_s*, %struct.kim_data_s** %22, align 8
  store %struct.kim_data_s* %23, %struct.kim_data_s** %3, align 8
  %24 = load %struct.kim_data_s*, %struct.kim_data_s** %3, align 8
  %25 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.ti_st_plat_data*, %struct.ti_st_plat_data** %28, align 8
  store %struct.ti_st_plat_data* %29, %struct.ti_st_plat_data** %4, align 8
  %30 = load %struct.ti_st_plat_data*, %struct.ti_st_plat_data** %4, align 8
  %31 = getelementptr inbounds %struct.ti_st_plat_data, %struct.ti_st_plat_data* %30, i32 0, i32 0
  %32 = load i32 (i32*)*, i32 (i32*)** %31, align 8
  %33 = icmp ne i32 (i32*)* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %18
  %35 = load %struct.ti_st_plat_data*, %struct.ti_st_plat_data** %4, align 8
  %36 = getelementptr inbounds %struct.ti_st_plat_data, %struct.ti_st_plat_data* %35, i32 0, i32 0
  %37 = load i32 (i32*)*, i32 (i32*)** %36, align 8
  %38 = call i32 %37(i32* null)
  br label %39

39:                                               ; preds = %34, %18
  ret void
}

declare dso_local i32 @send_ll_cmd(%struct.st_data_s*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
