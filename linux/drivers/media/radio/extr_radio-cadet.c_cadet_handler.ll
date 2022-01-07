; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-cadet.c_cadet_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-cadet.c_cadet_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cadet = type { i32*, i64, i32, %struct.TYPE_2__, i32, i32, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.timer_list = type { i32 }

@readtimer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cadet: RDS fifo overflow\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@dev = common dso_local global %struct.cadet* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @cadet_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cadet_handler(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.cadet*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.cadet*, %struct.cadet** %3, align 8
  %5 = ptrtoint %struct.cadet* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @readtimer, align 4
  %8 = call %struct.cadet* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.cadet* %8, %struct.cadet** %3, align 8
  %9 = load %struct.cadet*, %struct.cadet** %3, align 8
  %10 = getelementptr inbounds %struct.cadet, %struct.cadet* %9, i32 0, i32 5
  %11 = call i64 @mutex_trylock(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %71

13:                                               ; preds = %1
  %14 = load %struct.cadet*, %struct.cadet** %3, align 8
  %15 = getelementptr inbounds %struct.cadet, %struct.cadet* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @outb(i32 3, i64 %16)
  %18 = load %struct.cadet*, %struct.cadet** %3, align 8
  %19 = getelementptr inbounds %struct.cadet, %struct.cadet* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  %22 = call i32 @inb(i64 %21)
  %23 = and i32 %22, 32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %13
  %28 = load %struct.cadet*, %struct.cadet** %3, align 8
  %29 = getelementptr inbounds %struct.cadet, %struct.cadet* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @outb(i32 128, i64 %30)
  br label %32

32:                                               ; preds = %66, %27
  %33 = load %struct.cadet*, %struct.cadet** %3, align 8
  %34 = getelementptr inbounds %struct.cadet, %struct.cadet* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @inb(i64 %35)
  %37 = and i32 %36, 128
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %32
  %40 = load %struct.cadet*, %struct.cadet** %3, align 8
  %41 = getelementptr inbounds %struct.cadet, %struct.cadet* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  %44 = call i32 @inb(i64 %43)
  %45 = load %struct.cadet*, %struct.cadet** %3, align 8
  %46 = getelementptr inbounds %struct.cadet, %struct.cadet* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.cadet*, %struct.cadet** %3, align 8
  %49 = getelementptr inbounds %struct.cadet, %struct.cadet* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  store i32 %44, i32* %51, align 4
  %52 = load %struct.cadet*, %struct.cadet** %3, align 8
  %53 = getelementptr inbounds %struct.cadet, %struct.cadet* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, 1
  %56 = load %struct.cadet*, %struct.cadet** %3, align 8
  %57 = getelementptr inbounds %struct.cadet, %struct.cadet* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = icmp ne i64 %55, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %39
  %62 = load %struct.cadet*, %struct.cadet** %3, align 8
  %63 = getelementptr inbounds %struct.cadet, %struct.cadet* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %63, align 8
  br label %66

66:                                               ; preds = %61, %39
  br label %32

67:                                               ; preds = %32
  %68 = load %struct.cadet*, %struct.cadet** %3, align 8
  %69 = getelementptr inbounds %struct.cadet, %struct.cadet* %68, i32 0, i32 5
  %70 = call i32 @mutex_unlock(i32* %69)
  br label %71

71:                                               ; preds = %67, %1
  %72 = load %struct.cadet*, %struct.cadet** %3, align 8
  %73 = call i64 @cadet_has_rds_data(%struct.cadet* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load %struct.cadet*, %struct.cadet** %3, align 8
  %77 = getelementptr inbounds %struct.cadet, %struct.cadet* %76, i32 0, i32 4
  %78 = call i32 @wake_up_interruptible(i32* %77)
  br label %79

79:                                               ; preds = %75, %71
  %80 = load i64, i64* @jiffies, align 8
  %81 = call i64 @msecs_to_jiffies(i32 50)
  %82 = add nsw i64 %80, %81
  %83 = load %struct.cadet*, %struct.cadet** %3, align 8
  %84 = getelementptr inbounds %struct.cadet, %struct.cadet* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i64 %82, i64* %85, align 8
  %86 = load %struct.cadet*, %struct.cadet** %3, align 8
  %87 = getelementptr inbounds %struct.cadet, %struct.cadet* %86, i32 0, i32 3
  %88 = call i32 @add_timer(%struct.TYPE_2__* %87)
  ret void
}

declare dso_local %struct.cadet* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @mutex_trylock(i32*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @cadet_has_rds_data(%struct.cadet*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
