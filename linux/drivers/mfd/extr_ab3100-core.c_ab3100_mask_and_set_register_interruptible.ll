; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ab3100-core.c_ab3100_mask_and_set_register_interruptible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ab3100-core.c_ab3100_mask_and_set_register_interruptible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab3100 = type { i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"write error (maskset send address): %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"write error (maskset send address)\0A  %d bytes transferred (expected 1)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"write error (maskset read register): %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"write error (maskset read register)\0A  %d bytes transferred (expected 1)\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"write error (write register): %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"write error (write register)\0A  %d bytes transferred (expected 2)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ab3100*, i32, i32, i32)* @ab3100_mask_and_set_register_interruptible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab3100_mask_and_set_register_interruptible(%struct.ab3100* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ab3100*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  store %struct.ab3100* %0, %struct.ab3100** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 0, i32* %14, align 4
  %15 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %16 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock_interruptible(i32* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %5, align 4
  br label %113

22:                                               ; preds = %4
  %23 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %24 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @i2c_master_send(i32 %25, i32* %7, i32 1)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %31 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %108

35:                                               ; preds = %22
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %40 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %11, align 4
  br label %108

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %49 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %52 = call i32 @i2c_master_recv(i32 %50, i32* %51, i32 1)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %57 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  br label %108

61:                                               ; preds = %47
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 1
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %66 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %11, align 4
  br label %108

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %8, align 4
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %74
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* %9, align 4
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %78
  store i32 %81, i32* %79, align 4
  %82 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %83 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %86 = call i32 @i2c_master_send(i32 %84, i32* %85, i32 2)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %73
  %90 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %91 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @dev_err(i32 %92, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  br label %108

95:                                               ; preds = %73
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 2
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %100 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @dev_err(i32 %101, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @EIO, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %11, align 4
  br label %108

106:                                              ; preds = %95
  br label %107

107:                                              ; preds = %106
  store i32 0, i32* %11, align 4
  br label %108

108:                                              ; preds = %107, %98, %89, %64, %55, %38, %29
  %109 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %110 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %109, i32 0, i32 0
  %111 = call i32 @mutex_unlock(i32* %110)
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %108, %20
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @i2c_master_send(i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @i2c_master_recv(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
