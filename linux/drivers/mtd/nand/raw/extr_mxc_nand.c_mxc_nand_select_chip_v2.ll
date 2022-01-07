; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_mxc_nand_select_chip_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_mxc_nand_select_chip_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mxc_nand_host = type { i32, i32, i32 }

@NFC_V1_V2_BUF_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @mxc_nand_select_chip_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxc_nand_select_chip_v2(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mxc_nand_host*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %7 = call %struct.mxc_nand_host* @nand_get_controller_data(%struct.nand_chip* %6)
  store %struct.mxc_nand_host* %7, %struct.mxc_nand_host** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %5, align 8
  %12 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %5, align 8
  %17 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clk_disable_unprepare(i32 %18)
  %20 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %5, align 8
  %21 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %15, %10
  br label %45

23:                                               ; preds = %2
  %24 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %5, align 8
  %25 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %23
  %29 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %5, align 8
  %30 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @clk_prepare_enable(i32 %31)
  %33 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %5, align 8
  %34 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  br label %35

35:                                               ; preds = %28, %23
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %5, align 8
  %38 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %5, align 8
  %40 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 4
  %43 = load i32, i32* @NFC_V1_V2_BUF_ADDR, align 4
  %44 = call i32 @writew(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %35, %22
  ret void
}

declare dso_local %struct.mxc_nand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @writew(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
