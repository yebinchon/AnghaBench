; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm8350-irq.c_wm8350_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm8350-irq.c_wm8350_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350 = type { i32, i32, i32, i32, i32* }
%struct.wm8350_platform_data = type { i32, i64 }

@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"No interrupt support, no core IRQ\0A\00", align 1
@WM8350_SYSTEM_INTERRUPTS_MASK = common dso_local global i64 0, align 8
@WM8350_INT_STATUS_1_MASK = common dso_local global i64 0, align 8
@wm8350_irqs = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Allocating irqs failed with %d\0A\00", align 1
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@WM8350_SYSTEM_CONTROL_1 = common dso_local global i32 0, align 4
@WM8350_IRQ_POL = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@wm8350_irq_chip = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@IRQ_NOREQUEST = common dso_local global i32 0, align 4
@IRQ_NOPROBE = common dso_local global i32 0, align 4
@wm8350_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"wm8350\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to request IRQ: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm8350_irq_init(%struct.wm8350* %0, i32 %1, %struct.wm8350_platform_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm8350*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wm8350_platform_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wm8350* %0, %struct.wm8350** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.wm8350_platform_data* %2, %struct.wm8350_platform_data** %7, align 8
  %13 = load i32, i32* @IRQF_ONESHOT, align 4
  store i32 %13, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %18 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i32, i8*, ...) @dev_warn(i32 %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %164

21:                                               ; preds = %3
  %22 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %23 = load i64, i64* @WM8350_SYSTEM_INTERRUPTS_MASK, align 8
  %24 = call i32 @wm8350_reg_write(%struct.wm8350* %22, i64 %23, i32 65535)
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %51, %21
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %28 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @ARRAY_SIZE(i32* %29)
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %25
  %33 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %34 = load i64, i64* @WM8350_INT_STATUS_1_MASK, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = call i32 @wm8350_reg_write(%struct.wm8350* %33, i64 %37, i32 65535)
  %39 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %40 = load i64, i64* @WM8350_INT_STATUS_1_MASK, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = call i32 @wm8350_reg_read(%struct.wm8350* %39, i64 %43)
  %45 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %46 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  br label %51

51:                                               ; preds = %32
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %25

54:                                               ; preds = %25
  %55 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %56 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %55, i32 0, i32 3
  %57 = call i32 @mutex_init(i32* %56)
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %60 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.wm8350_platform_data*, %struct.wm8350_platform_data** %7, align 8
  %62 = icmp ne %struct.wm8350_platform_data* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %54
  %64 = load %struct.wm8350_platform_data*, %struct.wm8350_platform_data** %7, align 8
  %65 = getelementptr inbounds %struct.wm8350_platform_data, %struct.wm8350_platform_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.wm8350_platform_data*, %struct.wm8350_platform_data** %7, align 8
  %70 = getelementptr inbounds %struct.wm8350_platform_data, %struct.wm8350_platform_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %68, %63, %54
  %73 = load i32, i32* %12, align 4
  %74 = load i32*, i32** @wm8350_irqs, align 8
  %75 = call i32 @ARRAY_SIZE(i32* %74)
  %76 = call i32 @irq_alloc_descs(i32 %73, i32 0, i32 %75, i32 0)
  %77 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %78 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %80 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %72
  %84 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %85 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %88 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32, i8*, ...) @dev_warn(i32 %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  store i32 0, i32* %4, align 4
  br label %164

91:                                               ; preds = %72
  %92 = load %struct.wm8350_platform_data*, %struct.wm8350_platform_data** %7, align 8
  %93 = icmp ne %struct.wm8350_platform_data* %92, null
  br i1 %93, label %94, label %107

94:                                               ; preds = %91
  %95 = load %struct.wm8350_platform_data*, %struct.wm8350_platform_data** %7, align 8
  %96 = getelementptr inbounds %struct.wm8350_platform_data, %struct.wm8350_platform_data* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %101 = load i32, i32* %11, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %11, align 4
  %103 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %104 = load i32, i32* @WM8350_SYSTEM_CONTROL_1, align 4
  %105 = load i32, i32* @WM8350_IRQ_POL, align 4
  %106 = call i32 @wm8350_set_bits(%struct.wm8350* %103, i32 %104, i32 %105)
  br label %115

107:                                              ; preds = %94, %91
  %108 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %109 = load i32, i32* %11, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %11, align 4
  %111 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %112 = load i32, i32* @WM8350_SYSTEM_CONTROL_1, align 4
  %113 = load i32, i32* @WM8350_IRQ_POL, align 4
  %114 = call i32 @wm8350_clear_bits(%struct.wm8350* %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %107, %99
  %116 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %117 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %9, align 4
  br label %119

119:                                              ; preds = %142, %115
  %120 = load i32, i32* %9, align 4
  %121 = load i32*, i32** @wm8350_irqs, align 8
  %122 = call i32 @ARRAY_SIZE(i32* %121)
  %123 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %124 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %122, %125
  %127 = icmp slt i32 %120, %126
  br i1 %127, label %128, label %145

128:                                              ; preds = %119
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %131 = call i32 @irq_set_chip_data(i32 %129, %struct.wm8350* %130)
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @handle_edge_irq, align 4
  %134 = call i32 @irq_set_chip_and_handler(i32 %132, i32* @wm8350_irq_chip, i32 %133)
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @irq_set_nested_thread(i32 %135, i32 1)
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @IRQ_NOREQUEST, align 4
  %139 = load i32, i32* @IRQ_NOPROBE, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @irq_clear_status_flags(i32 %137, i32 %140)
  br label %142

142:                                              ; preds = %128
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  br label %119

145:                                              ; preds = %119
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @wm8350_irq, align 4
  %148 = load i32, i32* %11, align 4
  %149 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %150 = call i32 @request_threaded_irq(i32 %146, i32* null, i32 %147, i32 %148, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.wm8350* %149)
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %145
  %154 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %155 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @dev_err(i32 %156, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %153, %145
  %160 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %161 = load i64, i64* @WM8350_SYSTEM_INTERRUPTS_MASK, align 8
  %162 = call i32 @wm8350_reg_write(%struct.wm8350* %160, i64 %161, i32 0)
  %163 = load i32, i32* %8, align 4
  store i32 %163, i32* %4, align 4
  br label %164

164:                                              ; preds = %159, %83, %16
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @wm8350_reg_write(%struct.wm8350*, i64, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @wm8350_reg_read(%struct.wm8350*, i64) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @irq_alloc_descs(i32, i32, i32, i32) #1

declare dso_local i32 @wm8350_set_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @wm8350_clear_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @irq_set_chip_data(i32, %struct.wm8350*) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32) #1

declare dso_local i32 @irq_set_nested_thread(i32, i32) #1

declare dso_local i32 @irq_clear_status_flags(i32, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.wm8350*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
