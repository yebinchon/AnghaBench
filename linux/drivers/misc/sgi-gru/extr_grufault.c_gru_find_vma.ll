; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grufault.c_gru_find_vma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grufault.c_gru_find_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vm_area_struct = type { i64, i32* }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@gru_vm_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vm_area_struct* @gru_find_vma(i64 %0) #0 {
  %2 = alloca %struct.vm_area_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i64, i64* %3, align 8
  %9 = call %struct.vm_area_struct* @find_vma(i32 %7, i64 %8)
  store %struct.vm_area_struct* %9, %struct.vm_area_struct** %4, align 8
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %11 = icmp ne %struct.vm_area_struct* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = icmp ule i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, @gru_vm_ops
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  store %struct.vm_area_struct* %24, %struct.vm_area_struct** %2, align 8
  br label %26

25:                                               ; preds = %18, %12, %1
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %2, align 8
  br label %26

26:                                               ; preds = %25, %23
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  ret %struct.vm_area_struct* %27
}

declare dso_local %struct.vm_area_struct* @find_vma(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
