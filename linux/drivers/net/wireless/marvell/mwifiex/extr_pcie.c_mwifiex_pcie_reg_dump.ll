; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_reg_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_reg_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.pcie_service_card* }
%struct.pcie_service_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mwifiex_pcie_card_reg* }
%struct.mwifiex_pcie_card_reg = type { i32 }

@PCIE_SCRATCH_12_REG = common dso_local global i32 0, align 4
@PCIE_SCRATCH_14_REG = common dso_local global i32 0, align 4
@PCIE_SCRATCH_15_REG = common dso_local global i32 0, align 4
@MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"PCIE register dump start\0A\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to read firmware status\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"pcie scratch register:\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"reg:0x%x, value=0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"PCIE register dump end\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*, i8*)* @mwifiex_pcie_reg_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_pcie_reg_dump(%struct.mwifiex_adapter* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_adapter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pcie_service_card*, align 8
  %12 = alloca %struct.mwifiex_pcie_card_reg*, align 8
  %13 = alloca [3 x i32], align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %6, align 8
  %15 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %15, i32 0, i32 0
  %17 = load %struct.pcie_service_card*, %struct.pcie_service_card** %16, align 8
  store %struct.pcie_service_card* %17, %struct.pcie_service_card** %11, align 8
  %18 = load %struct.pcie_service_card*, %struct.pcie_service_card** %11, align 8
  %19 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %20, align 8
  store %struct.mwifiex_pcie_card_reg* %21, %struct.mwifiex_pcie_card_reg** %12, align 8
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %23 = load i32, i32* @PCIE_SCRATCH_12_REG, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %22, i64 1
  %25 = load i32, i32* @PCIE_SCRATCH_14_REG, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds i32, i32* %24, i64 1
  %27 = load i32, i32* @PCIE_SCRATCH_15_REG, align 4
  store i32 %27, i32* %26, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %95

31:                                               ; preds = %2
  %32 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %33 = load i32, i32* @MSG, align 4
  %34 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %32, i32 %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %36 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %12, align 8
  %37 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @mwifiex_read_reg(%struct.mwifiex_adapter* %35, i32 %38, i32* %10)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %43 = load i32, i32* @ERROR, align 4
  %44 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %42, i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %95

45:                                               ; preds = %31
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  store i8* %46, i8** %8, align 8
  %47 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %48 = load i32, i32* @MSG, align 4
  %49 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %47, i32 %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %72, %45
  %51 = load i32, i32* %9, align 4
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %53 = call i32 @ARRAY_SIZE(i32* %52)
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %50
  %56 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @mwifiex_read_reg(%struct.mwifiex_adapter* %56, i32 %60, i32* %10)
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 (i8*, i8*, ...) @sprintf(i8* %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i8*, i8** %8, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8* %71, i8** %8, align 8
  br label %72

72:                                               ; preds = %55
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %50

75:                                               ; preds = %50
  %76 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %77 = load i32, i32* @MSG, align 4
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %79 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %76, i32 %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %78)
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %82 = call i32 (i8*, i8*, ...) @sprintf(i8* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %81)
  %83 = load i8*, i8** %6, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %6, align 8
  %86 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %87 = load i32, i32* @MSG, align 4
  %88 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %86, i32 %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %89 = load i8*, i8** %6, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = ptrtoint i8* %89 to i64
  %92 = ptrtoint i8* %90 to i64
  %93 = sub i64 %91, %92
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %75, %41, %30
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i64 @mwifiex_read_reg(%struct.mwifiex_adapter*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
