; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_pmecc.c_atmel_pmecc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_pmecc.c_atmel_pmecc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_pmecc_user = type { %struct.TYPE_3__, %struct.atmel_pmecc* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.atmel_pmecc = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@NAND_ECC_READ = common dso_local global i32 0, align 4
@NAND_ECC_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Bad ECC operation!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PMECC_CFG_WRITE_OP = common dso_local global i32 0, align 4
@PMECC_CFG_AUTO_ENABLE = common dso_local global i32 0, align 4
@ATMEL_PMECC_CFG = common dso_local global i64 0, align 8
@ATMEL_PMECC_SAREA = common dso_local global i64 0, align 8
@ATMEL_PMECC_SADDR = common dso_local global i64 0, align 8
@ATMEL_PMECC_EADDR = common dso_local global i64 0, align 8
@PMECC_CTRL_ENABLE = common dso_local global i32 0, align 4
@ATMEL_PMECC_CTRL = common dso_local global i64 0, align 8
@PMECC_CTRL_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atmel_pmecc_enable(%struct.atmel_pmecc_user* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atmel_pmecc_user*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.atmel_pmecc*, align 8
  %7 = alloca i32, align 4
  store %struct.atmel_pmecc_user* %0, %struct.atmel_pmecc_user** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %4, align 8
  %9 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %8, i32 0, i32 1
  %10 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %9, align 8
  store %struct.atmel_pmecc* %10, %struct.atmel_pmecc** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @NAND_ECC_READ, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @NAND_ECC_WRITE, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %6, align 8
  %20 = getelementptr inbounds %struct.atmel_pmecc, %struct.atmel_pmecc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %104

25:                                               ; preds = %14, %2
  %26 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %4, align 8
  %27 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %26, i32 0, i32 1
  %28 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %27, align 8
  %29 = getelementptr inbounds %struct.atmel_pmecc, %struct.atmel_pmecc* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %4, align 8
  %32 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @NAND_ECC_WRITE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %25
  %39 = load i32, i32* @PMECC_CFG_WRITE_OP, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %46

42:                                               ; preds = %25
  %43 = load i32, i32* @PMECC_CFG_AUTO_ENABLE, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %6, align 8
  %49 = getelementptr inbounds %struct.atmel_pmecc, %struct.atmel_pmecc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ATMEL_PMECC_CFG, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %47, i64 %53)
  %55 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %4, align 8
  %56 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %6, align 8
  %60 = getelementptr inbounds %struct.atmel_pmecc, %struct.atmel_pmecc* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ATMEL_PMECC_SAREA, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %58, i64 %64)
  %66 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %4, align 8
  %67 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %6, align 8
  %71 = getelementptr inbounds %struct.atmel_pmecc, %struct.atmel_pmecc* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ATMEL_PMECC_SADDR, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel(i32 %69, i64 %75)
  %77 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %4, align 8
  %78 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %6, align 8
  %82 = getelementptr inbounds %struct.atmel_pmecc, %struct.atmel_pmecc* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @ATMEL_PMECC_EADDR, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writel(i32 %80, i64 %86)
  %88 = load i32, i32* @PMECC_CTRL_ENABLE, align 4
  %89 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %6, align 8
  %90 = getelementptr inbounds %struct.atmel_pmecc, %struct.atmel_pmecc* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @ATMEL_PMECC_CTRL, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @writel(i32 %88, i64 %94)
  %96 = load i32, i32* @PMECC_CTRL_DATA, align 4
  %97 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %6, align 8
  %98 = getelementptr inbounds %struct.atmel_pmecc, %struct.atmel_pmecc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @ATMEL_PMECC_CTRL, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @writel(i32 %96, i64 %102)
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %46, %18
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
