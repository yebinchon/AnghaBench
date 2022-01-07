; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-irq.c_sih_read_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-irq.c_sih_read_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sih = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%union.anon = type { i64, [8 x i8] }

@irq_line = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sih*)* @sih_read_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sih_read_isr(%struct.sih* %0) #0 {
  %2 = alloca %struct.sih*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.anon, align 8
  store %struct.sih* %0, %struct.sih** %2, align 8
  %5 = bitcast %union.anon* %4 to i64*
  store i64 0, i64* %5, align 8
  %6 = load %struct.sih*, %struct.sih** %2, align 8
  %7 = getelementptr inbounds %struct.sih, %struct.sih* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = bitcast %union.anon* %4 to [4 x i32]*
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %11 = load %struct.sih*, %struct.sih** %2, align 8
  %12 = getelementptr inbounds %struct.sih, %struct.sih* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i64, i64* @irq_line, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sih*, %struct.sih** %2, align 8
  %19 = getelementptr inbounds %struct.sih, %struct.sih* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @twl_i2c_read(i32 %8, i32* %10, i32 %17, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  br label %30

26:                                               ; preds = %1
  %27 = bitcast %union.anon* %4 to i64*
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @le32_to_cpu(i64 %28)
  br label %30

30:                                               ; preds = %26, %24
  %31 = phi i32 [ %25, %24 ], [ %29, %26 ]
  ret i32 %31
}

declare dso_local i32 @twl_i2c_read(i32, i32*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
