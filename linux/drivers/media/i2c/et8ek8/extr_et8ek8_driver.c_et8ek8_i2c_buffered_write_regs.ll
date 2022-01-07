; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_i2c_buffered_write_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_i2c_buffered_write_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.et8ek8_reg = type { i32, i32, i32 }
%struct.i2c_msg = type { i32 }

@ET8EK8_MAX_MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.et8ek8_reg*, i32)* @et8ek8_i2c_buffered_write_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et8ek8_i2c_buffered_write_regs(%struct.i2c_client* %0, %struct.et8ek8_reg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.et8ek8_reg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store %struct.et8ek8_reg* %1, %struct.et8ek8_reg** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* @ET8EK8_MAX_MSG, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca %struct.i2c_msg, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load i32, i32* @ET8EK8_MAX_MSG, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca [6 x i8], i64 %22, align 16
  store i64 %22, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %68, %57, %3
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %72

28:                                               ; preds = %24
  %29 = load %struct.et8ek8_reg*, %struct.et8ek8_reg** %6, align 8
  %30 = getelementptr inbounds %struct.et8ek8_reg, %struct.et8ek8_reg* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  %32 = load %struct.et8ek8_reg*, %struct.et8ek8_reg** %6, align 8
  %33 = getelementptr inbounds %struct.et8ek8_reg, %struct.et8ek8_reg* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  %35 = load %struct.et8ek8_reg*, %struct.et8ek8_reg** %6, align 8
  %36 = getelementptr inbounds %struct.et8ek8_reg, %struct.et8ek8_reg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %14, align 4
  %38 = load %struct.et8ek8_reg*, %struct.et8ek8_reg** %6, align 8
  %39 = getelementptr inbounds %struct.et8ek8_reg, %struct.et8ek8_reg* %38, i32 1
  store %struct.et8ek8_reg* %39, %struct.et8ek8_reg** %6, align 8
  %40 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i64 %45
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [6 x i8], [6 x i8]* %23, i64 %48
  %50 = getelementptr inbounds [6 x i8], [6 x i8]* %49, i64 0, i64 0
  %51 = call i32 @et8ek8_i2c_create_msg(%struct.i2c_client* %40, i32 %41, i32 %42, i32 %43, %struct.i2c_msg* %46, i8* %50)
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @ET8EK8_MAX_MSG, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %28
  br label %24

58:                                               ; preds = %28
  %59 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @i2c_transfer(i32 %61, %struct.i2c_msg* %20, i32 %62)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i32, i32* %15, align 4
  store i32 %67, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %85

68:                                               ; preds = %58
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %7, align 4
  %71 = sub nsw i32 %70, %69
  store i32 %71, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %24

72:                                               ; preds = %24
  %73 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @i2c_transfer(i32 %75, %struct.i2c_msg* %20, i32 %76)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = load i32, i32* %15, align 4
  br label %83

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i32 [ %81, %80 ], [ 0, %82 ]
  store i32 %84, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %85

85:                                               ; preds = %83, %66
  %86 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @et8ek8_i2c_create_msg(%struct.i2c_client*, i32, i32, i32, %struct.i2c_msg*, i8*) #2

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
