; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_naked_access_exec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_naked_access_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.nand_subop = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.marvell_nfc_op = type { i32*, i32, i32 }
%struct.marvell_nfc = type { i64 }

@TYPE_MASK = common dso_local global i32 0, align 4
@XTYPE_MASK = common dso_local global i32 0, align 4
@TYPE_NAKED_CMD = common dso_local global i32 0, align 4
@TYPE_NAKED_ADDR = common dso_local global i32 0, align 4
@TYPE_READ = common dso_local global i32 0, align 4
@XTYPE_LAST_NAKED_RW = common dso_local global i32 0, align 4
@TYPE_WRITE = common dso_local global i32 0, align 4
@NDSR_RDDREQ = common dso_local global i32 0, align 4
@NDSR_WRDREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"RDDREQ/WRDREQ while draining raw data\00", align 1
@NDCR = common dso_local global i64 0, align 8
@NDCR_ND_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, %struct.nand_subop*)* @marvell_nfc_naked_access_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_nfc_naked_access_exec(%struct.nand_chip* %0, %struct.nand_subop* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca %struct.nand_subop*, align 8
  %6 = alloca %struct.marvell_nfc_op, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.marvell_nfc*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store %struct.nand_subop* %1, %struct.nand_subop** %5, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %10 = load %struct.nand_subop*, %struct.nand_subop** %5, align 8
  %11 = call i32 @marvell_nfc_parse_instructions(%struct.nand_chip* %9, %struct.nand_subop* %10, %struct.marvell_nfc_op* %6)
  %12 = load i32, i32* @TYPE_MASK, align 4
  %13 = call i32 @NDCB0_CMD_TYPE(i32 %12)
  %14 = load i32, i32* @XTYPE_MASK, align 4
  %15 = call i32 @NDCB0_CMD_XTYPE(i32 %14)
  %16 = or i32 %13, %15
  %17 = xor i32 %16, -1
  %18 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %6, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %17
  store i32 %22, i32* %20, align 4
  %23 = load %struct.nand_subop*, %struct.nand_subop** %5, align 8
  %24 = getelementptr inbounds %struct.nand_subop, %struct.nand_subop* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %67 [
    i32 130, label %29
    i32 131, label %37
    i32 129, label %45
    i32 128, label %56
  ]

29:                                               ; preds = %2
  %30 = load i32, i32* @TYPE_NAKED_CMD, align 4
  %31 = call i32 @NDCB0_CMD_TYPE(i32 %30)
  %32 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %6, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %31
  store i32 %36, i32* %34, align 4
  br label %68

37:                                               ; preds = %2
  %38 = load i32, i32* @TYPE_NAKED_ADDR, align 4
  %39 = call i32 @NDCB0_CMD_TYPE(i32 %38)
  %40 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %6, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %39
  store i32 %44, i32* %42, align 4
  br label %68

45:                                               ; preds = %2
  %46 = load i32, i32* @TYPE_READ, align 4
  %47 = call i32 @NDCB0_CMD_TYPE(i32 %46)
  %48 = load i32, i32* @XTYPE_LAST_NAKED_RW, align 4
  %49 = call i32 @NDCB0_CMD_XTYPE(i32 %48)
  %50 = or i32 %47, %49
  %51 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %6, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %50
  store i32 %55, i32* %53, align 4
  br label %68

56:                                               ; preds = %2
  %57 = load i32, i32* @TYPE_WRITE, align 4
  %58 = call i32 @NDCB0_CMD_TYPE(i32 %57)
  %59 = load i32, i32* @XTYPE_LAST_NAKED_RW, align 4
  %60 = call i32 @NDCB0_CMD_XTYPE(i32 %59)
  %61 = or i32 %58, %60
  %62 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %6, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %61
  store i32 %66, i32* %64, align 4
  br label %68

67:                                               ; preds = %2
  br label %68

68:                                               ; preds = %67, %56, %45, %37, %29
  %69 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %70 = call i32 @marvell_nfc_prepare_cmd(%struct.nand_chip* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %137

75:                                               ; preds = %68
  %76 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %77 = call i32 @marvell_nfc_send_cmd(%struct.nand_chip* %76, %struct.marvell_nfc_op* %6)
  %78 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %6, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %75
  %82 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %83 = call i32 @marvell_nfc_wait_cmdd(%struct.nand_chip* %82)
  store i32 %83, i32* %7, align 4
  %84 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %6, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @cond_delay(i32 %85)
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %3, align 4
  br label %137

88:                                               ; preds = %75
  %89 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %90 = load i32, i32* @NDSR_RDDREQ, align 4
  %91 = load i32, i32* @NDSR_WRDREQ, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @marvell_nfc_end_cmd(%struct.nand_chip* %89, i32 %92, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %3, align 4
  br label %137

98:                                               ; preds = %88
  %99 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %100 = load %struct.nand_subop*, %struct.nand_subop** %5, align 8
  %101 = call i32 @marvell_nfc_xfer_data_pio(%struct.nand_chip* %99, %struct.nand_subop* %100, %struct.marvell_nfc_op* %6)
  %102 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %103 = call i32 @marvell_nfc_wait_cmdd(%struct.nand_chip* %102)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %98
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %3, align 4
  br label %137

108:                                              ; preds = %98
  %109 = load %struct.nand_subop*, %struct.nand_subop** %5, align 8
  %110 = getelementptr inbounds %struct.nand_subop, %struct.nand_subop* %109, i32 0, i32 0
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 128
  br i1 %115, label %116, label %136

116:                                              ; preds = %108
  %117 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %118 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call %struct.marvell_nfc* @to_marvell_nfc(i32 %119)
  store %struct.marvell_nfc* %120, %struct.marvell_nfc** %8, align 8
  %121 = load %struct.marvell_nfc*, %struct.marvell_nfc** %8, align 8
  %122 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @NDCR, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @readl(i64 %125)
  %127 = load i32, i32* @NDCR_ND_RUN, align 4
  %128 = xor i32 %127, -1
  %129 = and i32 %126, %128
  %130 = load %struct.marvell_nfc*, %struct.marvell_nfc** %8, align 8
  %131 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @NDCR, align 8
  %134 = add nsw i64 %132, %133
  %135 = call i32 @writel_relaxed(i32 %129, i64 %134)
  br label %136

136:                                              ; preds = %116, %108
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %136, %106, %96, %81, %73
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @marvell_nfc_parse_instructions(%struct.nand_chip*, %struct.nand_subop*, %struct.marvell_nfc_op*) #1

declare dso_local i32 @NDCB0_CMD_TYPE(i32) #1

declare dso_local i32 @NDCB0_CMD_XTYPE(i32) #1

declare dso_local i32 @marvell_nfc_prepare_cmd(%struct.nand_chip*) #1

declare dso_local i32 @marvell_nfc_send_cmd(%struct.nand_chip*, %struct.marvell_nfc_op*) #1

declare dso_local i32 @marvell_nfc_wait_cmdd(%struct.nand_chip*) #1

declare dso_local i32 @cond_delay(i32) #1

declare dso_local i32 @marvell_nfc_end_cmd(%struct.nand_chip*, i32, i8*) #1

declare dso_local i32 @marvell_nfc_xfer_data_pio(%struct.nand_chip*, %struct.nand_subop*, %struct.marvell_nfc_op*) #1

declare dso_local %struct.marvell_nfc* @to_marvell_nfc(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
