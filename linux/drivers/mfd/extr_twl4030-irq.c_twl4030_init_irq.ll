; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-irq.c_twl4030_init_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-irq.c_twl4030_init_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_chip = type { i8*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@twl4030_init_irq.twl4030_irq_chip = internal global %struct.irq_chip zeroinitializer, align 8
@TWL4030_PWR_NR_IRQS = common dso_local global i32 0, align 4
@TWL4030_CORE_NR_IRQS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Fail to allocate IRQ descs\0A\00", align 1
@irq_domain_simple_ops = common dso_local global i32 0, align 4
@twl_irq_line = common dso_local global i32 0, align 4
@twl4030_irq_base = common dso_local global i32 0, align 4
@dummy_irq_chip = common dso_local global %struct.irq_chip zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"twl4030\00", align 1
@twl4030_sih_irq_chip = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@handle_simple_irq = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"%s (irq %d) chaining IRQs %d..%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"PIH\00", align 1
@TWL4030_MODULE_INT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"sih_setup PWR INT --> %d\0A\00", align 1
@handle_twl4030_pih = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"TWL4030-PIH\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"could not claim irq%d: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @twl4030_init_irq(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.device_node*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %11, align 8
  %15 = load i32, i32* @TWL4030_PWR_NR_IRQS, align 4
  %16 = load i32, i32* @TWL4030_CORE_NR_IRQS, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @irq_alloc_descs(i32 -1, i32 0, i32 %18, i32 0)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %108

26:                                               ; preds = %2
  %27 = load %struct.device_node*, %struct.device_node** %11, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @irq_domain_add_legacy(%struct.device_node* %27, i32 %28, i32 %29, i32 0, i32* @irq_domain_simple_ops, i32* null)
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @TWL4030_CORE_NR_IRQS, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @twl_irq_line, align 4
  %35 = call i32 @twl4030_init_sih_modules(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %108

40:                                               ; preds = %26
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* @twl4030_irq_base, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.irq_chip* @twl4030_init_irq.twl4030_irq_chip to i8*), i8* align 8 bitcast (%struct.irq_chip* @dummy_irq_chip to i8*), i64 16, i1 false)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.irq_chip, %struct.irq_chip* @twl4030_init_irq.twl4030_irq_chip, i32 0, i32 0), align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.irq_chip, %struct.irq_chip* @dummy_irq_chip, i32 0, i32 1), align 8
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @twl4030_sih_irq_chip, i32 0, i32 0), align 4
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %56, %40
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = load i32*, i32** @handle_simple_irq, align 8
  %51 = call i32 @irq_set_chip_and_handler(i32 %49, %struct.irq_chip* @twl4030_init_irq.twl4030_irq_chip, i32* %50)
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @irq_set_nested_thread(i32 %52, i32 1)
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @activate_irq(i32 %54)
  br label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %44

59:                                               ; preds = %44
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @dev_info(%struct.device* %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %61, i32 %62, i32 %63)
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = load i32, i32* @TWL4030_MODULE_INT, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @twl4030_sih_setup(%struct.device* %65, i32 %66, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %59
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  br label %92

75:                                               ; preds = %59
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @handle_twl4030_pih, align 4
  %78 = load i32, i32* @IRQF_ONESHOT, align 4
  %79 = call i32 @request_threaded_irq(i32 %76, i32* null, i32 %77, i32 %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* null)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %84, i32 %85)
  br label %91

87:                                               ; preds = %75
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @enable_irq_wake(i32 %88)
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %3, align 4
  br label %108

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91, %71
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %103, %92
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @irq_set_nested_thread(i32 %99, i32 0)
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @irq_set_chip_and_handler(i32 %101, %struct.irq_chip* null, i32* null)
  br label %103

103:                                              ; preds = %98
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %94

106:                                              ; preds = %94
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %87, %38, %22
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @irq_alloc_descs(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @irq_domain_add_legacy(%struct.device_node*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @twl4030_init_sih_modules(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @irq_set_chip_and_handler(i32, %struct.irq_chip*, i32*) #1

declare dso_local i32 @irq_set_nested_thread(i32, i32) #1

declare dso_local i32 @activate_irq(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @twl4030_sih_setup(%struct.device*, i32, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, i32*) #1

declare dso_local i32 @enable_irq_wake(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
