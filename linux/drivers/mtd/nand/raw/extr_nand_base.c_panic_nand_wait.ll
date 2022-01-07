; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_panic_nand_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_panic_nand_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.nand_chip.0*)* }
%struct.nand_chip.0 = type opaque

@NAND_STATUS_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @panic_nand_wait(%struct.nand_chip* %0, i64 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %45, %2
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = load i64, i64* %4, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %8
  %14 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %15 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64 (%struct.nand_chip.0*)*, i64 (%struct.nand_chip.0*)** %16, align 8
  %18 = icmp ne i64 (%struct.nand_chip.0*)* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64 (%struct.nand_chip.0*)*, i64 (%struct.nand_chip.0*)** %22, align 8
  %24 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %25 = bitcast %struct.nand_chip* %24 to %struct.nand_chip.0*
  %26 = call i64 %23(%struct.nand_chip.0* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %48

29:                                               ; preds = %19
  br label %43

30:                                               ; preds = %13
  %31 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %32 = call i32 @nand_read_data_op(%struct.nand_chip* %31, i32* %7, i32 4, i32 1)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %48

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @NAND_STATUS_READY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %48

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %29
  %44 = call i32 @mdelay(i32 1)
  br label %45

45:                                               ; preds = %43
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %8

48:                                               ; preds = %35, %41, %28, %8
  ret void
}

declare dso_local i32 @nand_read_data_op(%struct.nand_chip*, i32*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
