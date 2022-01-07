; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsl_upm.c_fun_write_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsl_upm.c_fun_write_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.fsl_upm_nand = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@FSL_UPM_WAIT_WRITE_BYTE = common dso_local global i32 0, align 4
@FSL_UPM_WAIT_WRITE_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32*, i32)* @fun_write_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fun_write_buf(%struct.nand_chip* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fsl_upm_nand*, align 8
  %8 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %10 = call i32 @nand_to_mtd(%struct.nand_chip* %9)
  %11 = call %struct.fsl_upm_nand* @to_fsl_upm_nand(i32 %10)
  store %struct.fsl_upm_nand* %11, %struct.fsl_upm_nand** %7, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %38, %3
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %12
  %17 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %7, align 8
  %18 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @out_8(i32 %21, i32 %26)
  %28 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %7, align 8
  %29 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @FSL_UPM_WAIT_WRITE_BYTE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %16
  %35 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %7, align 8
  %36 = call i32 @fun_wait_rnb(%struct.fsl_upm_nand* %35)
  br label %37

37:                                               ; preds = %34, %16
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %12

41:                                               ; preds = %12
  %42 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %7, align 8
  %43 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @FSL_UPM_WAIT_WRITE_BUFFER, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %7, align 8
  %50 = call i32 @fun_wait_rnb(%struct.fsl_upm_nand* %49)
  br label %51

51:                                               ; preds = %48, %41
  ret void
}

declare dso_local %struct.fsl_upm_nand* @to_fsl_upm_nand(i32) #1

declare dso_local i32 @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @out_8(i32, i32) #1

declare dso_local i32 @fun_wait_rnb(%struct.fsl_upm_nand*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
