; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c__mmc_detect_card_removed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c__mmc_detect_card_removed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { {}* }
%struct.TYPE_3__ = type { {}* }

@.str = private unnamed_addr constant [29 x i8] c"%s: card removed too slowly\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: card remove detected\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_mmc_detect_card_removed(%struct.mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  %5 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %6 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %11 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @mmc_card_removed(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %1
  store i32 1, i32* %2, align 4
  br label %65

16:                                               ; preds = %9
  %17 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %18 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.mmc_host*)**
  %22 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %21, align 8
  %23 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %24 = call i32 %22(%struct.mmc_host* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %52, label %27

27:                                               ; preds = %16
  %28 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %29 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = bitcast {}** %31 to i32 (%struct.mmc_host*)**
  %33 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %32, align 8
  %34 = icmp ne i32 (%struct.mmc_host*)* %33, null
  br i1 %34, label %35, label %52

35:                                               ; preds = %27
  %36 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %37 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = bitcast {}** %39 to i32 (%struct.mmc_host*)**
  %41 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %40, align 8
  %42 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %43 = call i32 %41(%struct.mmc_host* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %35
  %46 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %47 = call i32 @msecs_to_jiffies(i32 200)
  %48 = call i32 @mmc_detect_change(%struct.mmc_host* %46, i32 %47)
  %49 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %50 = call i32 @mmc_hostname(%struct.mmc_host* %49)
  %51 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %45, %35, %27, %16
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %57 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @mmc_card_set_removed(i32 %58)
  %60 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %61 = call i32 @mmc_hostname(%struct.mmc_host* %60)
  %62 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %55, %52
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %15
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i64 @mmc_card_removed(i32) #1

declare dso_local i32 @mmc_detect_change(%struct.mmc_host*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @mmc_card_set_removed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
