; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tmio_nand.c_tmio_nand_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tmio_nand.c_tmio_nand_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.tmio_nand = type { %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@FCR_ISR = common dso_local global i64 0, align 8
@FCR_IMR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"still busy after 400 ms\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"timeout waiting for interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @tmio_nand_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmio_nand_wait(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca %struct.tmio_nand*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %6 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %7 = call i32 @nand_to_mtd(%struct.nand_chip* %6)
  %8 = call %struct.tmio_nand* @mtd_to_tmio(i32 %7)
  store %struct.tmio_nand* %8, %struct.tmio_nand** %3, align 8
  %9 = load %struct.tmio_nand*, %struct.tmio_nand** %3, align 8
  %10 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @FCR_ISR, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @tmio_iowrite8(i32 15, i64 %13)
  %15 = load %struct.tmio_nand*, %struct.tmio_nand** %3, align 8
  %16 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %15, i32 0, i32 2
  %17 = call i32 @reinit_completion(i32* %16)
  %18 = load %struct.tmio_nand*, %struct.tmio_nand** %3, align 8
  %19 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FCR_IMR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @tmio_iowrite8(i32 129, i64 %22)
  store i64 400, i64* %4, align 8
  %24 = load %struct.tmio_nand*, %struct.tmio_nand** %3, align 8
  %25 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %24, i32 0, i32 2
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @msecs_to_jiffies(i64 %26)
  %28 = call i64 @wait_for_completion_timeout(i32* %25, i32 %27)
  store i64 %28, i64* %4, align 8
  %29 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %30 = call i32 @tmio_nand_dev_ready(%struct.nand_chip* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %1
  %37 = load %struct.tmio_nand*, %struct.tmio_nand** %3, align 8
  %38 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @FCR_IMR, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @tmio_iowrite8(i32 0, i64 %41)
  %43 = load %struct.tmio_nand*, %struct.tmio_nand** %3, align 8
  %44 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @dev_warn(i32* %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %68

48:                                               ; preds = %1
  %49 = load i64, i64* %4, align 8
  %50 = icmp ne i64 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %48
  %56 = load %struct.tmio_nand*, %struct.tmio_nand** %3, align 8
  %57 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @FCR_IMR, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @tmio_iowrite8(i32 0, i64 %60)
  %62 = load %struct.tmio_nand*, %struct.tmio_nand** %3, align 8
  %63 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 @dev_warn(i32* %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %55, %48
  br label %68

68:                                               ; preds = %67, %36
  %69 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %70 = call i32 @nand_status_op(%struct.nand_chip* %69, i32* %5)
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local %struct.tmio_nand* @mtd_to_tmio(i32) #1

declare dso_local i32 @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @tmio_iowrite8(i32, i64) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tmio_nand_dev_ready(%struct.nand_chip*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @nand_status_op(%struct.nand_chip*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
