; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_core.c_st_core_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_core.c_st_core_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_data_s = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"error during deinit of ST LL %ld\00", align 1
@N_TI_WL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"unable to un-register ldisc %ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @st_core_exit(%struct.st_data_s* %0) #0 {
  %2 = alloca %struct.st_data_s*, align 8
  %3 = alloca i64, align 8
  store %struct.st_data_s* %0, %struct.st_data_s** %2, align 8
  %4 = load %struct.st_data_s*, %struct.st_data_s** %2, align 8
  %5 = call i64 @st_ll_deinit(%struct.st_data_s* %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.st_data_s*, %struct.st_data_s** %2, align 8
  %13 = icmp ne %struct.st_data_s* %12, null
  br i1 %13, label %14, label %39

14:                                               ; preds = %11
  %15 = load %struct.st_data_s*, %struct.st_data_s** %2, align 8
  %16 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %15, i32 0, i32 3
  %17 = call i32 @skb_queue_purge(i32* %16)
  %18 = load %struct.st_data_s*, %struct.st_data_s** %2, align 8
  %19 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %18, i32 0, i32 2
  %20 = call i32 @skb_queue_purge(i32* %19)
  %21 = load %struct.st_data_s*, %struct.st_data_s** %2, align 8
  %22 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @kfree_skb(i32 %23)
  %25 = load %struct.st_data_s*, %struct.st_data_s** %2, align 8
  %26 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @kfree_skb(i32 %27)
  %29 = load i32, i32* @N_TI_WL, align 4
  %30 = call i64 @tty_unregister_ldisc(i32 %29)
  store i64 %30, i64* %3, align 8
  %31 = load i64, i64* %3, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %14
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  br label %36

36:                                               ; preds = %33, %14
  %37 = load %struct.st_data_s*, %struct.st_data_s** %2, align 8
  %38 = call i32 @kfree(%struct.st_data_s* %37)
  br label %39

39:                                               ; preds = %36, %11
  ret void
}

declare dso_local i64 @st_ll_deinit(%struct.st_data_s*) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @kfree_skb(i32) #1

declare dso_local i64 @tty_unregister_ldisc(i32) #1

declare dso_local i32 @kfree(%struct.st_data_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
