; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_write_buf16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_write_buf16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.omap_nand_info = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 (...)* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32*, i32)* @omap_write_buf16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_write_buf16(%struct.mtd_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.omap_nand_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %11 = call %struct.omap_nand_info* @mtd_to_omap(%struct.mtd_info* %10)
  store %struct.omap_nand_info* %11, %struct.omap_nand_info** %7, align 8
  %12 = load i32*, i32** %5, align 8
  store i32* %12, i32** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = ashr i32 %13, 1
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %40, %3
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %6, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %15
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %8, align 8
  %22 = load i32, i32* %20, align 4
  %23 = load %struct.omap_nand_info*, %struct.omap_nand_info** %7, align 8
  %24 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @iowrite16(i32 %22, i32 %27)
  br label %29

29:                                               ; preds = %36, %19
  %30 = load %struct.omap_nand_info*, %struct.omap_nand_info** %7, align 8
  %31 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32 (...)*, i32 (...)** %33, align 8
  %35 = call i32 (...) %34()
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %29, label %40

40:                                               ; preds = %36
  br label %15

41:                                               ; preds = %15
  ret void
}

declare dso_local %struct.omap_nand_info* @mtd_to_omap(%struct.mtd_info*) #1

declare dso_local i32 @iowrite16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
