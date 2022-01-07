; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_irq.c_hl_irq_handler_eq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_irq.c_hl_irq_handler_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_eq = type { i64, i64, %struct.hl_device* }
%struct.hl_device = type { %struct.TYPE_4__*, i32, i32, i64 }
%struct.TYPE_4__ = type { i32 (%struct.hl_device*, i64)* }
%struct.hl_eq_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.hl_eqe_work = type { i32, i32, %struct.hl_device* }

@EQ_CTL_READY_MASK = common dso_local global i32 0, align 4
@EQ_CTL_READY_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Device disabled but received IRQ %d for EQ\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@irq_handle_eqe = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_irq_handler_eq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hl_eq*, align 8
  %6 = alloca %struct.hl_device*, align 8
  %7 = alloca %struct.hl_eq_entry*, align 8
  %8 = alloca %struct.hl_eq_entry*, align 8
  %9 = alloca %struct.hl_eqe_work*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.hl_eq*
  store %struct.hl_eq* %12, %struct.hl_eq** %5, align 8
  %13 = load %struct.hl_eq*, %struct.hl_eq** %5, align 8
  %14 = getelementptr inbounds %struct.hl_eq, %struct.hl_eq* %13, i32 0, i32 2
  %15 = load %struct.hl_device*, %struct.hl_device** %14, align 8
  store %struct.hl_device* %15, %struct.hl_device** %6, align 8
  %16 = load %struct.hl_eq*, %struct.hl_eq** %5, align 8
  %17 = getelementptr inbounds %struct.hl_eq, %struct.hl_eq* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.hl_eq_entry*
  store %struct.hl_eq_entry* %19, %struct.hl_eq_entry** %8, align 8
  br label %20

20:                                               ; preds = %2, %78
  %21 = load %struct.hl_eq_entry*, %struct.hl_eq_entry** %8, align 8
  %22 = load %struct.hl_eq*, %struct.hl_eq** %5, align 8
  %23 = getelementptr inbounds %struct.hl_eq, %struct.hl_eq* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.hl_eq_entry, %struct.hl_eq_entry* %21, i64 %24
  %26 = getelementptr inbounds %struct.hl_eq_entry, %struct.hl_eq_entry* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32_to_cpu(i32 %28)
  %30 = load i32, i32* @EQ_CTL_READY_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @EQ_CTL_READY_SHIFT, align 4
  %33 = ashr i32 %31, %32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %20
  br label %107

37:                                               ; preds = %20
  %38 = load %struct.hl_eq_entry*, %struct.hl_eq_entry** %8, align 8
  %39 = load %struct.hl_eq*, %struct.hl_eq** %5, align 8
  %40 = getelementptr inbounds %struct.hl_eq, %struct.hl_eq* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.hl_eq_entry, %struct.hl_eq_entry* %38, i64 %41
  store %struct.hl_eq_entry* %42, %struct.hl_eq_entry** %7, align 8
  %43 = call i32 (...) @dma_rmb()
  %44 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %45 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %37
  %49 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %50 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @dev_warn(i32 %51, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %78

54:                                               ; preds = %37
  %55 = load i32, i32* @GFP_ATOMIC, align 4
  %56 = call %struct.hl_eqe_work* @kmalloc(i32 16, i32 %55)
  store %struct.hl_eqe_work* %56, %struct.hl_eqe_work** %9, align 8
  %57 = load %struct.hl_eqe_work*, %struct.hl_eqe_work** %9, align 8
  %58 = icmp ne %struct.hl_eqe_work* %57, null
  br i1 %58, label %59, label %77

59:                                               ; preds = %54
  %60 = load %struct.hl_eqe_work*, %struct.hl_eqe_work** %9, align 8
  %61 = getelementptr inbounds %struct.hl_eqe_work, %struct.hl_eqe_work* %60, i32 0, i32 0
  %62 = load i32, i32* @irq_handle_eqe, align 4
  %63 = call i32 @INIT_WORK(i32* %61, i32 %62)
  %64 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %65 = load %struct.hl_eqe_work*, %struct.hl_eqe_work** %9, align 8
  %66 = getelementptr inbounds %struct.hl_eqe_work, %struct.hl_eqe_work* %65, i32 0, i32 2
  store %struct.hl_device* %64, %struct.hl_device** %66, align 8
  %67 = load %struct.hl_eqe_work*, %struct.hl_eqe_work** %9, align 8
  %68 = getelementptr inbounds %struct.hl_eqe_work, %struct.hl_eqe_work* %67, i32 0, i32 1
  %69 = load %struct.hl_eq_entry*, %struct.hl_eq_entry** %7, align 8
  %70 = call i32 @memcpy(i32* %68, %struct.hl_eq_entry* %69, i32 4)
  %71 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %72 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.hl_eqe_work*, %struct.hl_eqe_work** %9, align 8
  %75 = getelementptr inbounds %struct.hl_eqe_work, %struct.hl_eqe_work* %74, i32 0, i32 0
  %76 = call i32 @queue_work(i32 %73, i32* %75)
  br label %77

77:                                               ; preds = %59, %54
  br label %78

78:                                               ; preds = %77, %48
  %79 = load %struct.hl_eq_entry*, %struct.hl_eq_entry** %7, align 8
  %80 = getelementptr inbounds %struct.hl_eq_entry, %struct.hl_eq_entry* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @le32_to_cpu(i32 %82)
  %84 = load i32, i32* @EQ_CTL_READY_MASK, align 4
  %85 = xor i32 %84, -1
  %86 = and i32 %83, %85
  %87 = call i32 @cpu_to_le32(i32 %86)
  %88 = load %struct.hl_eq_entry*, %struct.hl_eq_entry** %7, align 8
  %89 = getelementptr inbounds %struct.hl_eq_entry, %struct.hl_eq_entry* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 4
  %91 = load %struct.hl_eq*, %struct.hl_eq** %5, align 8
  %92 = getelementptr inbounds %struct.hl_eq, %struct.hl_eq* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @hl_eq_inc_ptr(i64 %93)
  %95 = load %struct.hl_eq*, %struct.hl_eq** %5, align 8
  %96 = getelementptr inbounds %struct.hl_eq, %struct.hl_eq* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %98 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32 (%struct.hl_device*, i64)*, i32 (%struct.hl_device*, i64)** %100, align 8
  %102 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %103 = load %struct.hl_eq*, %struct.hl_eq** %5, align 8
  %104 = getelementptr inbounds %struct.hl_eq, %struct.hl_eq* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 %101(%struct.hl_device* %102, i64 %105)
  br label %20

107:                                              ; preds = %36
  %108 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %108
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local %struct.hl_eqe_work* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.hl_eq_entry*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @hl_eq_inc_ptr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
