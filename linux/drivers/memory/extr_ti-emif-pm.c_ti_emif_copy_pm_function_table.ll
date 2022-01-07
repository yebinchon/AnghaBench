; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_ti-emif-pm.c_ti_emif_copy_pm_function_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_ti-emif-pm.c_ti_emif_copy_pm_function_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.gen_pool = type { i32 }

@emif_instance = common dso_local global %struct.TYPE_2__* null, align 8
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ti_emif_copy_pm_function_table(%struct.gen_pool* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gen_pool*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.gen_pool* %0, %struct.gen_pool** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @emif_instance, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %24

12:                                               ; preds = %2
  %13 = load %struct.gen_pool*, %struct.gen_pool** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @emif_instance, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i8* @sram_exec_copy(%struct.gen_pool* %13, i8* %14, i32* %16, i32 4)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %12
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %24

23:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %20, %9
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i8* @sram_exec_copy(%struct.gen_pool*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
