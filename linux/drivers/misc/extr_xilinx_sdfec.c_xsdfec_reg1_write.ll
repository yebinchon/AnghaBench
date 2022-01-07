; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_xilinx_sdfec.c_xsdfec_reg1_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_xilinx_sdfec.c_xsdfec_reg1_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsdfec_dev = type { i32 }

@XSDFEC_REG1_PSIZE_MIN = common dso_local global i32 0, align 4
@XSDFEC_REG1_PSIZE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Psize is not in range\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"No-packing bit register invalid\00", align 1
@XSDFEC_REG1_NO_PACKING_LSB = common dso_local global i32 0, align 4
@XSDFEC_REG1_NO_PACKING_MASK = common dso_local global i32 0, align 4
@XSDFEC_REG1_NM_MASK = common dso_local global i32 0, align 4
@XSDFEC_REG1_NM_LSB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"NM is beyond 10 bits\00", align 1
@XSDFEC_LDPC_CODE_REG1_ADDR_BASE = common dso_local global i64 0, align 8
@XSDFEC_LDPC_REG_JUMP = common dso_local global i32 0, align 4
@XSDFEC_LDPC_CODE_REG1_ADDR_HIGH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"Writing outside of LDPC reg1 space 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xsdfec_dev*, i32, i32, i32, i32)* @xsdfec_reg1_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsdfec_reg1_write(%struct.xsdfec_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xsdfec_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xsdfec_dev* %0, %struct.xsdfec_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @XSDFEC_REG1_PSIZE_MIN, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @XSDFEC_REG1_PSIZE_MAX, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16, %5
  %21 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %7, align 8
  %22 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i8*, ...) @dev_dbg(i32 %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %98

27:                                               ; preds = %16
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %7, align 8
  %35 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, ...) @dev_dbg(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %33, %30, %27
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @XSDFEC_REG1_NO_PACKING_LSB, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* @XSDFEC_REG1_NO_PACKING_MASK, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @XSDFEC_REG1_NM_MASK, align 4
  %46 = load i32, i32* @XSDFEC_REG1_NM_LSB, align 4
  %47 = ashr i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = and i32 %44, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %38
  %52 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %7, align 8
  %53 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, ...) @dev_dbg(i32 %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %51, %38
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @XSDFEC_REG1_NM_LSB, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* @XSDFEC_REG1_NM_MASK, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %12, align 4
  %67 = load i64, i64* @XSDFEC_LDPC_CODE_REG1_ADDR_BASE, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @XSDFEC_LDPC_REG_JUMP, align 4
  %70 = mul nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %67, %71
  %73 = load i64, i64* @XSDFEC_LDPC_CODE_REG1_ADDR_HIGH, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %56
  %76 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %7, align 8
  %77 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* @XSDFEC_LDPC_CODE_REG1_ADDR_BASE, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @XSDFEC_LDPC_REG_JUMP, align 4
  %82 = mul nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %79, %83
  %85 = call i32 (i32, i8*, ...) @dev_dbg(i32 %78, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %6, align 4
  br label %98

88:                                               ; preds = %56
  %89 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %7, align 8
  %90 = load i64, i64* @XSDFEC_LDPC_CODE_REG1_ADDR_BASE, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @XSDFEC_LDPC_REG_JUMP, align 4
  %93 = mul nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %90, %94
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @xsdfec_regwrite(%struct.xsdfec_dev* %89, i64 %95, i32 %96)
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %88, %75, %20
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @xsdfec_regwrite(%struct.xsdfec_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
