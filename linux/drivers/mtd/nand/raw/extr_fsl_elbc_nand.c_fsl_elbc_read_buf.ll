; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsl_elbc_nand.c_fsl_elbc_read_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsl_elbc_nand.c_fsl_elbc_read_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.fsl_elbc_mtd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.fsl_elbc_fcm_ctrl* }
%struct.fsl_elbc_fcm_ctrl = type { i64, i32*, i64 }

@.str = private unnamed_addr constant [60 x i8] c"read_buf beyond end of buffer (%d requested, %d available)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32*, i32)* @fsl_elbc_read_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_elbc_read_buf(%struct.nand_chip* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fsl_elbc_mtd*, align 8
  %8 = alloca %struct.fsl_elbc_fcm_ctrl*, align 8
  %9 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %11 = call %struct.fsl_elbc_mtd* @nand_get_controller_data(%struct.nand_chip* %10)
  store %struct.fsl_elbc_mtd* %11, %struct.fsl_elbc_mtd** %7, align 8
  %12 = load %struct.fsl_elbc_mtd*, %struct.fsl_elbc_mtd** %7, align 8
  %13 = getelementptr inbounds %struct.fsl_elbc_mtd, %struct.fsl_elbc_mtd* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.fsl_elbc_fcm_ctrl*, %struct.fsl_elbc_fcm_ctrl** %15, align 8
  store %struct.fsl_elbc_fcm_ctrl* %16, %struct.fsl_elbc_fcm_ctrl** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %56

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.fsl_elbc_fcm_ctrl*, %struct.fsl_elbc_fcm_ctrl** %8, align 8
  %23 = getelementptr inbounds %struct.fsl_elbc_fcm_ctrl, %struct.fsl_elbc_fcm_ctrl* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.fsl_elbc_fcm_ctrl*, %struct.fsl_elbc_fcm_ctrl** %8, align 8
  %26 = getelementptr inbounds %struct.fsl_elbc_fcm_ctrl, %struct.fsl_elbc_fcm_ctrl* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub i64 %24, %27
  %29 = call i32 @min(i32 %21, i64 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.fsl_elbc_fcm_ctrl*, %struct.fsl_elbc_fcm_ctrl** %8, align 8
  %32 = getelementptr inbounds %struct.fsl_elbc_fcm_ctrl, %struct.fsl_elbc_fcm_ctrl* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.fsl_elbc_fcm_ctrl*, %struct.fsl_elbc_fcm_ctrl** %8, align 8
  %35 = getelementptr inbounds %struct.fsl_elbc_fcm_ctrl, %struct.fsl_elbc_fcm_ctrl* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @memcpy_fromio(i32* %30, i32* %37, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = load %struct.fsl_elbc_fcm_ctrl*, %struct.fsl_elbc_fcm_ctrl** %8, align 8
  %43 = getelementptr inbounds %struct.fsl_elbc_fcm_ctrl, %struct.fsl_elbc_fcm_ctrl* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, %41
  store i64 %45, i64* %43, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %20
  %50 = load %struct.fsl_elbc_mtd*, %struct.fsl_elbc_mtd** %7, align 8
  %51 = getelementptr inbounds %struct.fsl_elbc_mtd, %struct.fsl_elbc_mtd* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %19, %49, %20
  ret void
}

declare dso_local %struct.fsl_elbc_mtd* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @memcpy_fromio(i32*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
