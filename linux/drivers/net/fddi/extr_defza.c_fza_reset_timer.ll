; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defza.c_fza_reset_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defza.c_fza_reset_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fza_private = type { i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.timer_list = type { i32 }

@reset_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: RESET timed out!\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: trying harder...\0A\00", align 1
@FZA_RESET_INIT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@FZA_RESET_CLR = common dso_local global i32 0, align 4
@fp = common dso_local global %struct.fza_private* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @fza_reset_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fza_reset_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.fza_private*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %5 = ptrtoint %struct.fza_private* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @reset_timer, align 4
  %8 = call %struct.fza_private* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.fza_private* %8, %struct.fza_private** %3, align 8
  %9 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %10 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %42, label %13

13:                                               ; preds = %1
  %14 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %15 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %19 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @FZA_RESET_INIT, align 4
  %23 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %24 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = call i32 @writew_o(i32 %22, i32* %26)
  %28 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %29 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = call i32 @readw_o(i32* %31)
  %33 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %34 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load i8*, i8** @jiffies, align 8
  %36 = load i32, i32* @HZ, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr i8, i8* %35, i64 %37
  %39 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %40 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i8* %38, i8** %41, align 8
  br label %72

42:                                               ; preds = %1
  %43 = load i32, i32* @FZA_RESET_CLR, align 4
  %44 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %45 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = call i32 @writew_u(i32 %43, i32* %47)
  %49 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %50 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %53 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %52, i32 0, i32 2
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = call i32 @writew_o(i32 %51, i32* %55)
  %57 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %58 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %57, i32 0, i32 2
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = call i32 @readw_o(i32* %60)
  %62 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %63 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load i8*, i8** @jiffies, align 8
  %65 = load i32, i32* @HZ, align 4
  %66 = mul nsw i32 45, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr i8, i8* %64, i64 %67
  %69 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %70 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i8* %68, i8** %71, align 8
  br label %72

72:                                               ; preds = %42, %13
  %73 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %74 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %73, i32 0, i32 1
  %75 = call i32 @add_timer(%struct.TYPE_4__* %74)
  ret void
}

declare dso_local %struct.fza_private* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @writew_o(i32, i32*) #1

declare dso_local i32 @readw_o(i32*) #1

declare dso_local i32 @writew_u(i32, i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
