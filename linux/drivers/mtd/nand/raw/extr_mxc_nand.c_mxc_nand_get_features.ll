; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_mxc_nand_get_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_mxc_nand_get_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.nand_chip.0*)* }
%struct.nand_chip.0 = type opaque
%struct.mtd_info = type { i32 }
%struct.mxc_nand_host = type { i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.mtd_info*, i32)*, i32 (%struct.mxc_nand_host*, i32, i32)* }

@NAND_CMD_GET_FEATURES = common dso_local global i32 0, align 4
@NFC_OUTPUT = common dso_local global i32 0, align 4
@ONFI_SUBFEATURE_PARAM_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32, i32*)* @mxc_nand_get_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxc_nand_get_features(%struct.nand_chip* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca %struct.mxc_nand_host*, align 8
  %9 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %11 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %10)
  store %struct.mtd_info* %11, %struct.mtd_info** %7, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %13 = call %struct.mxc_nand_host* @nand_get_controller_data(%struct.nand_chip* %12)
  store %struct.mxc_nand_host* %13, %struct.mxc_nand_host** %8, align 8
  %14 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %15 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32 (%struct.mxc_nand_host*, i32, i32)*, i32 (%struct.mxc_nand_host*, i32, i32)** %17, align 8
  %19 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %20 = load i32, i32* @NAND_CMD_GET_FEATURES, align 4
  %21 = call i32 %18(%struct.mxc_nand_host* %19, i32 %20, i32 0)
  %22 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @mxc_do_addr_cycle(%struct.mtd_info* %22, i32 %23, i32 -1)
  %25 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %26 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32 (%struct.mtd_info*, i32)*, i32 (%struct.mtd_info*, i32)** %28, align 8
  %30 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %31 = load i32, i32* @NFC_OUTPUT, align 4
  %32 = call i32 %29(%struct.mtd_info* %30, i32 %31)
  %33 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %34 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %37 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @memcpy32_fromio(i32 %35, i32 %38, i32 512)
  %40 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %41 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %56, %3
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @ONFI_SUBFEATURE_PARAM_LEN, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %48 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32 (%struct.nand_chip.0*)*, i32 (%struct.nand_chip.0*)** %49, align 8
  %51 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %52 = bitcast %struct.nand_chip* %51 to %struct.nand_chip.0*
  %53 = call i32 %50(%struct.nand_chip.0* %52)
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %6, align 8
  store i32 %53, i32* %54, align 4
  br label %56

56:                                               ; preds = %46
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %42

59:                                               ; preds = %42
  ret i32 0
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.mxc_nand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @mxc_do_addr_cycle(%struct.mtd_info*, i32, i32) #1

declare dso_local i32 @memcpy32_fromio(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
