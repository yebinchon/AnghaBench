; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rb.c_scif_rb_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rb.c_scif_rb_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_rb = type { i32, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @scif_rb_count(%struct.scif_rb* %0, i64 %1) #0 {
  %3 = alloca %struct.scif_rb*, align 8
  %4 = alloca i64, align 8
  store %struct.scif_rb* %0, %struct.scif_rb** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.scif_rb*, %struct.scif_rb** %3, align 8
  %6 = getelementptr inbounds %struct.scif_rb, %struct.scif_rb* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.scif_rb*, %struct.scif_rb** %3, align 8
  %9 = getelementptr inbounds %struct.scif_rb, %struct.scif_rb* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.scif_rb*, %struct.scif_rb** %3, align 8
  %12 = getelementptr inbounds %struct.scif_rb, %struct.scif_rb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @scif_rb_ring_cnt(i32 %7, i32 %10, i32 %13)
  %15 = load i64, i64* %4, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.scif_rb*, %struct.scif_rb** %3, align 8
  %19 = getelementptr inbounds %struct.scif_rb, %struct.scif_rb* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.scif_rb*, %struct.scif_rb** %3, align 8
  %23 = getelementptr inbounds %struct.scif_rb, %struct.scif_rb* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = call i32 (...) @smp_rmb()
  br label %25

25:                                               ; preds = %17, %2
  %26 = load %struct.scif_rb*, %struct.scif_rb** %3, align 8
  %27 = getelementptr inbounds %struct.scif_rb, %struct.scif_rb* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.scif_rb*, %struct.scif_rb** %3, align 8
  %30 = getelementptr inbounds %struct.scif_rb, %struct.scif_rb* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.scif_rb*, %struct.scif_rb** %3, align 8
  %33 = getelementptr inbounds %struct.scif_rb, %struct.scif_rb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @scif_rb_ring_cnt(i32 %28, i32 %31, i32 %34)
  ret i64 %35
}

declare dso_local i64 @scif_rb_ring_cnt(i32, i32, i32) #1

declare dso_local i32 @smp_rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
