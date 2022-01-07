; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_mxc_nand_read_page_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_mxc_nand_read_page_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i8* }
%struct.mxc_nand_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nand_chip*, i32*, i8*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @mxc_nand_read_page_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxc_nand_read_page_raw(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mxc_nand_host*, align 8
  %10 = alloca i8*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %12 = call %struct.mxc_nand_host* @nand_get_controller_data(%struct.nand_chip* %11)
  store %struct.mxc_nand_host* %12, %struct.mxc_nand_host** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %17 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %10, align 8
  br label %20

19:                                               ; preds = %4
  store i8* null, i8** %10, align 8
  br label %20

20:                                               ; preds = %19, %15
  %21 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %9, align 8
  %22 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.nand_chip*, i32*, i8*, i32, i32)*, i32 (%struct.nand_chip*, i32*, i8*, i32, i32)** %24, align 8
  %26 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 %25(%struct.nand_chip* %26, i32* %27, i8* %28, i32 0, i32 %29)
  ret i32 %30
}

declare dso_local %struct.mxc_nand_host* @nand_get_controller_data(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
