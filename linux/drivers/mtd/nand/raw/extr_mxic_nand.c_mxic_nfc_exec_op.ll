; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxic_nand.c_mxic_nfc_exec_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxic_nand.c_mxic_nfc_exec_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.nand_operation = type { i32, %struct.nand_op_instr* }
%struct.nand_op_instr = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, i32* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.mxic_nand_ctlr = type { i64, i32 }

@HC_EN = common dso_local global i64 0, align 8
@HC_EN_BIT = common dso_local global i32 0, align 4
@OP_BUSW_8 = common dso_local global i32 0, align 4
@OP_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, %struct.nand_operation*, i32)* @mxic_nfc_exec_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxic_nfc_exec_op(%struct.nand_chip* %0, %struct.nand_operation* %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca %struct.nand_operation*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mxic_nand_ctlr*, align 8
  %8 = alloca %struct.nand_op_instr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store %struct.nand_operation* %1, %struct.nand_operation** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %12 = call %struct.mxic_nand_ctlr* @nand_get_controller_data(%struct.nand_chip* %11)
  store %struct.mxic_nand_ctlr* %12, %struct.mxic_nand_ctlr** %7, align 8
  store %struct.nand_op_instr* null, %struct.nand_op_instr** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %7, align 8
  %14 = call i32 @mxic_nfc_cs_enable(%struct.mxic_nand_ctlr* %13)
  %15 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %7, align 8
  %16 = getelementptr inbounds %struct.mxic_nand_ctlr, %struct.mxic_nand_ctlr* %15, i32 0, i32 1
  %17 = call i32 @init_completion(i32* %16)
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %167, %3
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.nand_operation*, %struct.nand_operation** %5, align 8
  %21 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %170

24:                                               ; preds = %18
  %25 = load %struct.nand_operation*, %struct.nand_operation** %5, align 8
  %26 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %25, i32 0, i32 1
  %27 = load %struct.nand_op_instr*, %struct.nand_op_instr** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %27, i64 %29
  store %struct.nand_op_instr* %30, %struct.nand_op_instr** %8, align 8
  %31 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %32 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %166 [
    i32 131, label %34
    i32 132, label %66
    i32 130, label %96
    i32 129, label %128
    i32 128, label %163
  ]

34:                                               ; preds = %24
  %35 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %7, align 8
  %36 = getelementptr inbounds %struct.mxic_nand_ctlr, %struct.mxic_nand_ctlr* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @HC_EN, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 0, i64 %39)
  %41 = load i32, i32* @HC_EN_BIT, align 4
  %42 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %7, align 8
  %43 = getelementptr inbounds %struct.mxic_nand_ctlr, %struct.mxic_nand_ctlr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @HC_EN, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 %41, i64 %46)
  %48 = load i32, i32* @OP_BUSW_8, align 4
  %49 = call i32 @OP_CMD_BUSW(i32 %48)
  %50 = call i32 @OP_DUMMY_CYC(i32 63)
  %51 = or i32 %49, %50
  %52 = call i32 @OP_CMD_BYTES(i32 0)
  %53 = or i32 %51, %52
  %54 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %7, align 8
  %55 = getelementptr inbounds %struct.mxic_nand_ctlr, %struct.mxic_nand_ctlr* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @SS_CTRL(i32 0)
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  %60 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %7, align 8
  %61 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %62 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = call i32 @mxic_nfc_data_xfer(%struct.mxic_nand_ctlr* %60, i32* %64, i32* null, i32 1)
  store i32 %65, i32* %9, align 4
  br label %166

66:                                               ; preds = %24
  %67 = load i32, i32* @OP_BUSW_8, align 4
  %68 = call i32 @OP_ADDR_BUSW(i32 %67)
  %69 = call i32 @OP_DUMMY_CYC(i32 63)
  %70 = or i32 %68, %69
  %71 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %72 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @OP_ADDR_BYTES(i32 %75)
  %77 = or i32 %70, %76
  %78 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %7, align 8
  %79 = getelementptr inbounds %struct.mxic_nand_ctlr, %struct.mxic_nand_ctlr* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @SS_CTRL(i32 0)
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel(i32 %77, i64 %82)
  %84 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %7, align 8
  %85 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %86 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %91 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @mxic_nfc_data_xfer(%struct.mxic_nand_ctlr* %84, i32* %89, i32* null, i32 %94)
  store i32 %95, i32* %9, align 4
  br label %166

