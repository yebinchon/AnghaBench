; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_hisi504_nand.c_hisi_nfc_cmdfunc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_hisi504_nand.c_hisi_nfc_cmdfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mtd_info = type { i32 }
%struct.hinfc_host = type { i32, i32, i32*, i32, i32, i32 }

@HINFC504_CON = common dso_local global i32 0, align 4
@NAND_ECC_HW = common dso_local global i32 0, align 4
@HINFC504_CON_ECCTYPE_MASK = common dso_local global i32 0, align 4
@HINFC504_CON_ECCTYPE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Error: unsupported cmd(cmd=%x, col=%x, page=%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32, i32, i32)* @hisi_nfc_cmdfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_nfc_cmdfunc(%struct.nand_chip* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca %struct.hinfc_host*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %14 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %13)
  store %struct.mtd_info* %14, %struct.mtd_info** %9, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %16 = call %struct.hinfc_host* @nand_get_controller_data(%struct.nand_chip* %15)
  store %struct.hinfc_host* %16, %struct.hinfc_host** %10, align 8
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.hinfc_host*, %struct.hinfc_host** %10, align 8
  %19 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %111 [
    i32 133, label %21
    i32 131, label %21
    i32 129, label %43
    i32 136, label %51
    i32 134, label %56
    i32 135, label %59
    i32 132, label %62
    i32 128, label %72
    i32 130, label %105
  ]

21:                                               ; preds = %4, %4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 133
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.hinfc_host*, %struct.hinfc_host** %10, align 8
  %27 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %36

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %31 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %29, %32
  %34 = load %struct.hinfc_host*, %struct.hinfc_host** %10, align 8
  %35 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %28, %24
  store i32 0, i32* %11, align 4
  %37 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @set_addr(%struct.mtd_info* %37, i32 %38, i32 %39)
  %41 = load %struct.hinfc_host*, %struct.hinfc_host** %10, align 8
  %42 = call i32 @hisi_nfc_send_cmd_readstart(%struct.hinfc_host* %41)
  br label %119

43:                                               ; preds = %4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.hinfc_host*, %struct.hinfc_host** %10, align 8
  %46 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @set_addr(%struct.mtd_info* %47, i32 %48, i32 %49)
  br label %119

51:                                               ; preds = %4
  %52 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @set_addr(%struct.mtd_info* %52, i32 %53, i32 %54)
  br label %119

56:                                               ; preds = %4
  %57 = load %struct.hinfc_host*, %struct.hinfc_host** %10, align 8
  %58 = call i32 @hisi_nfc_send_cmd_pageprog(%struct.hinfc_host* %57)
  br label %119

59:                                               ; preds = %4
  %60 = load %struct.hinfc_host*, %struct.hinfc_host** %10, align 8
  %61 = call i32 @hisi_nfc_send_cmd_erase(%struct.hinfc_host* %60)
  br label %119

62:                                               ; preds = %4
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.hinfc_host*, %struct.hinfc_host** %10, align 8
  %65 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.hinfc_host*, %struct.hinfc_host** %10, align 8
  %67 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @memset(i32 %68, i32 0, i32 16)
  %70 = load %struct.hinfc_host*, %struct.hinfc_host** %10, align 8
  %71 = call i32 @hisi_nfc_send_cmd_readid(%struct.hinfc_host* %70)
  br label %119

72:                                               ; preds = %4
  %73 = load %struct.hinfc_host*, %struct.hinfc_host** %10, align 8
  %74 = load i32, i32* @HINFC504_CON, align 4
  %75 = call i32 @hinfc_read(%struct.hinfc_host* %73, i32 %74)
  store i32 %75, i32* %12, align 4
  %76 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %77 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @NAND_ECC_HW, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %72
  %83 = load %struct.hinfc_host*, %struct.hinfc_host** %10, align 8
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @HINFC504_CON_ECCTYPE_MASK, align 4
  %86 = load i32, i32* @HINFC504_CON_ECCTYPE_SHIFT, align 4
  %87 = shl i32 %85, %86
  %88 = xor i32 %87, -1
  %89 = and i32 %84, %88
  %90 = load i32, i32* @HINFC504_CON, align 4
  %91 = call i32 @hinfc_write(%struct.hinfc_host* %83, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %82, %72
  %93 = load %struct.hinfc_host*, %struct.hinfc_host** %10, align 8
  %94 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %93, i32 0, i32 1
  store i32 0, i32* %94, align 4
  %95 = load %struct.hinfc_host*, %struct.hinfc_host** %10, align 8
  %96 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @memset(i32 %97, i32 0, i32 16)
  %99 = load %struct.hinfc_host*, %struct.hinfc_host** %10, align 8
  %100 = call i32 @hisi_nfc_send_cmd_status(%struct.hinfc_host* %99)
  %101 = load %struct.hinfc_host*, %struct.hinfc_host** %10, align 8
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @HINFC504_CON, align 4
  %104 = call i32 @hinfc_write(%struct.hinfc_host* %101, i32 %102, i32 %103)
  br label %119

105:                                              ; preds = %4
  %106 = load %struct.hinfc_host*, %struct.hinfc_host** %10, align 8
  %107 = load %struct.hinfc_host*, %struct.hinfc_host** %10, align 8
  %108 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @hisi_nfc_send_cmd_reset(%struct.hinfc_host* %106, i32 %109)
  br label %119

111:                                              ; preds = %4
  %112 = load %struct.hinfc_host*, %struct.hinfc_host** %10, align 8
  %113 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @dev_err(i32 %114, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %115, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %111, %105, %92, %62, %59, %56, %51, %43, %36
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %119
  %123 = load %struct.hinfc_host*, %struct.hinfc_host** %10, align 8
  %124 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 -1, i32* %126, align 4
  %127 = load %struct.hinfc_host*, %struct.hinfc_host** %10, align 8
  %128 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  store i32 -1, i32* %130, align 4
  br label %131

131:                                              ; preds = %122, %119
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.hinfc_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @set_addr(%struct.mtd_info*, i32, i32) #1

declare dso_local i32 @hisi_nfc_send_cmd_readstart(%struct.hinfc_host*) #1

declare dso_local i32 @hisi_nfc_send_cmd_pageprog(%struct.hinfc_host*) #1

declare dso_local i32 @hisi_nfc_send_cmd_erase(%struct.hinfc_host*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @hisi_nfc_send_cmd_readid(%struct.hinfc_host*) #1

declare dso_local i32 @hinfc_read(%struct.hinfc_host*, i32) #1

declare dso_local i32 @hinfc_write(%struct.hinfc_host*, i32, i32) #1

declare dso_local i32 @hisi_nfc_send_cmd_status(%struct.hinfc_host*) #1

declare dso_local i32 @hisi_nfc_send_cmd_reset(%struct.hinfc_host*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
