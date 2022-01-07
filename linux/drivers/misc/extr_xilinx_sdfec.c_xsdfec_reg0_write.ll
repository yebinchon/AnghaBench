; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_xilinx_sdfec.c_xsdfec_reg0_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_xilinx_sdfec.c_xsdfec_reg0_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsdfec_dev = type { i32 }

@XSDFEC_REG0_N_MIN = common dso_local global i32 0, align 4
@XSDFEC_REG0_N_MAX = common dso_local global i32 0, align 4
@XSDFEC_REG0_N_MUL_P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"N value is not in range\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@XSDFEC_REG0_N_LSB = common dso_local global i32 0, align 4
@XSDFEC_REG0_K_MIN = common dso_local global i32 0, align 4
@XSDFEC_REG0_K_MAX = common dso_local global i32 0, align 4
@XSDFEC_REG0_K_MUL_P = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"K value is not in range\00", align 1
@XSDFEC_REG0_K_LSB = common dso_local global i32 0, align 4
@XSDFEC_LDPC_CODE_REG0_ADDR_BASE = common dso_local global i64 0, align 8
@XSDFEC_LDPC_REG_JUMP = common dso_local global i32 0, align 4
@XSDFEC_LDPC_CODE_REG0_ADDR_HIGH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"Writing outside of LDPC reg0 space 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xsdfec_dev*, i32, i32, i32, i32)* @xsdfec_reg0_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsdfec_reg0_write(%struct.xsdfec_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %14 = load i32, i32* @XSDFEC_REG0_N_MIN, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %38, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @XSDFEC_REG0_N_MAX, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %38, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @XSDFEC_REG0_N_MUL_P, align 4
  %26 = load i32, i32* %10, align 4
  %27 = mul nsw i32 %25, %26
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %38, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %10, align 4
  %36 = srem i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33, %29, %23, %20, %16, %5
  %39 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %7, align 8
  %40 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i8*, ...) @dev_dbg(i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %112

45:                                               ; preds = %33
  %46 = load i32, i32* @XSDFEC_REG0_N_LSB, align 4
  %47 = load i32, i32* %8, align 4
  %48 = shl i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @XSDFEC_REG0_K_MIN, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %67, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @XSDFEC_REG0_K_MAX, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %67, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @XSDFEC_REG0_K_MUL_P, align 4
  %59 = load i32, i32* %10, align 4
  %60 = mul nsw i32 %58, %59
  %61 = icmp sgt i32 %57, %60
  br i1 %61, label %67, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = srem i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62, %56, %52, %45
  %68 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %7, align 8
  %69 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32, i8*, ...) @dev_dbg(i32 %70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %112

74:                                               ; preds = %62
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @XSDFEC_REG0_K_LSB, align 4
  %77 = shl i32 %75, %76
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %78, %79
  store i32 %80, i32* %12, align 4
  %81 = load i64, i64* @XSDFEC_LDPC_CODE_REG0_ADDR_BASE, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @XSDFEC_LDPC_REG_JUMP, align 4
  %84 = mul nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %81, %85
  %87 = load i64, i64* @XSDFEC_LDPC_CODE_REG0_ADDR_HIGH, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %74
  %90 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %7, align 8
  %91 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* @XSDFEC_LDPC_CODE_REG0_ADDR_BASE, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @XSDFEC_LDPC_REG_JUMP, align 4
  %96 = mul nsw i32 %94, %95
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %93, %97
  %99 = call i32 (i32, i8*, ...) @dev_dbg(i32 %92, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %6, align 4
  br label %112

102:                                              ; preds = %74
  %103 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %7, align 8
  %104 = load i64, i64* @XSDFEC_LDPC_CODE_REG0_ADDR_BASE, align 8
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @XSDFEC_LDPC_REG_JUMP, align 4
  %107 = mul nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %104, %108
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @xsdfec_regwrite(%struct.xsdfec_dev* %103, i64 %109, i32 %110)
  store i32 0, i32* %6, align 4
  br label %112

112:                                              ; preds = %102, %89, %67, %38
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @xsdfec_regwrite(%struct.xsdfec_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
