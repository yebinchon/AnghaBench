; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda8290.c_tda829x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda8290.c_tda829x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.tuner_i2c_props = type { i32, %struct.i2c_adapter* }

@tda829x_probe.soft_reset = internal global [2 x i8] zeroinitializer, align 1
@tda829x_probe.easy_mode_b = internal global [2 x i8] c"\01\02", align 1
@tda829x_probe.easy_mode_g = internal global [2 x i8] c"\01\04", align 1
@tda829x_probe.restore_9886 = internal global [3 x i8] c"\00\D60", align 1
@tda829x_probe.addr_dto_lsb = internal global i8 7, align 1
@ENODEV = common dso_local global i32 0, align 4
@PROBE_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tda829x_probe(%struct.i2c_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tuner_i2c_props, align 8
  %7 = alloca i8, align 1
  %8 = alloca [8 x i8], align 1
  %9 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %6, i32 0, i32 0
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %6, i32 0, i32 1
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_adapter* %13, %struct.i2c_adapter** %12, align 8
  %14 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %15 = call i32 @tuner_i2c_xfer_send_recv(%struct.tuner_i2c_props* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda829x_probe.soft_reset, i64 0, i64 0), i32 1, i8* %14, i32 8)
  store i32 1, i32* %9, align 4
  br label %16

16:                                               ; preds = %31, %2
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %34

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %16

34:                                               ; preds = %29, %16
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 8
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %67

40:                                               ; preds = %34
  %41 = call i64 @tda8290_probe(%struct.tuner_i2c_props* %6)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = call i64 @tda8295_probe(%struct.tuner_i2c_props* %6)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %40
  store i32 0, i32* %3, align 4
  br label %67

47:                                               ; preds = %43
  %48 = call i32 @tuner_i2c_xfer_send(%struct.tuner_i2c_props* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda829x_probe.easy_mode_b, i64 0, i64 0), i32 2)
  %49 = call i32 @tuner_i2c_xfer_send(%struct.tuner_i2c_props* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda829x_probe.soft_reset, i64 0, i64 0), i32 2)
  %50 = call i32 @tuner_i2c_xfer_send_recv(%struct.tuner_i2c_props* %6, i8* @tda829x_probe.addr_dto_lsb, i32 1, i8* %7, i32 1)
  %51 = load i8, i8* %7, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %47
  %55 = call i32 @tuner_i2c_xfer_send(%struct.tuner_i2c_props* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda829x_probe.easy_mode_g, i64 0, i64 0), i32 2)
  %56 = call i32 @tuner_i2c_xfer_send(%struct.tuner_i2c_props* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda829x_probe.soft_reset, i64 0, i64 0), i32 2)
  %57 = call i32 @tuner_i2c_xfer_send_recv(%struct.tuner_i2c_props* %6, i8* @tda829x_probe.addr_dto_lsb, i32 1, i8* %7, i32 1)
  %58 = load i8, i8* %7, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 %59, 123
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %67

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %47
  %64 = call i32 @tuner_i2c_xfer_send(%struct.tuner_i2c_props* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @tda829x_probe.restore_9886, i64 0, i64 0), i32 3)
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %61, %46, %37
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @tuner_i2c_xfer_send_recv(%struct.tuner_i2c_props*, i8*, i32, i8*, i32) #1

declare dso_local i64 @tda8290_probe(%struct.tuner_i2c_props*) #1

declare dso_local i64 @tda8295_probe(%struct.tuner_i2c_props*) #1

declare dso_local i32 @tuner_i2c_xfer_send(%struct.tuner_i2c_props*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
