; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_hisi504_nand.c_hisi_nfc_send_cmd_readstart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_hisi504_nand.c_hisi_nfc_send_cmd_readstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinfc_host = type { i32*, i32*, i32 }
%struct.mtd_info = type { i32, i32 }

@HINFC504_ADDRL = common dso_local global i32 0, align 4
@HINFC504_ADDRH = common dso_local global i32 0, align 4
@NAND_CMD_READSTART = common dso_local global i32 0, align 4
@NAND_CMD_READ0 = common dso_local global i32 0, align 4
@HINFC504_CMD = common dso_local global i32 0, align 4
@HINFC504_LOG_READ_ADDR = common dso_local global i32 0, align 4
@HINFC504_LOG_READ_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinfc_host*)* @hisi_nfc_send_cmd_readstart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_nfc_send_cmd_readstart(%struct.hinfc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hinfc_host*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  store %struct.hinfc_host* %0, %struct.hinfc_host** %3, align 8
  %5 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %6 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %5, i32 0, i32 2
  %7 = call %struct.mtd_info* @nand_to_mtd(i32* %6)
  store %struct.mtd_info* %7, %struct.mtd_info** %4, align 8
  %8 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %9 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %14 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %12, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %1
  %20 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %21 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %26 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %24, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %95

32:                                               ; preds = %19, %1
  %33 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %34 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, -65536
  store i32 %38, i32* %36, align 4
  %39 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %40 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %41 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @HINFC504_ADDRL, align 4
  %46 = call i32 @hinfc_write(%struct.hinfc_host* %39, i32 %44, i32 %45)
  %47 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %48 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %49 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @HINFC504_ADDRH, align 4
  %54 = call i32 @hinfc_write(%struct.hinfc_host* %47, i32 %52, i32 %53)
  %55 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %56 = load i32, i32* @NAND_CMD_READSTART, align 4
  %57 = shl i32 %56, 8
  %58 = load i32, i32* @NAND_CMD_READ0, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @HINFC504_CMD, align 4
  %61 = call i32 @hinfc_write(%struct.hinfc_host* %55, i32 %59, i32 %60)
  %62 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %63 = load i32, i32* @HINFC504_LOG_READ_ADDR, align 4
  %64 = call i32 @hinfc_write(%struct.hinfc_host* %62, i32 0, i32 %63)
  %65 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %66 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %67 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %70 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %68, %71
  %73 = load i32, i32* @HINFC504_LOG_READ_LEN, align 4
  %74 = call i32 @hinfc_write(%struct.hinfc_host* %65, i32 %72, i32 %73)
  %75 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %76 = call i32 @hisi_nfc_dma_transfer(%struct.hinfc_host* %75, i32 0)
  %77 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %78 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %83 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 %81, i32* %85, align 4
  %86 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %87 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.hinfc_host*, %struct.hinfc_host** %3, align 8
  %92 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  store i32 %90, i32* %94, align 4
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %32, %31
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.mtd_info* @nand_to_mtd(i32*) #1

declare dso_local i32 @hinfc_write(%struct.hinfc_host*, i32, i32) #1

declare dso_local i32 @hisi_nfc_dma_transfer(%struct.hinfc_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
