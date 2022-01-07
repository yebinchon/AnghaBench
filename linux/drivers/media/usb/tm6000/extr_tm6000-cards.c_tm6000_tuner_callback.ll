; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-cards.c_tm6000_tuner_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-cards.c_tm6000_tuner_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm6000_core = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@TUNER_XC2028 = common dso_local global i64 0, align 8
@REQ_04_EN_DISABLE_MCU_INT = common dso_local global i32 0, align 4
@REQ_03_SET_GET_MCU_PIN = common dso_local global i32 0, align 4
@REQ_50_SET_START = common dso_local global i32 0, align 4
@REQ_51_SET_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tm6000_tuner_callback(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tm6000_core*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.tm6000_core*
  store %struct.tm6000_core* %13, %struct.tm6000_core** %11, align 8
  %14 = load %struct.tm6000_core*, %struct.tm6000_core** %11, align 8
  %15 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TUNER_XC2028, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %134

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %132 [
    i32 129, label %22
    i32 128, label %32
    i32 130, label %125
  ]

22:                                               ; preds = %20
  %23 = load %struct.tm6000_core*, %struct.tm6000_core** %11, align 8
  %24 = call i32 @tm6000_ir_wait(%struct.tm6000_core* %23, i32 0)
  %25 = load %struct.tm6000_core*, %struct.tm6000_core** %11, align 8
  %26 = load i32, i32* @REQ_04_EN_DISABLE_MCU_INT, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @tm6000_set_reg(%struct.tm6000_core* %25, i32 %26, i32 2, i32 %27)
  %29 = call i32 @msleep(i32 10)
  %30 = load %struct.tm6000_core*, %struct.tm6000_core** %11, align 8
  %31 = call i32 @tm6000_i2c_reset(%struct.tm6000_core* %30, i32 10)
  store i32 %31, i32* %10, align 4
  br label %132

32:                                               ; preds = %20
  %33 = load i32, i32* %9, align 4
  switch i32 %33, label %124 [
    i32 0, label %34
    i32 1, label %116
    i32 2, label %121
  ]

34:                                               ; preds = %32
  %35 = load %struct.tm6000_core*, %struct.tm6000_core** %11, align 8
  %36 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %96 [
    i32 134, label %38
    i32 133, label %71
    i32 132, label %71
    i32 131, label %71
  ]

38:                                               ; preds = %34
  %39 = load %struct.tm6000_core*, %struct.tm6000_core** %11, align 8
  %40 = load i32, i32* @REQ_03_SET_GET_MCU_PIN, align 4
  %41 = load %struct.tm6000_core*, %struct.tm6000_core** %11, align 8
  %42 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @tm6000_set_reg(%struct.tm6000_core* %39, i32 %40, i32 %44, i32 1)
  %46 = load %struct.tm6000_core*, %struct.tm6000_core** %11, align 8
  %47 = load i32, i32* @REQ_03_SET_GET_MCU_PIN, align 4
  %48 = call i32 @tm6000_set_reg(%struct.tm6000_core* %46, i32 %47, i32 768, i32 1)
  %49 = call i32 @msleep(i32 10)
  %50 = load %struct.tm6000_core*, %struct.tm6000_core** %11, align 8
  %51 = load i32, i32* @REQ_03_SET_GET_MCU_PIN, align 4
  %52 = load %struct.tm6000_core*, %struct.tm6000_core** %11, align 8
  %53 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @tm6000_set_reg(%struct.tm6000_core* %50, i32 %51, i32 %55, i32 0)
  %57 = load %struct.tm6000_core*, %struct.tm6000_core** %11, align 8
  %58 = load i32, i32* @REQ_03_SET_GET_MCU_PIN, align 4
  %59 = call i32 @tm6000_set_reg(%struct.tm6000_core* %57, i32 %58, i32 768, i32 0)
  %60 = call i32 @msleep(i32 10)
  %61 = load %struct.tm6000_core*, %struct.tm6000_core** %11, align 8
  %62 = load i32, i32* @REQ_03_SET_GET_MCU_PIN, align 4
  %63 = load %struct.tm6000_core*, %struct.tm6000_core** %11, align 8
  %64 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @tm6000_set_reg(%struct.tm6000_core* %61, i32 %62, i32 %66, i32 1)
  %68 = load %struct.tm6000_core*, %struct.tm6000_core** %11, align 8
  %69 = load i32, i32* @REQ_03_SET_GET_MCU_PIN, align 4
  %70 = call i32 @tm6000_set_reg(%struct.tm6000_core* %68, i32 %69, i32 768, i32 1)
  br label %113

71:                                               ; preds = %34, %34, %34
  %72 = load %struct.tm6000_core*, %struct.tm6000_core** %11, align 8
  %73 = load i32, i32* @REQ_03_SET_GET_MCU_PIN, align 4
  %74 = load %struct.tm6000_core*, %struct.tm6000_core** %11, align 8
  %75 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @tm6000_set_reg(%struct.tm6000_core* %72, i32 %73, i32 %77, i32 1)
  %79 = call i32 @msleep(i32 60)
  %80 = load %struct.tm6000_core*, %struct.tm6000_core** %11, align 8
  %81 = load i32, i32* @REQ_03_SET_GET_MCU_PIN, align 4
  %82 = load %struct.tm6000_core*, %struct.tm6000_core** %11, align 8
  %83 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @tm6000_set_reg(%struct.tm6000_core* %80, i32 %81, i32 %85, i32 0)
  %87 = call i32 @msleep(i32 75)
  %88 = load %struct.tm6000_core*, %struct.tm6000_core** %11, align 8
  %89 = load i32, i32* @REQ_03_SET_GET_MCU_PIN, align 4
  %90 = load %struct.tm6000_core*, %struct.tm6000_core** %11, align 8
  %91 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @tm6000_set_reg(%struct.tm6000_core* %88, i32 %89, i32 %93, i32 1)
  %95 = call i32 @msleep(i32 60)
  br label %113

96:                                               ; preds = %34
  %97 = load %struct.tm6000_core*, %struct.tm6000_core** %11, align 8
  %98 = load i32, i32* @REQ_03_SET_GET_MCU_PIN, align 4
  %99 = load %struct.tm6000_core*, %struct.tm6000_core** %11, align 8
  %100 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @tm6000_set_reg(%struct.tm6000_core* %97, i32 %98, i32 %102, i32 0)
  %104 = call i32 @msleep(i32 130)
  %105 = load %struct.tm6000_core*, %struct.tm6000_core** %11, align 8
  %106 = load i32, i32* @REQ_03_SET_GET_MCU_PIN, align 4
  %107 = load %struct.tm6000_core*, %struct.tm6000_core** %11, align 8
  %108 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @tm6000_set_reg(%struct.tm6000_core* %105, i32 %106, i32 %110, i32 1)
  %112 = call i32 @msleep(i32 130)
  br label %113

113:                                              ; preds = %96, %71, %38
  %114 = load %struct.tm6000_core*, %struct.tm6000_core** %11, align 8
  %115 = call i32 @tm6000_ir_wait(%struct.tm6000_core* %114, i32 1)
  br label %124

116:                                              ; preds = %32
  %117 = load %struct.tm6000_core*, %struct.tm6000_core** %11, align 8
  %118 = load i32, i32* @REQ_04_EN_DISABLE_MCU_INT, align 4
  %119 = call i32 @tm6000_set_reg(%struct.tm6000_core* %117, i32 %118, i32 2, i32 1)
  %120 = call i32 @msleep(i32 10)
  br label %124

121:                                              ; preds = %32
  %122 = load %struct.tm6000_core*, %struct.tm6000_core** %11, align 8
  %123 = call i32 @tm6000_i2c_reset(%struct.tm6000_core* %122, i32 100)
  store i32 %123, i32* %10, align 4
  br label %124

124:                                              ; preds = %32, %121, %116, %113
  br label %132

125:                                              ; preds = %20
  %126 = load %struct.tm6000_core*, %struct.tm6000_core** %11, align 8
  %127 = load i32, i32* @REQ_50_SET_START, align 4
  %128 = call i32 @tm6000_set_reg(%struct.tm6000_core* %126, i32 %127, i32 0, i32 0)
  %129 = load %struct.tm6000_core*, %struct.tm6000_core** %11, align 8
  %130 = load i32, i32* @REQ_51_SET_STOP, align 4
  %131 = call i32 @tm6000_set_reg(%struct.tm6000_core* %129, i32 %130, i32 0, i32 0)
  br label %132

132:                                              ; preds = %20, %125, %124, %22
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %132, %19
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32 @tm6000_ir_wait(%struct.tm6000_core*, i32) #1

declare dso_local i32 @tm6000_set_reg(%struct.tm6000_core*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @tm6000_i2c_reset(%struct.tm6000_core*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
