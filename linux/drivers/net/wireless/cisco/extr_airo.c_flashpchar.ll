; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_flashpchar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_flashpchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SWS0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"flash putchar busywait timeout!\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@SWS1 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.airo_info*, i32, i32)* @flashpchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flashpchar(%struct.airo_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.airo_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.airo_info* %0, %struct.airo_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = or i32 %10, 32768
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 200, i32* %7, align 4
  br label %15

15:                                               ; preds = %14, %3
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %28, %15
  %18 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %19 = load i32, i32* @SWS0, align 4
  %20 = call i32 @IN4500(%struct.airo_info* %18, i32 %19)
  %21 = and i32 %20, 32768
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  %25 = icmp sgt i32 %24, 0
  br label %26

26:                                               ; preds = %23, %17
  %27 = phi i1 [ false, %17 ], [ %25, %23 ]
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  %29 = call i32 @udelay(i32 50)
  %30 = load i32, i32* %9, align 4
  %31 = sub nsw i32 %30, 50
  store i32 %31, i32* %9, align 4
  br label %17

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %37 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @airo_print_info(i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %78

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %63, %44
  %46 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %47 = load i32, i32* @SWS0, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @OUT4500(%struct.airo_info* %46, i32 %47, i32 %48)
  %50 = call i32 @udelay(i32 50)
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %51, 50
  store i32 %52, i32* %7, align 4
  %53 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %54 = load i32, i32* @SWS1, align 4
  %55 = call i32 @IN4500(%struct.airo_info* %53, i32 %54)
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %45
  %57 = load i32, i32* %7, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %60, %61
  br label %63

63:                                               ; preds = %59, %56
  %64 = phi i1 [ false, %56 ], [ %62, %59 ]
  br i1 %64, label %45, label %65

65:                                               ; preds = %63
  %66 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %67 = load i32, i32* @SWS1, align 4
  %68 = call i32 @OUT4500(%struct.airo_info* %66, i32 %67, i32 0)
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %76

73:                                               ; preds = %65
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  br label %76

76:                                               ; preds = %73, %72
  %77 = phi i32 [ 0, %72 ], [ %75, %73 ]
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %76, %35
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @IN4500(%struct.airo_info*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @airo_print_info(i32, i8*) #1

declare dso_local i32 @OUT4500(%struct.airo_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
