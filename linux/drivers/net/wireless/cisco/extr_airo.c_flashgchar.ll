; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_flashgchar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_flashgchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { i32 }

@SWS1 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.airo_info*, i32, i32)* @flashgchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flashgchar(%struct.airo_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.airo_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.airo_info* %0, %struct.airo_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8 0, i8* %9, align 1
  br label %10

10:                                               ; preds = %64, %3
  %11 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %12 = load i32, i32* @SWS1, align 4
  %13 = call i32 @IN4500(%struct.airo_info* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = load i32, i32* %8, align 4
  %18 = and i32 32768, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 %21, 10
  store i32 %22, i32* %7, align 4
  %23 = call i32 @mdelay(i32 10)
  br label %64

24:                                               ; preds = %16, %10
  %25 = load i32, i32* %8, align 4
  %26 = and i32 255, %25
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %9, align 1
  %28 = load i8, i8* %9, align 1
  %29 = zext i8 %28 to i32
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  %34 = and i32 32768, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %38 = load i32, i32* @SWS1, align 4
  %39 = call i32 @OUT4500(%struct.airo_info* %37, i32 %38, i32 0)
  store i32 0, i32* %4, align 4
  br label %70

40:                                               ; preds = %32, %24
  %41 = load i8, i8* %9, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %42, 129
  br i1 %43, label %59, label %44

44:                                               ; preds = %40
  %45 = load i8, i8* %9, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 130
  br i1 %47, label %59, label %48

48:                                               ; preds = %44
  %49 = load i8, i8* %9, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 131
  br i1 %51, label %59, label %52

52:                                               ; preds = %48
  %53 = load i8, i8* %9, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp eq i32 %54, 26
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 65535, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %56, %52, %48, %44, %40
  br label %67

60:                                               ; preds = %56
  %61 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %62 = load i32, i32* @SWS1, align 4
  %63 = call i32 @OUT4500(%struct.airo_info* %61, i32 %62, i32 0)
  br label %64

64:                                               ; preds = %60, %20
  %65 = load i32, i32* %7, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %10, label %67

67:                                               ; preds = %64, %59
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %67, %36
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @IN4500(%struct.airo_info*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @OUT4500(%struct.airo_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
