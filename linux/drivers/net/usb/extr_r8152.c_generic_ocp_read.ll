; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_generic_ocp_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_generic_ocp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32 }

@RTL8152_UNPLUG = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r8152*, i32, i32, i8*, i32)* @generic_ocp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_ocp_read(%struct.r8152* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.r8152*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 64, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @RTL8152_UNPLUG, align 4
  %15 = load %struct.r8152*, %struct.r8152** %7, align 8
  %16 = getelementptr inbounds %struct.r8152, %struct.r8152* %15, i32 0, i32 0
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %105

22:                                               ; preds = %5
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, 3
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, 3
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33, %29, %26, %22
  %37 = load i32, i32* @EPERM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %105

39:                                               ; preds = %33
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %40, %41
  %43 = icmp sgt i32 %42, 65535
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EPERM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %105

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %94, %47
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %95

51:                                               ; preds = %48
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %51
  %56 = load %struct.r8152*, %struct.r8152** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @get_registers(%struct.r8152* %56, i32 %57, i32 %58, i32 %59, i8* %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %95

65:                                               ; preds = %55
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i8*, i8** %10, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr i8, i8* %70, i64 %71
  store i8* %72, i8** %10, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %9, align 4
  %75 = sub nsw i32 %74, %73
  store i32 %75, i32* %9, align 4
  br label %94

76:                                               ; preds = %51
  %77 = load %struct.r8152*, %struct.r8152** %7, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i8*, i8** %10, align 8
  %82 = call i32 @get_registers(%struct.r8152* %77, i32 %78, i32 %79, i32 %80, i8* %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %95

86:                                               ; preds = %76
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i8*, i8** %10, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr i8, i8* %91, i64 %92
  store i8* %93, i8** %10, align 8
  store i32 0, i32* %9, align 4
  br label %95

94:                                               ; preds = %65
  br label %48

95:                                               ; preds = %86, %85, %64, %48
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @ENODEV, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.r8152*, %struct.r8152** %7, align 8
  %102 = call i32 @rtl_set_unplug(%struct.r8152* %101)
  br label %103

103:                                              ; preds = %100, %95
  %104 = load i32, i32* %13, align 4
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %103, %44, %36, %19
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @get_registers(%struct.r8152*, i32, i32, i32, i8*) #1

declare dso_local i32 @rtl_set_unplug(%struct.r8152*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
