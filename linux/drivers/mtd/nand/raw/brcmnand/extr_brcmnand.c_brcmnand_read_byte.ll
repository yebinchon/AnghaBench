; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_read_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.brcmnand_host = type { i32, i32, i32, %struct.brcmnand_controller* }
%struct.brcmnand_controller = type { i32*, i32 }

@BRCMNAND_ID = common dso_local global i32 0, align 4
@BRCMNAND_ID_EXT = common dso_local global i32 0, align 4
@BRCMNAND_INTFC_STATUS = common dso_local global i32 0, align 4
@INTFC_FLASH_STATUS = common dso_local global i32 0, align 4
@wp_on = common dso_local global i32 0, align 4
@NAND_STATUS_WP = common dso_local global i32 0, align 4
@FC_BYTES = common dso_local global i32 0, align 4
@ONFI_SUBFEATURE_PARAM_LEN = common dso_local global i64 0, align 8
@LL_OP_RD = common dso_local global i32 0, align 4
@BRCMNAND_LL_RDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"read byte = 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @brcmnand_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmnand_read_byte(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca %struct.brcmnand_host*, align 8
  %4 = alloca %struct.brcmnand_controller*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %10 = call %struct.brcmnand_host* @nand_get_controller_data(%struct.nand_chip* %9)
  store %struct.brcmnand_host* %10, %struct.brcmnand_host** %3, align 8
  %11 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %12 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %11, i32 0, i32 3
  %13 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %12, align 8
  store %struct.brcmnand_controller* %13, %struct.brcmnand_controller** %4, align 8
  store i32 0, i32* %5, align 4
  %14 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %15 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %125 [
    i32 131, label %17
    i32 130, label %49
    i32 128, label %55
    i32 132, label %68
    i32 129, label %68
    i32 133, label %99
  ]

17:                                               ; preds = %1
  %18 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %19 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %4, align 8
  %24 = load i32, i32* @BRCMNAND_ID, align 4
  %25 = call i32 @brcmnand_read_reg(%struct.brcmnand_controller* %23, i32 %24)
  %26 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %27 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 3
  %30 = sub nsw i32 24, %29
  %31 = ashr i32 %25, %30
  store i32 %31, i32* %5, align 4
  br label %48

32:                                               ; preds = %17
  %33 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %34 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 8
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %4, align 8
  %39 = load i32, i32* @BRCMNAND_ID_EXT, align 4
  %40 = call i32 @brcmnand_read_reg(%struct.brcmnand_controller* %38, i32 %39)
  %41 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %42 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 3
  %45 = sub nsw i32 56, %44
  %46 = ashr i32 %40, %45
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %37, %32
  br label %48

48:                                               ; preds = %47, %22
  br label %125

49:                                               ; preds = %1
  %50 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %4, align 8
  %51 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %52 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @oob_reg_read(%struct.brcmnand_controller* %50, i32 %53)
  store i32 %54, i32* %5, align 4
  br label %125

55:                                               ; preds = %1
  %56 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %4, align 8
  %57 = load i32, i32* @BRCMNAND_INTFC_STATUS, align 4
  %58 = call i32 @brcmnand_read_reg(%struct.brcmnand_controller* %56, i32 %57)
  %59 = load i32, i32* @INTFC_FLASH_STATUS, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* @wp_on, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load i32, i32* @NAND_STATUS_WP, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %63, %55
  br label %125

68:                                               ; preds = %1, %1
  %69 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %70 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %73 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %71, %74
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @FC_BYTES, align 4
  %78 = sub nsw i32 %77, 1
  %79 = and i32 %76, %78
  store i32 %79, i32* %7, align 4
  %80 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %81 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %68
  %85 = load i32, i32* %7, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @nand_change_read_column_op(%struct.nand_chip* %88, i32 %89, i32* null, i32 0, i32 0)
  br label %91

91:                                               ; preds = %87, %84, %68
  %92 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %4, align 8
  %93 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %5, align 4
  br label %125

99:                                               ; preds = %1
  %100 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %101 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* @ONFI_SUBFEATURE_PARAM_LEN, align 8
  %105 = icmp sge i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  store i32 0, i32* %5, align 4
  br label %124

107:                                              ; preds = %99
  %108 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %109 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* @ONFI_SUBFEATURE_PARAM_LEN, align 8
  %113 = sub nsw i64 %112, 1
  %114 = icmp eq i64 %111, %113
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %8, align 4
  %116 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %117 = load i32, i32* @LL_OP_RD, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @brcmnand_low_level_op(%struct.brcmnand_host* %116, i32 %117, i32 0, i32 %118)
  %120 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %4, align 8
  %121 = load i32, i32* @BRCMNAND_LL_RDATA, align 4
  %122 = call i32 @brcmnand_read_reg(%struct.brcmnand_controller* %120, i32 %121)
  %123 = and i32 %122, 255
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %107, %106
  br label %125

125:                                              ; preds = %124, %1, %91, %67, %49, %48
  %126 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %4, align 8
  %127 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @dev_dbg(i32 %128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %129)
  %131 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %132 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local %struct.brcmnand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @brcmnand_read_reg(%struct.brcmnand_controller*, i32) #1

declare dso_local i32 @oob_reg_read(%struct.brcmnand_controller*, i32) #1

declare dso_local i32 @nand_change_read_column_op(%struct.nand_chip*, i32, i32*, i32, i32) #1

declare dso_local i32 @brcmnand_low_level_op(%struct.brcmnand_host*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