96:                                               ; preds = %24
  %97 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %7, align 8
  %98 = getelementptr inbounds %struct.mxic_nand_ctlr, %struct.mxic_nand_ctlr* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @ONFI_DIN_CNT(i32 0)
  %101 = add nsw i64 %99, %100
  %102 = call i32 @writel(i32 0, i64 %101)
  %103 = load i32, i32* @OP_BUSW_8, align 4
  %104 = call i32 @OP_DATA_BUSW(i32 %103)
  %105 = call i32 @OP_DUMMY_CYC(i32 63)
  %106 = or i32 %104, %105
  %107 = load i32, i32* @OP_READ, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %7, align 8
  %110 = getelementptr inbounds %struct.mxic_nand_ctlr, %struct.mxic_nand_ctlr* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i64 @SS_CTRL(i32 0)
  %113 = add nsw i64 %111, %112
  %114 = call i32 @writel(i32 %108, i64 %113)
  %115 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %7, align 8
  %116 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %117 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %123 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @mxic_nfc_data_xfer(%struct.mxic_nand_ctlr* %115, i32* null, i32* %121, i32 %126)
  store i32 %127, i32* %9, align 4
  br label %166

128:                                              ; preds = %24
  %129 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %130 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %7, align 8
  %135 = getelementptr inbounds %struct.mxic_nand_ctlr, %struct.mxic_nand_ctlr* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i64 @ONFI_DIN_CNT(i32 0)
  %138 = add nsw i64 %136, %137
  %139 = call i32 @writel(i32 %133, i64 %138)
  %140 = load i32, i32* @OP_BUSW_8, align 4
  %141 = call i32 @OP_DATA_BUSW(i32 %140)
  %142 = call i32 @OP_DUMMY_CYC(i32 63)
  %143 = or i32 %141, %142
  %144 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %7, align 8
  %145 = getelementptr inbounds %struct.mxic_nand_ctlr, %struct.mxic_nand_ctlr* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i64 @SS_CTRL(i32 0)
  %148 = add nsw i64 %146, %147
  %149 = call i32 @writel(i32 %143, i64 %148)
  %150 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %7, align 8
  %151 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %152 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %158 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @mxic_nfc_data_xfer(%struct.mxic_nand_ctlr* %150, i32* %156, i32* null, i32 %161)
  store i32 %162, i32* %9, align 4
  br label %166

163:                                              ; preds = %24
  %164 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %165 = call i32 @mxic_nfc_wait_ready(%struct.nand_chip* %164)
  store i32 %165, i32* %9, align 4
  br label %166

166:                                              ; preds = %24, %163, %128, %96, %66, %34
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %10, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %10, align 4
  br label %18

170:                                              ; preds = %18
  %171 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %7, align 8
  %172 = call i32 @mxic_nfc_cs_disable(%struct.mxic_nand_ctlr* %171)
  %173 = load i32, i32* %9, align 4
  ret i32 %173
}

declare dso_local %struct.mxic_nand_ctlr* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @mxic_nfc_cs_enable(%struct.mxic_nand_ctlr*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @OP_CMD_BUSW(i32) #1

declare dso_local i32 @OP_DUMMY_CYC(i32) #1

declare dso_local i32 @OP_CMD_BYTES(i32) #1

declare dso_local i64 @SS_CTRL(i32) #1

declare dso_local i32 @mxic_nfc_data_xfer(%struct.mxic_nand_ctlr*, i32*, i32*, i32) #1

declare dso_local i32 @OP_ADDR_BUSW(i32) #1

declare dso_local i32 @OP_ADDR_BYTES(i32) #1

declare dso_local i64 @ONFI_DIN_CNT(i32) #1

declare dso_local i32 @OP_DATA_BUSW(i32) #1

declare dso_local i32 @mxic_nfc_wait_ready(%struct.nand_chip*) #1

declare dso_local i32 @mxic_nfc_cs_disable(%struct.mxic_nand_ctlr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
