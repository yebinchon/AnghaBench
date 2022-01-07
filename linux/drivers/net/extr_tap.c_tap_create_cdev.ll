; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_create_cdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_create_cdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.module* }
%struct.module = type { i32 }

@TAP_NUM_DEVS = common dso_local global i32 0, align 4
@tap_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tap_create_cdev(%struct.cdev* %0, i32* %1, i8* %2, %struct.module* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.module*, align 8
  %10 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.module* %3, %struct.module** %9, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* @TAP_NUM_DEVS, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @alloc_chrdev_region(i32* %11, i32 0, i32 %12, i8* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %49

18:                                               ; preds = %4
  %19 = load %struct.cdev*, %struct.cdev** %6, align 8
  %20 = call i32 @cdev_init(%struct.cdev* %19, i32* @tap_fops)
  %21 = load %struct.module*, %struct.module** %9, align 8
  %22 = load %struct.cdev*, %struct.cdev** %6, align 8
  %23 = getelementptr inbounds %struct.cdev, %struct.cdev* %22, i32 0, i32 0
  store %struct.module* %21, %struct.module** %23, align 8
  %24 = load %struct.cdev*, %struct.cdev** %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TAP_NUM_DEVS, align 4
  %28 = call i32 @cdev_add(%struct.cdev* %24, i32 %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  br label %44

32:                                               ; preds = %18
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @tap_list_add(i32 %34, i8* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %41

40:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %51

41:                                               ; preds = %39
  %42 = load %struct.cdev*, %struct.cdev** %6, align 8
  %43 = call i32 @cdev_del(%struct.cdev* %42)
  br label %44

44:                                               ; preds = %41, %31
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @TAP_NUM_DEVS, align 4
  %48 = call i32 @unregister_chrdev_region(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %17
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %40
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @alloc_chrdev_region(i32*, i32, i32, i8*) #1

declare dso_local i32 @cdev_init(%struct.cdev*, i32*) #1

declare dso_local i32 @cdev_add(%struct.cdev*, i32, i32) #1

declare dso_local i32 @tap_list_add(i32, i8*) #1

declare dso_local i32 @cdev_del(%struct.cdev*) #1

declare dso_local i32 @unregister_chrdev_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
