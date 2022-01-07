; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_read_page_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_read_page_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.nand_chip.0*, i8*, i32)*, i32 (%struct.nand_chip.1*, i32, i32, i32)* }
%struct.nand_chip.0 = type opaque
%struct.nand_chip.1 = type opaque
%struct.mtd_info = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NAND_CMD_READ0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nand_read_page_op(%struct.nand_chip* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
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
  br label %85

23:                                               ; preds = %17, %5
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %11, align 4
  %26 = add i32 %24, %25
  %27 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %28 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %31 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add i32 %29, %32
  %34 = icmp ugt i32 %26, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %85

38:                                               ; preds = %23
  %39 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %40 = call i64 @nand_has_exec_op(%struct.nand_chip* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  %43 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %44 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ugt i32 %45, 512
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @nand_lp_exec_read_page_op(%struct.nand_chip* %48, i32 %49, i32 %50, i8* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  br label %85

54:                                               ; preds = %42
  %55 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i8*, i8** %10, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @nand_sp_exec_read_page_op(%struct.nand_chip* %55, i32 %56, i32 %57, i8* %58, i32 %59)
  store i32 %60, i32* %6, align 4
  br label %85

61:                                               ; preds = %38
  %62 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %63 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32 (%struct.nand_chip.1*, i32, i32, i32)*, i32 (%struct.nand_chip.1*, i32, i32, i32)** %64, align 8
  %66 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %67 = bitcast %struct.nand_chip* %66 to %struct.nand_chip.1*
  %68 = load i32, i32* @NAND_CMD_READ0, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 %65(%struct.nand_chip.1* %67, i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %61
  %75 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %76 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32 (%struct.nand_chip.0*, i8*, i32)*, i32 (%struct.nand_chip.0*, i8*, i32)** %77, align 8
  %79 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %80 = bitcast %struct.nand_chip* %79 to %struct.nand_chip.0*
  %81 = load i8*, i8** %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 %78(%struct.nand_chip.0* %80, i8* %81, i32 %82)
  br label %84

84:                                               ; preds = %74, %61
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %84, %54, %47, %35, %20
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i64 @nand_has_exec_op(%struct.nand_chip*) #1

declare dso_local i32 @nand_lp_exec_read_page_op(%struct.nand_chip*, i32, i32, i8*, i32) #1

declare dso_local i32 @nand_sp_exec_read_page_op(%struct.nand_chip*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
