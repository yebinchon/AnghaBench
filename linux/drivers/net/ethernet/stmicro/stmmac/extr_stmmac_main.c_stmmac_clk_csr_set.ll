; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_clk_csr_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_clk_csr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32 }

@MAC_CSR_H_FRQ_MASK = common dso_local global i32 0, align 4
@CSR_F_35M = common dso_local global i32 0, align 4
@STMMAC_CSR_20_35M = common dso_local global i32 0, align 4
@CSR_F_60M = common dso_local global i32 0, align 4
@STMMAC_CSR_35_60M = common dso_local global i32 0, align 4
@CSR_F_100M = common dso_local global i32 0, align 4
@STMMAC_CSR_60_100M = common dso_local global i32 0, align 4
@CSR_F_150M = common dso_local global i32 0, align 4
@STMMAC_CSR_100_150M = common dso_local global i32 0, align 4
@CSR_F_250M = common dso_local global i32 0, align 4
@STMMAC_CSR_150_250M = common dso_local global i32 0, align 4
@CSR_F_300M = common dso_local global i32 0, align 4
@STMMAC_CSR_250_300M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmmac_priv*)* @stmmac_clk_csr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_clk_csr_set(%struct.stmmac_priv* %0) #0 {
  %2 = alloca %struct.stmmac_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %2, align 8
  %4 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %5 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @clk_get_rate(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %11 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @MAC_CSR_H_FRQ_MASK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %90, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @CSR_F_35M, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* @STMMAC_CSR_20_35M, align 4
  %22 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %23 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  br label %89

24:                                               ; preds = %16
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @CSR_F_35M, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @CSR_F_60M, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @STMMAC_CSR_35_60M, align 4
  %34 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %35 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %88

36:                                               ; preds = %28, %24
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @CSR_F_60M, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @CSR_F_100M, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* @STMMAC_CSR_60_100M, align 4
  %46 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %47 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %87

48:                                               ; preds = %40, %36
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @CSR_F_100M, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @CSR_F_150M, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* @STMMAC_CSR_100_150M, align 4
  %58 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %59 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %86

60:                                               ; preds = %52, %48
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @CSR_F_150M, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @CSR_F_250M, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* @STMMAC_CSR_150_250M, align 4
  %70 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %71 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %85

72:                                               ; preds = %64, %60
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @CSR_F_250M, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @CSR_F_300M, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* @STMMAC_CSR_250_300M, align 4
  %82 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %83 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %80, %76, %72
  br label %85

85:                                               ; preds = %84, %68
  br label %86

86:                                               ; preds = %85, %56
  br label %87

87:                                               ; preds = %86, %44
  br label %88

88:                                               ; preds = %87, %32
  br label %89

89:                                               ; preds = %88, %20
  br label %90

90:                                               ; preds = %89, %1
  %91 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %92 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %121

97:                                               ; preds = %90
  %98 = load i32, i32* %3, align 4
  %99 = icmp sgt i32 %98, 160000000
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %102 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %101, i32 0, i32 0
  store i32 3, i32* %102, align 8
  br label %120

103:                                              ; preds = %97
  %104 = load i32, i32* %3, align 4
  %105 = icmp sgt i32 %104, 80000000
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %108 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %107, i32 0, i32 0
  store i32 2, i32* %108, align 8
  br label %119

109:                                              ; preds = %103
  %110 = load i32, i32* %3, align 4
  %111 = icmp sgt i32 %110, 40000000
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %114 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  br label %118

115:                                              ; preds = %109
  %116 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %117 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %116, i32 0, i32 0
  store i32 0, i32* %117, align 8
  br label %118

118:                                              ; preds = %115, %112
  br label %119

119:                                              ; preds = %118, %106
  br label %120

120:                                              ; preds = %119, %100
  br label %121

121:                                              ; preds = %120, %90
  %122 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %123 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %122, i32 0, i32 1
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %166

128:                                              ; preds = %121
  %129 = load i32, i32* %3, align 4
  %130 = icmp sgt i32 %129, 400000000
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %133 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %132, i32 0, i32 0
  store i32 5, i32* %133, align 8
  br label %165

134:                                              ; preds = %128
  %135 = load i32, i32* %3, align 4
  %136 = icmp sgt i32 %135, 350000000
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %139 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %138, i32 0, i32 0
  store i32 4, i32* %139, align 8
  br label %164

140:                                              ; preds = %134
  %141 = load i32, i32* %3, align 4
  %142 = icmp sgt i32 %141, 300000000
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %145 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %144, i32 0, i32 0
  store i32 3, i32* %145, align 8
  br label %163

146:                                              ; preds = %140
  %147 = load i32, i32* %3, align 4
  %148 = icmp sgt i32 %147, 250000000
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %151 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %150, i32 0, i32 0
  store i32 2, i32* %151, align 8
  br label %162

152:                                              ; preds = %146
  %153 = load i32, i32* %3, align 4
  %154 = icmp sgt i32 %153, 150000000
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %157 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %156, i32 0, i32 0
  store i32 1, i32* %157, align 8
  br label %161

158:                                              ; preds = %152
  %159 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %160 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %159, i32 0, i32 0
  store i32 0, i32* %160, align 8
  br label %161

161:                                              ; preds = %158, %155
  br label %162

162:                                              ; preds = %161, %149
  br label %163

163:                                              ; preds = %162, %143
  br label %164

164:                                              ; preds = %163, %137
  br label %165

165:                                              ; preds = %164, %131
  br label %166

166:                                              ; preds = %165, %121
  ret void
}

declare dso_local i32 @clk_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
