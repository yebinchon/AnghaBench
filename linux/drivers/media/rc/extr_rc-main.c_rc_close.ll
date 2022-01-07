; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_rc_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_rc_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, i32 (%struct.rc_dev*)*, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rc_close(%struct.rc_dev* %0) #0 {
  %2 = alloca %struct.rc_dev*, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %2, align 8
  %3 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %4 = icmp ne %struct.rc_dev* %3, null
  br i1 %4, label %5, label %34

5:                                                ; preds = %1
  %6 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %7 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %10 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %10, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %5
  %15 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %16 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %15, i32 0, i32 1
  %17 = load i32 (%struct.rc_dev*)*, i32 (%struct.rc_dev*)** %16, align 8
  %18 = icmp ne i32 (%struct.rc_dev*)* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %21 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %26 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %25, i32 0, i32 1
  %27 = load i32 (%struct.rc_dev*)*, i32 (%struct.rc_dev*)** %26, align 8
  %28 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %29 = call i32 %27(%struct.rc_dev* %28)
  br label %30

30:                                               ; preds = %24, %19, %14, %5
  %31 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %32 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  br label %34

34:                                               ; preds = %30, %1
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
