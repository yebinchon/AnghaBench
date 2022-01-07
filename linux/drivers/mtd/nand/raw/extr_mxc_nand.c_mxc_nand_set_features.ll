; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_mxc_nand_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_mxc_nand_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.nand_chip.0*, i32)* }
%struct.nand_chip.0 = type opaque
%struct.mtd_info = type { i32 }
%struct.mxc_nand_host = type { %struct.TYPE_4__*, i32, i32, i64 }
%struct.TYPE_4__ = type { i32 (%struct.mtd_info*, i32)*, i32 (%struct.mxc_nand_host*, i32, i32)* }

@ONFI_SUBFEATURE_PARAM_LEN = common dso_local global i32 0, align 4
@NAND_CMD_SET_FEATURES = common dso_local global i32 0, align 4
@NFC_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32, i32*)* @mxc_nand_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxc_nand_set_features(%struct.nand_chip* %0, i32 %1, i32* %2) #0 {
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
  store i64 0, i64* %15, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %33, %3
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @ONFI_SUBFEATURE_PARAM_LEN, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %22 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (%struct.nand_chip.0*, i32)*, i32 (%struct.nand_chip.0*, i32)** %23, align 8
  %25 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %26 = bitcast %struct.nand_chip* %25 to %struct.nand_chip.0*
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 %24(%struct.nand_chip.0* %26, i32 %31)
  br label %33

33:                                               ; preds = %20
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %16

36:                                               ; preds = %16
  %37 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %38 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %41 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %44 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @memcpy32_toio(i32 %39, i32 %42, i32 %45)
  %47 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %48 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32 (%struct.mxc_nand_host*, i32, i32)*, i32 (%struct.mxc_nand_host*, i32, i32)** %50, align 8
  %52 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %53 = load i32, i32* @NAND_CMD_SET_FEATURES, align 4
  %54 = call i32 %51(%struct.mxc_nand_host* %52, i32 %53, i32 0)
  %55 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @mxc_do_addr_cycle(%struct.mtd_info* %55, i32 %56, i32 -1)
  %58 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %59 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32 (%struct.mtd_info*, i32)*, i32 (%struct.mtd_info*, i32)** %61, align 8
  %63 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %64 = load i32, i32* @NFC_INPUT, align 4
  %65 = call i32 %62(%struct.mtd_info* %63, i32 %64)
  ret i32 0
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.mxc_nand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @memcpy32_toio(i32, i32, i32) #1

declare dso_local i32 @mxc_do_addr_cycle(%struct.mtd_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
