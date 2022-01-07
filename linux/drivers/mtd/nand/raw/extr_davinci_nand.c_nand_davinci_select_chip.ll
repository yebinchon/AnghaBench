; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_davinci_nand.c_nand_davinci_select_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_davinci_nand.c_nand_davinci_select_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.davinci_nand_info = type { %struct.TYPE_3__, i32, i64, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @nand_davinci_select_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nand_davinci_select_chip(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.davinci_nand_info*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %7 = call i32 @nand_to_mtd(%struct.nand_chip* %6)
  %8 = call %struct.davinci_nand_info* @to_davinci_nand(i32 %7)
  store %struct.davinci_nand_info* %8, %struct.davinci_nand_info** %5, align 8
  %9 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %10 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %13 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %18 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %21 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %19
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 8
  br label %26

26:                                               ; preds = %16, %2
  %27 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %28 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %31 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 8
  %34 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %35 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %5, align 8
  %40 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 %38, i32* %42, align 4
  ret void
}

declare dso_local %struct.davinci_nand_info* @to_davinci_nand(i32) #1

declare dso_local i32 @nand_to_mtd(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
