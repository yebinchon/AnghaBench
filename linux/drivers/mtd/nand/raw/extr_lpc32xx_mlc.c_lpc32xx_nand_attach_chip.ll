; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_mlc.c_lpc32xx_nand_attach_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_mlc.c_lpc32xx_nand_attach_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mtd_info = type { i32 }
%struct.lpc32xx_nand_host = type { i32, i8*, i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NAND_ECC_HW = common dso_local global i32 0, align 4
@lpc32xx_ooblayout_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @lpc32xx_nand_attach_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_nand_attach_chip(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.lpc32xx_nand_host*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %7 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %8 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %7)
  store %struct.mtd_info* %8, %struct.mtd_info** %4, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %10 = call %struct.lpc32xx_nand_host* @nand_get_controller_data(%struct.nand_chip* %9)
  store %struct.lpc32xx_nand_host* %10, %struct.lpc32xx_nand_host** %5, align 8
  %11 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %5, align 8
  %12 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %17 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @devm_kzalloc(%struct.device* %15, i32 %18, i32 %19)
  %21 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %5, align 8
  %22 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %5, align 8
  %24 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %62

30:                                               ; preds = %1
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %33 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @devm_kzalloc(%struct.device* %31, i32 %34, i32 %35)
  %37 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %5, align 8
  %38 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %5, align 8
  %40 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %30
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %62

46:                                               ; preds = %30
  %47 = load i32, i32* @NAND_ECC_HW, align 4
  %48 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %49 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %52 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 512, i32* %53, align 4
  %54 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %55 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %54, i32* @lpc32xx_ooblayout_ops)
  %56 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %57 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sdiv i32 %58, 512
  %60 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %5, align 8
  %61 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %46, %43, %27
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.lpc32xx_nand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mtd_set_ooblayout(%struct.mtd_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
