; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_prog_page_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_prog_page_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.nand_chip.0*)*, i32 (%struct.nand_chip.1*, i32, i32, i32)*, i32 (%struct.nand_chip.2*, i8*, i32)* }
%struct.nand_chip.0 = type opaque
%struct.nand_chip.1 = type opaque
%struct.nand_chip.2 = type opaque
%struct.mtd_info = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NAND_CMD_SEQIN = common dso_local global i32 0, align 4
@NAND_CMD_PAGEPROG = common dso_local global i32 0, align 4
@NAND_STATUS_FAIL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nand_prog_page_op(%struct.nand_chip* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mtd_info*, align 8
  %13 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %15 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %14)
  store %struct.mtd_info* %15, %struct.mtd_info** %12, align 8
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i8*, i8** %10, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18, %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %94

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %11, align 4
  %27 = add i32 %25, %26
  %28 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %29 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %32 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add i32 %30, %33
  %35 = icmp ugt i32 %27, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %94

39:                                               ; preds = %24
  %40 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %41 = call i64 @nand_has_exec_op(%struct.nand_chip* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @nand_exec_prog_page_op(%struct.nand_chip* %44, i32 %45, i32 %46, i8* %47, i32 %48, i32 1)
  store i32 %49, i32* %13, align 4
  br label %85

50:                                               ; preds = %39
  %51 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %52 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32 (%struct.nand_chip.1*, i32, i32, i32)*, i32 (%struct.nand_chip.1*, i32, i32, i32)** %53, align 8
  %55 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %56 = bitcast %struct.nand_chip* %55 to %struct.nand_chip.1*
  %57 = load i32, i32* @NAND_CMD_SEQIN, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 %54(%struct.nand_chip.1* %56, i32 %57, i32 %58, i32 %59)
  %61 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %62 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32 (%struct.nand_chip.2*, i8*, i32)*, i32 (%struct.nand_chip.2*, i8*, i32)** %63, align 8
  %65 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %66 = bitcast %struct.nand_chip* %65 to %struct.nand_chip.2*
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 %64(%struct.nand_chip.2* %66, i8* %67, i32 %68)
  %70 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %71 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32 (%struct.nand_chip.1*, i32, i32, i32)*, i32 (%struct.nand_chip.1*, i32, i32, i32)** %72, align 8
  %74 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %75 = bitcast %struct.nand_chip* %74 to %struct.nand_chip.1*
  %76 = load i32, i32* @NAND_CMD_PAGEPROG, align 4
  %77 = call i32 %73(%struct.nand_chip.1* %75, i32 %76, i32 -1, i32 -1)
  %78 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %79 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32 (%struct.nand_chip.0*)*, i32 (%struct.nand_chip.0*)** %80, align 8
  %82 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %83 = bitcast %struct.nand_chip* %82 to %struct.nand_chip.0*
  %84 = call i32 %81(%struct.nand_chip.0* %83)
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %50, %43
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @NAND_STATUS_FAIL, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %94

93:                                               ; preds = %85
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %93, %90, %36, %21
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i64 @nand_has_exec_op(%struct.nand_chip*) #1

declare dso_local i32 @nand_exec_prog_page_op(%struct.nand_chip*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
