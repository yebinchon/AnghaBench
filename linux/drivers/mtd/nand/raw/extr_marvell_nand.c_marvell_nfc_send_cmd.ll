; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.marvell_nfc_op = type { i32* }
%struct.marvell_nand_chip = type { i32 }
%struct.marvell_nfc = type { i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [72 x i8] c"\0ANDCR:  0x%08x\0ANDCB0: 0x%08x\0ANDCB1: 0x%08x\0ANDCB2: 0x%08x\0ANDCB3: 0x%08x\0A\00", align 1
@NDCR = common dso_local global i64 0, align 8
@NDCB0 = common dso_local global i64 0, align 8
@NDCB0_LEN_OVRD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, %struct.marvell_nfc_op*)* @marvell_nfc_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @marvell_nfc_send_cmd(%struct.nand_chip* %0, %struct.marvell_nfc_op* %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.marvell_nfc_op*, align 8
  %5 = alloca %struct.marvell_nand_chip*, align 8
  %6 = alloca %struct.marvell_nfc*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store %struct.marvell_nfc_op* %1, %struct.marvell_nfc_op** %4, align 8
  %7 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %8 = call %struct.marvell_nand_chip* @to_marvell_nand(%struct.nand_chip* %7)
  store %struct.marvell_nand_chip* %8, %struct.marvell_nand_chip** %5, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %10 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.marvell_nfc* @to_marvell_nfc(i32 %11)
  store %struct.marvell_nfc* %12, %struct.marvell_nfc** %6, align 8
  %13 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %14 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %17 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NDCR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i64 @readl_relaxed(i64 %20)
  %22 = trunc i64 %21 to i32
  %23 = load %struct.marvell_nfc_op*, %struct.marvell_nfc_op** %4, align 8
  %24 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.marvell_nfc_op*, %struct.marvell_nfc_op** %4, align 8
  %29 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.marvell_nfc_op*, %struct.marvell_nfc_op** %4, align 8
  %34 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.marvell_nfc_op*, %struct.marvell_nfc_op** %4, align 8
  %39 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_dbg(i32 %15, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %27, i32 %32, i32 %37, i32 %42)
  %44 = load %struct.marvell_nand_chip*, %struct.marvell_nand_chip** %5, align 8
  %45 = call %struct.TYPE_4__* @to_nand_sel(%struct.marvell_nand_chip* %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.marvell_nfc_op*, %struct.marvell_nfc_op** %4, align 8
  %49 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %47, %52
  %54 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %55 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NDCB0, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel_relaxed(i32 %53, i64 %58)
  %60 = load %struct.marvell_nfc_op*, %struct.marvell_nfc_op** %4, align 8
  %61 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %66 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @NDCB0, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel_relaxed(i32 %64, i64 %69)
  %71 = load %struct.marvell_nfc_op*, %struct.marvell_nfc_op** %4, align 8
  %72 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %77 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @NDCB0, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i32 %75, i64 %80)
  %82 = load %struct.marvell_nfc_op*, %struct.marvell_nfc_op** %4, align 8
  %83 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @NDCB0_LEN_OVRD, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %2
  %91 = load %struct.marvell_nfc_op*, %struct.marvell_nfc_op** %4, align 8
  %92 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @NDCB0_ADDR_GET_NUM_CYC(i32 %95)
  %97 = icmp sge i32 %96, 6
  br i1 %97, label %98, label %122

98:                                               ; preds = %90, %2
  %99 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %100 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %99, i32 0, i32 1
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i32 @WARN_ON_ONCE(i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %121, label %109

109:                                              ; preds = %98
  %110 = load %struct.marvell_nfc_op*, %struct.marvell_nfc_op** %4, align 8
  %111 = getelementptr inbounds %struct.marvell_nfc_op, %struct.marvell_nfc_op* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %116 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @NDCB0, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @writel(i32 %114, i64 %119)
  br label %121

121:                                              ; preds = %109, %98
  br label %122

122:                                              ; preds = %121, %90
  ret void
}

declare dso_local %struct.marvell_nand_chip* @to_marvell_nand(%struct.nand_chip*) #1

declare dso_local %struct.marvell_nfc* @to_marvell_nfc(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local %struct.TYPE_4__* @to_nand_sel(%struct.marvell_nand_chip*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @NDCB0_ADDR_GET_NUM_CYC(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
