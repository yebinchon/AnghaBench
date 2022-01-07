; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_rc_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_rc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { {}*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rc_open(%struct.rc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rc_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %6 = icmp ne %struct.rc_dev* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %54

10:                                               ; preds = %1
  %11 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %12 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %15 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %10
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %49

21:                                               ; preds = %10
  %22 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %23 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = icmp ne i32 %24, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %21
  %28 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %29 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i32 (%struct.rc_dev*)**
  %31 = load i32 (%struct.rc_dev*)*, i32 (%struct.rc_dev*)** %30, align 8
  %32 = icmp ne i32 (%struct.rc_dev*)* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %35 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %34, i32 0, i32 0
  %36 = bitcast {}** %35 to i32 (%struct.rc_dev*)**
  %37 = load i32 (%struct.rc_dev*)*, i32 (%struct.rc_dev*)** %36, align 8
  %38 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %39 = call i32 %37(%struct.rc_dev* %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %33, %27, %21
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %45 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %43, %40
  br label %49

49:                                               ; preds = %48, %18
  %50 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %51 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %49, %7
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
