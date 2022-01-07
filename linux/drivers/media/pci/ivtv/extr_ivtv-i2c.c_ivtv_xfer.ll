; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-i2c.c_ivtv_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-i2c.c_ivtv_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32 }
%struct.v4l2_device = type { i32 }
%struct.ivtv = type { i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @ivtv_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_device*, align 8
  %8 = alloca %struct.ivtv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %13 = call %struct.v4l2_device* @i2c_get_adapdata(%struct.i2c_adapter* %12)
  store %struct.v4l2_device* %13, %struct.v4l2_device** %7, align 8
  %14 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %15 = call %struct.ivtv* @to_ivtv(%struct.v4l2_device* %14)
  store %struct.ivtv* %15, %struct.ivtv** %8, align 8
  %16 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %17 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %100, %3
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i1 [ false, %19 ], [ %25, %22 ]
  br i1 %27, label %28, label %103

28:                                               ; preds = %26
  %29 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i64 %31
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @I2C_M_RD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %28
  %39 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %40 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %40, i64 %42
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %46, i64 %48
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i64 %54
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ivtv_read(%struct.ivtv* %39, i32 %45, i32 %51, i32 %57)
  store i32 %58, i32* %9, align 4
  br label %99

59:                                               ; preds = %28
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %65, i64 %68
  %70 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @I2C_M_RD, align 4
  %73 = icmp eq i32 %71, %72
  br label %74

74:                                               ; preds = %64, %59
  %75 = phi i1 [ false, %59 ], [ %73, %64 ]
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %11, align 4
  %78 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %79 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %79, i64 %81
  %83 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %85, i64 %87
  %89 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %91, i64 %93
  %95 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @ivtv_write(%struct.ivtv* %78, i32 %84, i32 %90, i32 %96, i32 %97)
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %74, %38
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %19

103:                                              ; preds = %26
  %104 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %105 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %104, i32 0, i32 0
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* %9, align 4
  br label %113

111:                                              ; preds = %103
  %112 = load i32, i32* %6, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i32 [ %110, %109 ], [ %112, %111 ]
  ret i32 %114
}

declare dso_local %struct.v4l2_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local %struct.ivtv* @to_ivtv(%struct.v4l2_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ivtv_read(%struct.ivtv*, i32, i32, i32) #1

declare dso_local i32 @ivtv_write(%struct.ivtv*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
