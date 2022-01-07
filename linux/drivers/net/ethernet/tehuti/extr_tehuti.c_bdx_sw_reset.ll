; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_sw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_sw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdx_priv = type { i32 }

@ENTER = common dso_local global i32 0, align 4
@regGMAC_RXF_A = common dso_local global i32 0, align 4
@regDIS_PORT = common dso_local global i32 0, align 4
@regDIS_QU = common dso_local global i32 0, align 4
@regRST_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"SW reset timeout. continuing anyway\0A\00", align 1
@regRDINTCM0 = common dso_local global i32 0, align 4
@regTDINTCM0 = common dso_local global i32 0, align 4
@regIMR = common dso_local global i32 0, align 4
@regISR = common dso_local global i32 0, align 4
@regRST_QU = common dso_local global i32 0, align 4
@regTXD_WPTR_0 = common dso_local global i32 0, align 4
@regTXF_RPTR_3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%x = %x\0A\00", align 1
@TXF_WPTR_WR_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bdx_priv*)* @bdx_sw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdx_sw_reset(%struct.bdx_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bdx_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.bdx_priv* %0, %struct.bdx_priv** %3, align 8
  %5 = load i32, i32* @ENTER, align 4
  %6 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %7 = load i32, i32* @regGMAC_RXF_A, align 4
  %8 = call i32 @WRITE_REG(%struct.bdx_priv* %6, i32 %7, i32 0)
  %9 = call i32 @mdelay(i32 100)
  %10 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %11 = load i32, i32* @regDIS_PORT, align 4
  %12 = call i32 @WRITE_REG(%struct.bdx_priv* %10, i32 %11, i32 1)
  %13 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %14 = load i32, i32* @regDIS_QU, align 4
  %15 = call i32 @WRITE_REG(%struct.bdx_priv* %13, i32 %14, i32 1)
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %28, %1
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 50
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %21 = load i32, i32* @regRST_PORT, align 4
  %22 = call i32 @READ_REG(%struct.bdx_priv* %20, i32 %21)
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %31

26:                                               ; preds = %19
  %27 = call i32 @mdelay(i32 10)
  br label %28

28:                                               ; preds = %26
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %16

31:                                               ; preds = %25, %16
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 50
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %36 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @netdev_err(i32 %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %34, %31
  %40 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %41 = load i32, i32* @regRDINTCM0, align 4
  %42 = call i32 @WRITE_REG(%struct.bdx_priv* %40, i32 %41, i32 0)
  %43 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %44 = load i32, i32* @regTDINTCM0, align 4
  %45 = call i32 @WRITE_REG(%struct.bdx_priv* %43, i32 %44, i32 0)
  %46 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %47 = load i32, i32* @regIMR, align 4
  %48 = call i32 @WRITE_REG(%struct.bdx_priv* %46, i32 %47, i32 0)
  %49 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %50 = load i32, i32* @regISR, align 4
  %51 = call i32 @READ_REG(%struct.bdx_priv* %49, i32 %50)
  %52 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %53 = load i32, i32* @regRST_QU, align 4
  %54 = call i32 @WRITE_REG(%struct.bdx_priv* %52, i32 %53, i32 1)
  %55 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %56 = load i32, i32* @regRST_PORT, align 4
  %57 = call i32 @WRITE_REG(%struct.bdx_priv* %55, i32 %56, i32 1)
  %58 = load i32, i32* @regTXD_WPTR_0, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %71, %39
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @regTXF_RPTR_3, align 4
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @READ_REG(%struct.bdx_priv* %65, i32 %66)
  %68 = load i32, i32* @TXF_WPTR_WR_PTR, align 4
  %69 = and i32 %67, %68
  %70 = call i32 @DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %69)
  br label %71

71:                                               ; preds = %63
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 16
  store i32 %73, i32* %4, align 4
  br label %59

74:                                               ; preds = %59
  %75 = load i32, i32* @regTXD_WPTR_0, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %84, %74
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @regTXF_RPTR_3, align 4
  %79 = icmp sle i32 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @WRITE_REG(%struct.bdx_priv* %81, i32 %82, i32 0)
  br label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 16
  store i32 %86, i32* %4, align 4
  br label %76

87:                                               ; preds = %76
  %88 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %89 = load i32, i32* @regDIS_PORT, align 4
  %90 = call i32 @WRITE_REG(%struct.bdx_priv* %88, i32 %89, i32 0)
  %91 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %92 = load i32, i32* @regDIS_QU, align 4
  %93 = call i32 @WRITE_REG(%struct.bdx_priv* %91, i32 %92, i32 0)
  %94 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %95 = load i32, i32* @regRST_QU, align 4
  %96 = call i32 @WRITE_REG(%struct.bdx_priv* %94, i32 %95, i32 0)
  %97 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %98 = load i32, i32* @regRST_PORT, align 4
  %99 = call i32 @WRITE_REG(%struct.bdx_priv* %97, i32 %98, i32 0)
  %100 = load i32, i32* @regTXD_WPTR_0, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %113, %87
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @regTXF_RPTR_3, align 4
  %104 = icmp sle i32 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = load i32, i32* %4, align 4
  %107 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @READ_REG(%struct.bdx_priv* %107, i32 %108)
  %110 = load i32, i32* @TXF_WPTR_WR_PTR, align 4
  %111 = and i32 %109, %110
  %112 = call i32 @DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %111)
  br label %113

113:                                              ; preds = %105
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %114, 16
  store i32 %115, i32* %4, align 4
  br label %101

116:                                              ; preds = %101
  %117 = call i32 @RET(i32 0)
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @WRITE_REG(%struct.bdx_priv*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @READ_REG(%struct.bdx_priv*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

declare dso_local i32 @RET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
