; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_timing_preprocess.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_timing_preprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_timing_range = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.img_ir_timing_range*, i32)* @img_ir_timing_preprocess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_ir_timing_preprocess(%struct.img_ir_timing_range* %0, i32 %1) #0 {
  %3 = alloca %struct.img_ir_timing_range*, align 8
  %4 = alloca i32, align 4
  store %struct.img_ir_timing_range* %0, %struct.img_ir_timing_range** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.img_ir_timing_range*, %struct.img_ir_timing_range** %3, align 8
  %6 = getelementptr inbounds %struct.img_ir_timing_range, %struct.img_ir_timing_range* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.img_ir_timing_range*, %struct.img_ir_timing_range** %3, align 8
  %9 = getelementptr inbounds %struct.img_ir_timing_range, %struct.img_ir_timing_range* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.img_ir_timing_range*, %struct.img_ir_timing_range** %3, align 8
  %14 = getelementptr inbounds %struct.img_ir_timing_range, %struct.img_ir_timing_range* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.img_ir_timing_range*, %struct.img_ir_timing_range** %3, align 8
  %17 = getelementptr inbounds %struct.img_ir_timing_range, %struct.img_ir_timing_range* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %12, %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = load %struct.img_ir_timing_range*, %struct.img_ir_timing_range** %3, align 8
  %23 = getelementptr inbounds %struct.img_ir_timing_range, %struct.img_ir_timing_range* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = mul i32 %24, %25
  %27 = udiv i32 %26, 1000
  %28 = load %struct.img_ir_timing_range*, %struct.img_ir_timing_range** %3, align 8
  %29 = getelementptr inbounds %struct.img_ir_timing_range, %struct.img_ir_timing_range* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.img_ir_timing_range*, %struct.img_ir_timing_range** %3, align 8
  %31 = getelementptr inbounds %struct.img_ir_timing_range, %struct.img_ir_timing_range* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = mul i32 %32, %33
  %35 = add i32 %34, 999
  %36 = udiv i32 %35, 1000
  %37 = load %struct.img_ir_timing_range*, %struct.img_ir_timing_range** %3, align 8
  %38 = getelementptr inbounds %struct.img_ir_timing_range, %struct.img_ir_timing_range* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %21, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
