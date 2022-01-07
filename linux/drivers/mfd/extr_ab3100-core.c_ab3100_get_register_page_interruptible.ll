; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ab3100-core.c_ab3100_get_register_page_interruptible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ab3100-core.c_ab3100_get_register_page_interruptible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab3100 = type { i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"write error (send first register address): %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"write error (send first register address)\0A  %d bytes transferred (expected 1)\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"write error (read register page): %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"write error (read register page)\0A  %d bytes transferred (expected %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ab3100*, i32, i32*, i32)* @ab3100_get_register_page_interruptible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab3100_get_register_page_interruptible(%struct.ab3100* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ab3100*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ab3100* %0, %struct.ab3100** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %12 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 160
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  %16 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %17 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 161
  br i1 %19, label %20, label %23

20:                                               ; preds = %15, %4
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %91

23:                                               ; preds = %15
  %24 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %25 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock_interruptible(i32* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %5, align 4
  br label %91

31:                                               ; preds = %23
  %32 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %33 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @i2c_master_send(i32 %34, i32* %7, i32 1)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %40 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %41, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %86

44:                                               ; preds = %31
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %49 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %50, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %10, align 4
  br label %86

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %58 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @i2c_master_recv(i32 %59, i32* %60, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %56
  %66 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %67 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %68, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  br label %86

71:                                               ; preds = %56
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %77 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %78, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load i32, i32* @EIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %10, align 4
  br label %86

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %84
  store i32 0, i32* %10, align 4
  br label %86

86:                                               ; preds = %85, %75, %65, %47, %38
  %87 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %88 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %87, i32 0, i32 1
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %86, %29, %20
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @i2c_master_send(i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @i2c_master_recv(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
