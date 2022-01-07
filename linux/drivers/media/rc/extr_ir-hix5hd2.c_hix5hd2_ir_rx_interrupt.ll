; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-hix5hd2.c_hix5hd2_ir_rx_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-hix5hd2.c_hix5hd2_ir_rx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hix5hd2_ir_priv = type { i32, i64, i32 }
%struct.ir_raw_event = type { i32, i8* }

@IR_INTS = common dso_local global i64 0, align 8
@INTMS_OVERFLOW = common dso_local global i32 0, align 4
@IR_DATAH = common dso_local global i64 0, align 8
@IR_DATAL = common dso_local global i64 0, align 8
@INT_CLR_OVERFLOW = common dso_local global i32 0, align 4
@IR_INTC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"overflow, level=%d\0A\00", align 1
@IR_CFG_INT_THRESHOLD = common dso_local global i32 0, align 4
@INTMS_SYMBRCV = common dso_local global i32 0, align 4
@INTMS_TIMEOUT = common dso_local global i32 0, align 4
@IR_CFG_SYMBOL_MAXWIDTH = common dso_local global i32 0, align 4
@INT_CLR_RCV = common dso_local global i32 0, align 4
@INT_CLR_TIMEOUT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hix5hd2_ir_rx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hix5hd2_ir_rx_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hix5hd2_ir_priv*, align 8
  %13 = alloca %struct.ir_raw_event, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.hix5hd2_ir_priv*
  store %struct.hix5hd2_ir_priv* %15, %struct.hix5hd2_ir_priv** %12, align 8
  %16 = load %struct.hix5hd2_ir_priv*, %struct.hix5hd2_ir_priv** %12, align 8
  %17 = getelementptr inbounds %struct.hix5hd2_ir_priv, %struct.hix5hd2_ir_priv* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IR_INTS, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl_relaxed(i64 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @INTMS_OVERFLOW, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %64

26:                                               ; preds = %2
  %27 = load %struct.hix5hd2_ir_priv*, %struct.hix5hd2_ir_priv** %12, align 8
  %28 = getelementptr inbounds %struct.hix5hd2_ir_priv, %struct.hix5hd2_ir_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ir_raw_event_reset(i32 %29)
  %31 = load %struct.hix5hd2_ir_priv*, %struct.hix5hd2_ir_priv** %12, align 8
  %32 = getelementptr inbounds %struct.hix5hd2_ir_priv, %struct.hix5hd2_ir_priv* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IR_DATAH, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readl_relaxed(i64 %35)
  store i32 %36, i32* %5, align 4
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %48, %26
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load %struct.hix5hd2_ir_priv*, %struct.hix5hd2_ir_priv** %12, align 8
  %43 = getelementptr inbounds %struct.hix5hd2_ir_priv, %struct.hix5hd2_ir_priv* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IR_DATAL, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @readl_relaxed(i64 %46)
  br label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %37

51:                                               ; preds = %37
  %52 = load i32, i32* @INT_CLR_OVERFLOW, align 4
  %53 = load %struct.hix5hd2_ir_priv*, %struct.hix5hd2_ir_priv** %12, align 8
  %54 = getelementptr inbounds %struct.hix5hd2_ir_priv, %struct.hix5hd2_ir_priv* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @IR_INTC, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel_relaxed(i32 %52, i64 %57)
  %59 = load %struct.hix5hd2_ir_priv*, %struct.hix5hd2_ir_priv** %12, align 8
  %60 = getelementptr inbounds %struct.hix5hd2_ir_priv, %struct.hix5hd2_ir_priv* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @IR_CFG_INT_THRESHOLD, align 4
  %63 = call i32 @dev_info(i32 %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %51, %2
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @INTMS_SYMBRCV, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @INTMS_TIMEOUT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %160

74:                                               ; preds = %69, %64
  %75 = bitcast %struct.ir_raw_event* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %75, i8 0, i64 16, i1 false)
  %76 = load %struct.hix5hd2_ir_priv*, %struct.hix5hd2_ir_priv** %12, align 8
  %77 = getelementptr inbounds %struct.hix5hd2_ir_priv, %struct.hix5hd2_ir_priv* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @IR_DATAH, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @readl_relaxed(i64 %80)
  store i32 %81, i32* %5, align 4
  store i32 0, i32* %11, align 4
  br label %82

82:                                               ; preds = %130, %74
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %133

86:                                               ; preds = %82
  %87 = load %struct.hix5hd2_ir_priv*, %struct.hix5hd2_ir_priv** %12, align 8
  %88 = getelementptr inbounds %struct.hix5hd2_ir_priv, %struct.hix5hd2_ir_priv* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @IR_DATAL, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @readl_relaxed(i64 %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = and i32 %93, 65535
  %95 = mul nsw i32 %94, 10
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %6, align 4
  %97 = ashr i32 %96, 16
  %98 = and i32 %97, 65535
  %99 = mul nsw i32 %98, 10
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %100, %101
  %103 = sdiv i32 %102, 10
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i8* @US_TO_NS(i32 %104)
  %106 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %13, i32 0, i32 1
  store i8* %105, i8** %106, align 8
  %107 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %13, i32 0, i32 0
  store i32 1, i32* %107, align 8
  %108 = load %struct.hix5hd2_ir_priv*, %struct.hix5hd2_ir_priv** %12, align 8
  %109 = getelementptr inbounds %struct.hix5hd2_ir_priv, %struct.hix5hd2_ir_priv* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @ir_raw_event_store(i32 %110, %struct.ir_raw_event* %13)
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @IR_CFG_SYMBOL_MAXWIDTH, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %86
  %116 = load i32, i32* %9, align 4
  %117 = call i8* @US_TO_NS(i32 %116)
  %118 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %13, i32 0, i32 1
  store i8* %117, i8** %118, align 8
  %119 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %13, i32 0, i32 0
  store i32 0, i32* %119, align 8
  %120 = load %struct.hix5hd2_ir_priv*, %struct.hix5hd2_ir_priv** %12, align 8
  %121 = getelementptr inbounds %struct.hix5hd2_ir_priv, %struct.hix5hd2_ir_priv* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @ir_raw_event_store(i32 %122, %struct.ir_raw_event* %13)
  br label %129

124:                                              ; preds = %86
  %125 = load %struct.hix5hd2_ir_priv*, %struct.hix5hd2_ir_priv** %12, align 8
  %126 = getelementptr inbounds %struct.hix5hd2_ir_priv, %struct.hix5hd2_ir_priv* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @ir_raw_event_set_idle(i32 %127, i32 1)
  br label %129

129:                                              ; preds = %124, %115
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %11, align 4
  br label %82

133:                                              ; preds = %82
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* @INTMS_SYMBRCV, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %133
  %139 = load i32, i32* @INT_CLR_RCV, align 4
  %140 = load %struct.hix5hd2_ir_priv*, %struct.hix5hd2_ir_priv** %12, align 8
  %141 = getelementptr inbounds %struct.hix5hd2_ir_priv, %struct.hix5hd2_ir_priv* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @IR_INTC, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @writel_relaxed(i32 %139, i64 %144)
  br label %146

146:                                              ; preds = %138, %133
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* @INTMS_TIMEOUT, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %146
  %152 = load i32, i32* @INT_CLR_TIMEOUT, align 4
  %153 = load %struct.hix5hd2_ir_priv*, %struct.hix5hd2_ir_priv** %12, align 8
  %154 = getelementptr inbounds %struct.hix5hd2_ir_priv, %struct.hix5hd2_ir_priv* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @IR_INTC, align 8
  %157 = add nsw i64 %155, %156
  %158 = call i32 @writel_relaxed(i32 %152, i64 %157)
  br label %159

159:                                              ; preds = %151, %146
  br label %160

160:                                              ; preds = %159, %69
  %161 = load %struct.hix5hd2_ir_priv*, %struct.hix5hd2_ir_priv** %12, align 8
  %162 = getelementptr inbounds %struct.hix5hd2_ir_priv, %struct.hix5hd2_ir_priv* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @ir_raw_event_handle(i32 %163)
  %165 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %165
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @ir_raw_event_reset(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @US_TO_NS(i32) #1

declare dso_local i32 @ir_raw_event_store(i32, %struct.ir_raw_event*) #1

declare dso_local i32 @ir_raw_event_set_idle(i32, i32) #1

declare dso_local i32 @ir_raw_event_handle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
