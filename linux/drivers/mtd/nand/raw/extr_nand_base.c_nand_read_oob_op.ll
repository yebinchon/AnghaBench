; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_read_oob_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_read_oob_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.nand_chip.0*, i8*, i32)*, i32 (%struct.nand_chip.1*, i32, i32, i32)* }
%struct.nand_chip.0 = type opaque
%struct.nand_chip.1 = type opaque
%struct.mtd_info = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@NAND_CMD_READOOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nand_read_oob_op(%struct.nand_chip* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mtd_info*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %14 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %13)
  store %struct.mtd_info* %14, %struct.mtd_info** %12, align 8
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = load i8*, i8** %10, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %74

23:                                               ; preds = %17, %5
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %11, align 4
  %26 = add i32 %24, %25
  %27 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %28 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ugt i32 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %74

34:                                               ; preds = %23
  %35 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %36 = call i64 @nand_has_exec_op(%struct.nand_chip* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %42 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = zext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @nand_read_page_op(%struct.nand_chip* %39, i32 %40, i64 %46, i8* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  br label %74

50:                                               ; preds = %34
  %51 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %52 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32 (%struct.nand_chip.1*, i32, i32, i32)*, i32 (%struct.nand_chip.1*, i32, i32, i32)** %53, align 8
  %55 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %56 = bitcast %struct.nand_chip* %55 to %struct.nand_chip.1*
  %57 = load i32, i32* @NAND_CMD_READOOB, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 %54(%struct.nand_chip.1* %56, i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %50
  %64 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %65 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32 (%struct.nand_chip.0*, i8*, i32)*, i32 (%struct.nand_chip.0*, i8*, i32)** %66, align 8
  %68 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %69 = bitcast %struct.nand_chip* %68 to %struct.nand_chip.0*
  %70 = load i8*, i8** %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 %67(%struct.nand_chip.0* %69, i8* %70, i32 %71)
  br label %73

73:                                               ; preds = %63, %50
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %73, %38, %31, %20
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i64 @nand_has_exec_op(%struct.nand_chip*) #1

declare dso_local i32 @nand_read_page_op(%struct.nand_chip*, i32, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
