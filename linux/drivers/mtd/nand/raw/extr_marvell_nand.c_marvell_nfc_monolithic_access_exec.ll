; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_monolithic_access_exec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_monolithic_access_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.nand_subop = type { i32 }
%struct.marvell_nfc_op = type { i32, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.marvell_nfc = type { i64 }

@NAND_OP_DATA_IN_INSTR = common dso_local global i64 0, align 8
@NDSR_RDDREQ = common dso_local global i32 0, align 4
@NDSR_WRDREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"RDDREQ/WRDREQ while draining raw data\00", align 1
@NDCR = common dso_local global i64 0, align 8
@NDCR_ND_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, %struct.nand_subop*)* @marvell_nfc_monolithic_access_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_nfc_monolithic_access_exec(%struct.nand_chip* %0, %struct.nand_subop* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca %struct.nand_subop*, align 8
  %6 = alloca %struct.marvell_nfc_op, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.marvell_nfc*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store %struct.nand_subop* %1, %struct.nand_subop** %5, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %11 = load %struct.nand_subop*, %struct.nand_subop** %5, align 8
  %12 = call i32 @marvell_nfc_parse_instructions(%struct.nand_chip* %10, %struct.nand_subop* %11, %struct.marvell_nfc_op* %6)
  %13 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %6, i32 0, i32 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NAND_OP_DATA_IN_INSTR, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %21 = call i32 @marvell_nfc_prepare_cmd(%struct.nand_chip* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %120

26:                                               ; preds = %2
  %27 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %28 = call i32 @marvell_nfc_send_cmd(%struct.nand_chip* %27, %struct.marvell_nfc_op* %6)
  %29 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %30 = load i32, i32* @NDSR_RDDREQ, align 4
  %31 = load i32, i32* @NDSR_WRDREQ, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @marvell_nfc_end_cmd(%struct.nand_chip* %29, i32 %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %120

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %6, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cond_delay(i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %6, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %50 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %6, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @marvell_nfc_wait_op(%struct.nand_chip* %49, i64 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %120

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %44
  %59 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %6, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @cond_delay(i32 %60)
  br label %62

62:                                               ; preds = %58, %38
  %63 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %64 = load %struct.nand_subop*, %struct.nand_subop** %5, align 8
  %65 = call i32 @marvell_nfc_xfer_data_pio(%struct.nand_chip* %63, %struct.nand_subop* %64, %struct.marvell_nfc_op* %6)
  %66 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %67 = call i32 @marvell_nfc_wait_cmdd(%struct.nand_chip* %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %120

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %6, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @cond_delay(i32 %74)
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %96, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %6, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %84 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %6, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @marvell_nfc_wait_op(%struct.nand_chip* %83, i64 %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %3, align 4
  br label %120

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91, %78
  %93 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %6, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @cond_delay(i32 %94)
  br label %96

96:                                               ; preds = %92, %72
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %119, label %99

99:                                               ; preds = %96
  %100 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %101 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call %struct.marvell_nfc* @to_marvell_nfc(i32 %102)
  store %struct.marvell_nfc* %103, %struct.marvell_nfc** %9, align 8
  %104 = load %struct.marvell_nfc*, %struct.marvell_nfc** %9, align 8
  %105 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @NDCR, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @readl(i64 %108)
  %110 = load i32, i32* @NDCR_ND_RUN, align 4
  %111 = xor i32 %110, -1
  %112 = and i32 %109, %111
  %113 = load %struct.marvell_nfc*, %struct.marvell_nfc** %9, align 8
  %114 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @NDCR, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @writel_relaxed(i32 %112, i64 %117)
  br label %119

119:                                              ; preds = %99, %96
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %119, %89, %70, %55, %36, %24
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @marvell_nfc_parse_instructions(%struct.nand_chip*, %struct.nand_subop*, %struct.marvell_nfc_op*) #1

declare dso_local i32 @marvell_nfc_prepare_cmd(%struct.nand_chip*) #1

declare dso_local i32 @marvell_nfc_send_cmd(%struct.nand_chip*, %struct.marvell_nfc_op*) #1

declare dso_local i32 @marvell_nfc_end_cmd(%struct.nand_chip*, i32, i8*) #1

declare dso_local i32 @cond_delay(i32) #1

declare dso_local i32 @marvell_nfc_wait_op(%struct.nand_chip*, i64) #1

declare dso_local i32 @marvell_nfc_xfer_data_pio(%struct.nand_chip*, %struct.nand_subop*, %struct.marvell_nfc_op*) #1

declare dso_local i32 @marvell_nfc_wait_cmdd(%struct.nand_chip*) #1

declare dso_local %struct.marvell_nfc* @to_marvell_nfc(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
