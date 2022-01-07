; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsl_elbc_nand.c_fsl_elbc_chip_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsl_elbc_nand.c_fsl_elbc_chip_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_elbc_mtd = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.fsl_elbc_fcm_ctrl* }
%struct.fsl_elbc_fcm_ctrl = type { i32** }
%struct.mtd_info = type { %struct.fsl_elbc_mtd* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_elbc_mtd*)* @fsl_elbc_chip_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_elbc_chip_remove(%struct.fsl_elbc_mtd* %0) #0 {
  %2 = alloca %struct.fsl_elbc_mtd*, align 8
  %3 = alloca %struct.fsl_elbc_fcm_ctrl*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  store %struct.fsl_elbc_mtd* %0, %struct.fsl_elbc_mtd** %2, align 8
  %5 = load %struct.fsl_elbc_mtd*, %struct.fsl_elbc_mtd** %2, align 8
  %6 = getelementptr inbounds %struct.fsl_elbc_mtd, %struct.fsl_elbc_mtd* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.fsl_elbc_fcm_ctrl*, %struct.fsl_elbc_fcm_ctrl** %8, align 8
  store %struct.fsl_elbc_fcm_ctrl* %9, %struct.fsl_elbc_fcm_ctrl** %3, align 8
  %10 = load %struct.fsl_elbc_mtd*, %struct.fsl_elbc_mtd** %2, align 8
  %11 = getelementptr inbounds %struct.fsl_elbc_mtd, %struct.fsl_elbc_mtd* %10, i32 0, i32 2
  %12 = call %struct.mtd_info* @nand_to_mtd(i32* %11)
  store %struct.mtd_info* %12, %struct.mtd_info** %4, align 8
  %13 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %14 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %13, i32 0, i32 0
  %15 = load %struct.fsl_elbc_mtd*, %struct.fsl_elbc_mtd** %14, align 8
  %16 = call i32 @kfree(%struct.fsl_elbc_mtd* %15)
  %17 = load %struct.fsl_elbc_mtd*, %struct.fsl_elbc_mtd** %2, align 8
  %18 = getelementptr inbounds %struct.fsl_elbc_mtd, %struct.fsl_elbc_mtd* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.fsl_elbc_mtd*, %struct.fsl_elbc_mtd** %2, align 8
  %23 = getelementptr inbounds %struct.fsl_elbc_mtd, %struct.fsl_elbc_mtd* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @iounmap(i64 %24)
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.fsl_elbc_fcm_ctrl*, %struct.fsl_elbc_fcm_ctrl** %3, align 8
  %28 = getelementptr inbounds %struct.fsl_elbc_fcm_ctrl, %struct.fsl_elbc_fcm_ctrl* %27, i32 0, i32 0
  %29 = load i32**, i32*** %28, align 8
  %30 = load %struct.fsl_elbc_mtd*, %struct.fsl_elbc_mtd** %2, align 8
  %31 = getelementptr inbounds %struct.fsl_elbc_mtd, %struct.fsl_elbc_mtd* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32*, i32** %29, i64 %32
  store i32* null, i32** %33, align 8
  %34 = load %struct.fsl_elbc_mtd*, %struct.fsl_elbc_mtd** %2, align 8
  %35 = call i32 @kfree(%struct.fsl_elbc_mtd* %34)
  ret i32 0
}

declare dso_local %struct.mtd_info* @nand_to_mtd(i32*) #1

declare dso_local i32 @kfree(%struct.fsl_elbc_mtd*) #1

declare dso_local i32 @iounmap(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
