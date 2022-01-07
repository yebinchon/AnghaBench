; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-irq.c_twl4030_sih_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-irq.c_twl4030_sih_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sih = type { i32, i32, i32, i64 }
%struct.device = type { i32 }
%struct.sih_agent = type { i32, i64, i32, i32, %struct.sih* }

@EINVAL = common dso_local global i32 0, align 4
@sih_modules = common dso_local global %struct.sih* null, align 8
@nr_sih_modules = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"module to setup SIH for not found\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@twl4030_sih_irq_chip = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@twl4030_irq_base = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"twl4030_%s\00", align 1
@handle_twl4030_sih = common dso_local global i32 0, align 4
@IRQF_EARLY_RESUME = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"%s (irq %d) chaining IRQs %d..%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @twl4030_sih_setup(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sih*, align 8
  %10 = alloca %struct.sih_agent*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.sih* null, %struct.sih** %9, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %13, align 4
  store i32 0, i32* %8, align 4
  %16 = load %struct.sih*, %struct.sih** @sih_modules, align 8
  store %struct.sih* %16, %struct.sih** %9, align 8
  br label %17

17:                                               ; preds = %34, %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @nr_sih_modules, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = load %struct.sih*, %struct.sih** %9, align 8
  %23 = getelementptr inbounds %struct.sih, %struct.sih* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.sih*, %struct.sih** %9, align 8
  %29 = getelementptr inbounds %struct.sih, %struct.sih* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %13, align 4
  br label %39

33:                                               ; preds = %27, %21
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  %37 = load %struct.sih*, %struct.sih** %9, align 8
  %38 = getelementptr inbounds %struct.sih, %struct.sih* %37, i32 1
  store %struct.sih* %38, %struct.sih** %9, align 8
  br label %17

39:                                               ; preds = %32, %17
  %40 = load i32, i32* %13, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %4, align 4
  br label %141

46:                                               ; preds = %39
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.sih_agent* @kzalloc(i32 32, i32 %47)
  store %struct.sih_agent* %48, %struct.sih_agent** %10, align 8
  %49 = load %struct.sih_agent*, %struct.sih_agent** %10, align 8
  %50 = icmp ne %struct.sih_agent* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %141

54:                                               ; preds = %46
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.sih_agent*, %struct.sih_agent** %10, align 8
  %57 = getelementptr inbounds %struct.sih_agent, %struct.sih_agent* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.sih*, %struct.sih** %9, align 8
  %59 = load %struct.sih_agent*, %struct.sih_agent** %10, align 8
  %60 = getelementptr inbounds %struct.sih_agent, %struct.sih_agent* %59, i32 0, i32 4
  store %struct.sih* %58, %struct.sih** %60, align 8
  %61 = load %struct.sih_agent*, %struct.sih_agent** %10, align 8
  %62 = getelementptr inbounds %struct.sih_agent, %struct.sih_agent* %61, i32 0, i32 3
  store i32 -1, i32* %62, align 4
  %63 = load %struct.sih_agent*, %struct.sih_agent** %10, align 8
  %64 = getelementptr inbounds %struct.sih_agent, %struct.sih_agent* %63, i32 0, i32 2
  %65 = call i32 @mutex_init(i32* %64)
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %86, %54
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.sih*, %struct.sih** %9, align 8
  %69 = getelementptr inbounds %struct.sih, %struct.sih* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %66
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.sih_agent*, %struct.sih_agent** %10, align 8
  %78 = call i32 @irq_set_chip_data(i32 %76, %struct.sih_agent* %77)
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @handle_edge_irq, align 4
  %81 = call i32 @irq_set_chip_and_handler(i32 %79, i32* @twl4030_sih_irq_chip, i32 %80)
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @irq_set_nested_thread(i32 %82, i32 1)
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @activate_irq(i32 %84)
  br label %86

86:                                               ; preds = %72
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %66

89:                                               ; preds = %66
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @twl4030_irq_base, align 4
  %92 = add nsw i32 %90, %91
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.sih_agent*, %struct.sih_agent** %10, align 8
  %95 = call i32 @irq_set_handler_data(i32 %93, %struct.sih_agent* %94)
  %96 = load i32, i32* @GFP_KERNEL, align 4
  %97 = load %struct.sih*, %struct.sih** %9, align 8
  %98 = getelementptr inbounds %struct.sih, %struct.sih* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @kasprintf(i32 %96, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  %101 = load %struct.sih_agent*, %struct.sih_agent** %10, align 8
  %102 = getelementptr inbounds %struct.sih_agent, %struct.sih_agent* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @handle_twl4030_sih, align 4
  %105 = load i32, i32* @IRQF_EARLY_RESUME, align 4
  %106 = load i32, i32* @IRQF_ONESHOT, align 4
  %107 = or i32 %105, %106
  %108 = load %struct.sih_agent*, %struct.sih_agent** %10, align 8
  %109 = getelementptr inbounds %struct.sih_agent, %struct.sih_agent* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %89
  br label %118

113:                                              ; preds = %89
  %114 = load %struct.sih*, %struct.sih** %9, align 8
  %115 = getelementptr inbounds %struct.sih, %struct.sih* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  br label %118

118:                                              ; preds = %113, %112
  %119 = phi i64 [ %110, %112 ], [ %117, %113 ]
  %120 = trunc i64 %119 to i32
  %121 = call i32 @request_threaded_irq(i32 %103, i32* null, i32 %104, i32 %107, i32 %120, i32* null)
  store i32 %121, i32* %13, align 4
  %122 = load %struct.device*, %struct.device** %5, align 8
  %123 = load %struct.sih*, %struct.sih** %9, align 8
  %124 = getelementptr inbounds %struct.sih, %struct.sih* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %128, %129
  %131 = sub nsw i32 %130, 1
  %132 = call i32 @dev_info(%struct.device* %122, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %125, i32 %126, i32 %127, i32 %131)
  %133 = load i32, i32* %13, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %118
  %136 = load i32, i32* %13, align 4
  br label %139

137:                                              ; preds = %118
  %138 = load i32, i32* %7, align 4
  br label %139

139:                                              ; preds = %137, %135
  %140 = phi i32 [ %136, %135 ], [ %138, %137 ]
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %139, %51, %42
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.sih_agent* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @irq_set_chip_data(i32, %struct.sih_agent*) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32) #1

declare dso_local i32 @irq_set_nested_thread(i32, i32) #1

declare dso_local i32 @activate_irq(i32) #1

declare dso_local i32 @irq_set_handler_data(i32, %struct.sih_agent*) #1

declare dso_local i64 @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
