; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_hisi504_nand.c_hisi_nfc_host_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_hisi504_nand.c_hisi_nfc_host_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinfc_host = type { i32, i64, i32*, i64*, i64, i32, %struct.nand_chip }
%struct.nand_chip = type { i32 }

@HINFC_VERSION = common dso_local global i32 0, align 4
@HINFC504_CON_OP_MODE_NORMAL = common dso_local global i32 0, align 4
@HINFC504_CON_READY_BUSY_SEL = common dso_local global i32 0, align 4
@HINFC504_CON_PAGESIZE_MASK = common dso_local global i32 0, align 4
@HINFC504_CON_PAGEISZE_SHIFT = common dso_local global i32 0, align 4
@HINFC504_CON_ECCTYPE_MASK = common dso_local global i32 0, align 4
@HINFC504_CON_ECCTYPE_SHIFT = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@HINFC504_CON_BUS_WIDTH = common dso_local global i32 0, align 4
@HINFC504_CON = common dso_local global i32 0, align 4
@HINFC504_BUFFER_BASE_ADDRESS_LEN = common dso_local global i32 0, align 4
@HINFC504_W_LATCH = common dso_local global i32 0, align 4
@HINFC504_R_LATCH = common dso_local global i32 0, align 4
@HINFC504_RW_LATCH = common dso_local global i32 0, align 4
@HINFC504_PWIDTH = common dso_local global i32 0, align 4
@HINFC504_INTEN_DMA = common dso_local global i32 0, align 4
@HINFC504_INTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinfc_host*)* @hisi_nfc_host_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_nfc_host_init(%struct.hinfc_host* %0) #0 {
  %2 = alloca %struct.hinfc_host*, align 8
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.hinfc_host* %0, %struct.hinfc_host** %2, align 8
  %5 = load %struct.hinfc_host*, %struct.hinfc_host** %2, align 8
  %6 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %5, i32 0, i32 6
  store %struct.nand_chip* %6, %struct.nand_chip** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.hinfc_host*, %struct.hinfc_host** %2, align 8
  %8 = load i32, i32* @HINFC_VERSION, align 4
  %9 = call i32 @hinfc_read(%struct.hinfc_host* %7, i32 %8)
  %10 = load %struct.hinfc_host*, %struct.hinfc_host** %2, align 8
  %11 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 8
  %12 = load %struct.hinfc_host*, %struct.hinfc_host** %2, align 8
  %13 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = load %struct.hinfc_host*, %struct.hinfc_host** %2, align 8
  %15 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %14, i32 0, i32 3
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.hinfc_host*, %struct.hinfc_host** %2, align 8
  %19 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %18, i32 0, i32 3
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.hinfc_host*, %struct.hinfc_host** %2, align 8
  %23 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 -1, i32* %25, align 4
  %26 = load %struct.hinfc_host*, %struct.hinfc_host** %2, align 8
  %27 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 -1, i32* %29, align 4
  %30 = load %struct.hinfc_host*, %struct.hinfc_host** %2, align 8
  %31 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @HINFC504_CON_OP_MODE_NORMAL, align 4
  %33 = load i32, i32* @HINFC504_CON_READY_BUSY_SEL, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @HINFC504_CON_PAGESIZE_MASK, align 4
  %36 = and i32 1, %35
  %37 = load i32, i32* @HINFC504_CON_PAGEISZE_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = or i32 %34, %38
  %40 = load i32, i32* @HINFC504_CON_ECCTYPE_MASK, align 4
  %41 = and i32 0, %40
  %42 = load i32, i32* @HINFC504_CON_ECCTYPE_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = or i32 %39, %43
  %45 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %46 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %1
  %52 = load i32, i32* @HINFC504_CON_BUS_WIDTH, align 4
  br label %54

53:                                               ; preds = %1
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i32 [ %52, %51 ], [ 0, %53 ]
  %56 = or i32 %44, %55
  store i32 %56, i32* %4, align 4
  %57 = load %struct.hinfc_host*, %struct.hinfc_host** %2, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @HINFC504_CON, align 4
  %60 = call i32 @hinfc_write(%struct.hinfc_host* %57, i32 %58, i32 %59)
  %61 = load %struct.hinfc_host*, %struct.hinfc_host** %2, align 8
  %62 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @HINFC504_BUFFER_BASE_ADDRESS_LEN, align 4
  %65 = call i32 @memset(i32 %63, i32 255, i32 %64)
  %66 = load %struct.hinfc_host*, %struct.hinfc_host** %2, align 8
  %67 = load i32, i32* @HINFC504_W_LATCH, align 4
  %68 = load i32, i32* @HINFC504_R_LATCH, align 4
  %69 = load i32, i32* @HINFC504_RW_LATCH, align 4
  %70 = call i32 @SET_HINFC504_PWIDTH(i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* @HINFC504_PWIDTH, align 4
  %72 = call i32 @hinfc_write(%struct.hinfc_host* %66, i32 %70, i32 %71)
  %73 = load %struct.hinfc_host*, %struct.hinfc_host** %2, align 8
  %74 = load i32, i32* @HINFC504_INTEN_DMA, align 4
  %75 = load i32, i32* @HINFC504_INTEN, align 4
  %76 = call i32 @hinfc_write(%struct.hinfc_host* %73, i32 %74, i32 %75)
  ret void
}

declare dso_local i32 @hinfc_read(%struct.hinfc_host*, i32) #1

declare dso_local i32 @hinfc_write(%struct.hinfc_host*, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @SET_HINFC504_PWIDTH(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
