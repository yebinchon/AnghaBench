; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_set_fifo_bw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_set_fifo_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_priv = type { i32, i32*, i32, %struct.cpsw_common* }
%struct.cpsw_common = type { %struct.cpsw_slave* }
%struct.cpsw_slave = type { i32 }

@SEND_PERCENT = common dso_local global i32 0, align 4
@CPSW_FIFO_SHAPERS_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Prev FIFO%d is shaped\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Upper FIFO%d is not shaped\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CPSW_PCT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"set FIFO%d bw = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Bandwidth doesn't fit in tc configuration\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpsw_priv*, i32, i32)* @cpsw_set_fifo_bw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_set_fifo_bw(%struct.cpsw_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpsw_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpsw_common*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cpsw_slave*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cpsw_priv* %0, %struct.cpsw_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.cpsw_priv*, %struct.cpsw_priv** %5, align 8
  %16 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %15, i32 0, i32 3
  %17 = load %struct.cpsw_common*, %struct.cpsw_common** %16, align 8
  store %struct.cpsw_common* %17, %struct.cpsw_common** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.cpsw_priv*, %struct.cpsw_priv** %5, align 8
  %20 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %21, 1000
  %23 = icmp sgt i32 %18, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %164

25:                                               ; preds = %3
  %26 = load %struct.cpsw_common*, %struct.cpsw_common** %8, align 8
  %27 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %26, i32 0, i32 0
  %28 = load %struct.cpsw_slave*, %struct.cpsw_slave** %27, align 8
  %29 = load %struct.cpsw_common*, %struct.cpsw_common** %8, align 8
  %30 = load %struct.cpsw_priv*, %struct.cpsw_priv** %5, align 8
  %31 = call i64 @cpsw_slave_index(%struct.cpsw_common* %29, %struct.cpsw_priv* %30)
  %32 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %28, i64 %31
  store %struct.cpsw_slave* %32, %struct.cpsw_slave** %12, align 8
  %33 = load %struct.cpsw_slave*, %struct.cpsw_slave** %12, align 8
  %34 = load i32, i32* @SEND_PERCENT, align 4
  %35 = call i32 @slave_read(%struct.cpsw_slave* %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* @CPSW_FIFO_SHAPERS_NUM, align 4
  store i32 %36, i32* %14, align 4
  br label %37

37:                                               ; preds = %134, %25
  %38 = load i32, i32* %14, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %137

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %63, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = load %struct.cpsw_priv*, %struct.cpsw_priv** %5, align 8
  %49 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %47, %43
  br label %134

57:                                               ; preds = %47
  %58 = load %struct.cpsw_priv*, %struct.cpsw_priv** %5, align 8
  %59 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %134

63:                                               ; preds = %40
  %64 = load %struct.cpsw_priv*, %struct.cpsw_priv** %5, align 8
  %65 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %84, label %72

72:                                               ; preds = %63
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = load %struct.cpsw_priv*, %struct.cpsw_priv** %5, align 8
  %78 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %14, align 4
  %81 = call i32 (i32, i8*, ...) @dev_err(i32 %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %171

84:                                               ; preds = %72, %63
  %85 = load i32, i32* %14, align 4
  %86 = sub nsw i32 %85, 1
  %87 = mul nsw i32 %86, 8
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %116

91:                                               ; preds = %84
  %92 = load i32, i32* @CPSW_PCT_MASK, align 4
  %93 = load i32, i32* %11, align 4
  %94 = shl i32 %92, %93
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %10, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.cpsw_priv*, %struct.cpsw_priv** %5, align 8
  %100 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = mul nsw i32 %101, 10
  %103 = call i32 @DIV_ROUND_UP(i32 %98, i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %91
  store i32 1, i32* %9, align 4
  br label %107

107:                                              ; preds = %106, %91
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %11, align 4
  %110 = shl i32 %108, %109
  %111 = load i32, i32* %10, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %13, align 4
  br label %134

116:                                              ; preds = %84
  %117 = load %struct.cpsw_priv*, %struct.cpsw_priv** %5, align 8
  %118 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %116
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %11, align 4
  %128 = ashr i32 %126, %127
  %129 = load i32, i32* @CPSW_PCT_MASK, align 4
  %130 = and i32 %128, %129
  %131 = load i32, i32* %13, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %13, align 4
  br label %133

133:                                              ; preds = %125, %116
  br label %134

134:                                              ; preds = %133, %107, %57, %56
  %135 = load i32, i32* %14, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %14, align 4
  br label %37

137:                                              ; preds = %37
  %138 = load i32, i32* %13, align 4
  %139 = icmp sge i32 %138, 100
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  br label %164

141:                                              ; preds = %137
  %142 = load %struct.cpsw_slave*, %struct.cpsw_slave** %12, align 8
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* @SEND_PERCENT, align 4
  %145 = call i32 @slave_write(%struct.cpsw_slave* %142, i32 %143, i32 %144)
  %146 = load i32, i32* %7, align 4
  %147 = load %struct.cpsw_priv*, %struct.cpsw_priv** %5, align 8
  %148 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %146, i32* %152, align 4
  %153 = load %struct.cpsw_priv*, %struct.cpsw_priv** %5, align 8
  %154 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* %9, align 4
  %158 = load %struct.cpsw_priv*, %struct.cpsw_priv** %5, align 8
  %159 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = mul nsw i32 %157, %160
  %162 = call i32 @DIV_ROUND_CLOSEST(i32 %161, i32 100)
  %163 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %155, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %156, i32 %162)
  store i32 0, i32* %4, align 4
  br label %171

164:                                              ; preds = %140, %24
  %165 = load %struct.cpsw_priv*, %struct.cpsw_priv** %5, align 8
  %166 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i32 (i32, i8*, ...) @dev_err(i32 %167, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %164, %141, %76
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i64 @cpsw_slave_index(%struct.cpsw_common*, %struct.cpsw_priv*) #1

declare dso_local i32 @slave_read(%struct.cpsw_slave*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, ...) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @slave_write(%struct.cpsw_slave*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
