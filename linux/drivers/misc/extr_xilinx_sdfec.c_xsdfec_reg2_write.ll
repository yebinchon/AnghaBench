; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_xilinx_sdfec.c_xsdfec_reg2_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_xilinx_sdfec.c_xsdfec_reg2_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsdfec_dev = type { i32 }

@XSDFEC_REG2_NLAYERS_MIN = common dso_local global i32 0, align 4
@XSDFEC_REG2_NLAYERS_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Nlayers is not in range\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@XSDFEC_REG2_NNMQC_MASK = common dso_local global i32 0, align 4
@XSDFEC_REG2_NMQC_LSB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"NMQC exceeds 11 bits\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Norm type is invalid\00", align 1
@XSDFEC_REG2_NORM_TYPE_LSB = common dso_local global i32 0, align 4
@XSDFEC_REG2_NORM_TYPE_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Special QC in invalid\00", align 1
@XSDFEC_REG2_SPEICAL_QC_LSB = common dso_local global i32 0, align 4
@XSDFEC_REG2_SPECIAL_QC_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"No final parity check invalid\00", align 1
@XSDFEC_REG2_NO_FINAL_PARITY_LSB = common dso_local global i32 0, align 4
@XSDFEC_REG2_NO_FINAL_PARITY_MASK = common dso_local global i32 0, align 4
@XSDFEC_REG2_MAX_SCHEDULE_MASK = common dso_local global i32 0, align 4
@XSDFEC_REG2_MAX_SCHEDULE_LSB = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Max Schedule exceeds 2 bits\00", align 1
@XSDFEC_LDPC_CODE_REG2_ADDR_BASE = common dso_local global i64 0, align 8
@XSDFEC_LDPC_REG_JUMP = common dso_local global i32 0, align 4
@XSDFEC_LDPC_CODE_REG2_ADDR_HIGH = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [40 x i8] c"Writing outside of LDPC reg2 space 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xsdfec_dev*, i32, i32, i32, i32, i32, i32, i32)* @xsdfec_reg2_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsdfec_reg2_write(%struct.xsdfec_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.xsdfec_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.xsdfec_dev* %0, %struct.xsdfec_dev** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @XSDFEC_REG2_NLAYERS_MIN, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @XSDFEC_REG2_NLAYERS_MAX, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22, %8
  %27 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %10, align 8
  %28 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, ...) @dev_dbg(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  br label %151

33:                                               ; preds = %22
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @XSDFEC_REG2_NNMQC_MASK, align 4
  %36 = load i32, i32* @XSDFEC_REG2_NMQC_LSB, align 4
  %37 = ashr i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = and i32 %34, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %10, align 8
  %43 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, ...) @dev_dbg(i32 %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %33
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @XSDFEC_REG2_NMQC_LSB, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* @XSDFEC_REG2_NNMQC_MASK, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %10, align 8
  %56 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, ...) @dev_dbg(i32 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %54, %46
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @XSDFEC_REG2_NORM_TYPE_LSB, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* @XSDFEC_REG2_NORM_TYPE_MASK, align 4
  %64 = and i32 %62, %63
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %10, align 8
  %69 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32, i8*, ...) @dev_dbg(i32 %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %67, %59
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* @XSDFEC_REG2_SPEICAL_QC_LSB, align 4
  %75 = shl i32 %73, %74
  %76 = load i32, i32* @XSDFEC_REG2_SPECIAL_QC_MASK, align 4
  %77 = and i32 %75, %76
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %10, align 8
  %82 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32, i8*, ...) @dev_dbg(i32 %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %85

85:                                               ; preds = %80, %72
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* @XSDFEC_REG2_NO_FINAL_PARITY_LSB, align 4
  %88 = shl i32 %86, %87
  %89 = load i32, i32* @XSDFEC_REG2_NO_FINAL_PARITY_MASK, align 4
  %90 = and i32 %88, %89
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* @XSDFEC_REG2_MAX_SCHEDULE_MASK, align 4
  %93 = load i32, i32* @XSDFEC_REG2_MAX_SCHEDULE_LSB, align 4
  %94 = ashr i32 %92, %93
  %95 = xor i32 %94, -1
  %96 = and i32 %91, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %85
  %99 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %10, align 8
  %100 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32, i8*, ...) @dev_dbg(i32 %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %103

103:                                              ; preds = %98, %85
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* @XSDFEC_REG2_MAX_SCHEDULE_LSB, align 4
  %106 = shl i32 %104, %105
  %107 = load i32, i32* @XSDFEC_REG2_MAX_SCHEDULE_MASK, align 4
  %108 = and i32 %106, %107
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %15, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* %14, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* %13, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* %12, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* %11, align 4
  %119 = or i32 %117, %118
  store i32 %119, i32* %18, align 4
  %120 = load i64, i64* @XSDFEC_LDPC_CODE_REG2_ADDR_BASE, align 8
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* @XSDFEC_LDPC_REG_JUMP, align 4
  %123 = mul nsw i32 %121, %122
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %120, %124
  %126 = load i64, i64* @XSDFEC_LDPC_CODE_REG2_ADDR_HIGH, align 8
  %127 = icmp sgt i64 %125, %126
  br i1 %127, label %128, label %141

128:                                              ; preds = %103
  %129 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %10, align 8
  %130 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i64, i64* @XSDFEC_LDPC_CODE_REG2_ADDR_BASE, align 8
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* @XSDFEC_LDPC_REG_JUMP, align 4
  %135 = mul nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %132, %136
  %138 = call i32 (i32, i8*, ...) @dev_dbg(i32 %131, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i64 %137)
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %9, align 4
  br label %151

141:                                              ; preds = %103
  %142 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %10, align 8
  %143 = load i64, i64* @XSDFEC_LDPC_CODE_REG2_ADDR_BASE, align 8
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* @XSDFEC_LDPC_REG_JUMP, align 4
  %146 = mul nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %143, %147
  %149 = load i32, i32* %18, align 4
  %150 = call i32 @xsdfec_regwrite(%struct.xsdfec_dev* %142, i64 %148, i32 %149)
  store i32 0, i32* %9, align 4
  br label %151

151:                                              ; preds = %141, %128, %26
  %152 = load i32, i32* %9, align 4
  ret i32 %152
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @xsdfec_regwrite(%struct.xsdfec_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
