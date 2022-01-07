; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_ps_confirm_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_ps_confirm_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64, i32, i64*, i32, i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"dnld_sent was set\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"cur_cmd was set\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"pending events or command responses\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"sending lbs_ps_confirm_sleep\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"sleep confirm has been delayed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lbs_ps_confirm_sleep(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  store i64 0, i64* %3, align 8
  store i32 1, i32* %4, align 4
  %5 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %6 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %5, i32 0, i32 1
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %10 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %14 = call i32 @lbs_deb_host(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %1
  %16 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %17 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  %21 = call i32 @lbs_deb_host(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %15
  %23 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %24 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %23, i32 0, i32 3
  %25 = call i64 @kfifo_len(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %29 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %32 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i64, i64* %30, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27, %22
  store i32 0, i32* %4, align 4
  %38 = call i32 @lbs_deb_host(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %27
  %40 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %41 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %40, i32 0, i32 1
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = call i32 @lbs_deb_host(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %48 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %49 = call i32 @lbs_send_confirmsleep(%struct.lbs_private* %48)
  br label %52

50:                                               ; preds = %39
  %51 = call i32 @lbs_deb_host(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %46
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @lbs_deb_host(i8*) #1

declare dso_local i64 @kfifo_len(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lbs_send_confirmsleep(%struct.lbs_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
