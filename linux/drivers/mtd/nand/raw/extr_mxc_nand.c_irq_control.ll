; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_irq_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_irq_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxc_nand_host = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.mxc_nand_host*, i32)*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxc_nand_host*, i32)* @irq_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irq_control(%struct.mxc_nand_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mxc_nand_host*, align 8
  %4 = alloca i32, align 4
  store %struct.mxc_nand_host* %0, %struct.mxc_nand_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %3, align 8
  %6 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %3, align 8
  %16 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @enable_irq(i32 %17)
  br label %24

19:                                               ; preds = %11
  %20 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %3, align 8
  %21 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @disable_irq_nosync(i32 %22)
  br label %24

24:                                               ; preds = %19, %14
  br label %34

25:                                               ; preds = %2
  %26 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %3, align 8
  %27 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.mxc_nand_host*, i32)*, i32 (%struct.mxc_nand_host*, i32)** %29, align 8
  %31 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 %30(%struct.mxc_nand_host* %31, i32 %32)
  br label %34

34:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
