; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et1310_handle_macstat_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et1310_handle_macstat_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@COUNTER_WRAP_16_BIT = common dso_local global i64 0, align 8
@COUNTER_WRAP_12_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et131x_adapter*)* @et1310_handle_macstat_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et1310_handle_macstat_interrupt(%struct.et131x_adapter* %0) #0 {
  %2 = alloca %struct.et131x_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %2, align 8
  %5 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %5, i32 0, i32 1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = call i32 @readl(i32* %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i32 @readl(i32* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = call i32 @writel(i32 %17, i32* %22)
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i32 @writel(i32 %24, i32* %29)
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, 16384
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %1
  %35 = load i64, i64* @COUNTER_WRAP_16_BIT, align 8
  %36 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 13
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %35
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 4
  br label %43

43:                                               ; preds = %34, %1
  %44 = load i32, i32* %3, align 4
  %45 = and i32 %44, 256
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load i64, i64* @COUNTER_WRAP_12_BIT, align 8
  %49 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %50 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 12
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %48
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 8
  br label %56

56:                                               ; preds = %47, %43
  %57 = load i32, i32* %3, align 4
  %58 = and i32 %57, 128
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i64, i64* @COUNTER_WRAP_16_BIT, align 8
  %62 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 11
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %61
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 4
  br label %69

69:                                               ; preds = %60, %56
  %70 = load i32, i32* %3, align 4
  %71 = and i32 %70, 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load i64, i64* @COUNTER_WRAP_16_BIT, align 8
  %75 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %76 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 10
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %74
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %77, align 8
  br label %82

82:                                               ; preds = %73, %69
  %83 = load i32, i32* %3, align 4
  %84 = and i32 %83, 64
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %82
  %87 = load i64, i64* @COUNTER_WRAP_16_BIT, align 8
  %88 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %89 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 9
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %87
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 4
  br label %95

95:                                               ; preds = %86, %82
  %96 = load i32, i32* %3, align 4
  %97 = and i32 %96, 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %95
  %100 = load i64, i64* @COUNTER_WRAP_16_BIT, align 8
  %101 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %102 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %100
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %103, align 8
  br label %108

108:                                              ; preds = %99, %95
  %109 = load i32, i32* %3, align 4
  %110 = and i32 %109, 1
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = load i64, i64* @COUNTER_WRAP_16_BIT, align 8
  %114 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %115 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %113
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %116, align 4
  br label %121

121:                                              ; preds = %112, %108
  %122 = load i32, i32* %4, align 4
  %123 = and i32 %122, 65536
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %121
  %126 = load i64, i64* @COUNTER_WRAP_12_BIT, align 8
  %127 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %128 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %131, %126
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %129, align 8
  br label %134

134:                                              ; preds = %125, %121
  %135 = load i32, i32* %4, align 4
  %136 = and i32 %135, 32768
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %134
  %139 = load i64, i64* @COUNTER_WRAP_12_BIT, align 8
  %140 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %141 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, %139
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %142, align 4
  br label %147

147:                                              ; preds = %138, %134
  %148 = load i32, i32* %4, align 4
  %149 = and i32 %148, 64
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %147
  %152 = load i64, i64* @COUNTER_WRAP_12_BIT, align 8
  %153 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %154 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = add nsw i64 %157, %152
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %155, align 8
  br label %160

160:                                              ; preds = %151, %147
  %161 = load i32, i32* %4, align 4
  %162 = and i32 %161, 256
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %160
  %165 = load i64, i64* @COUNTER_WRAP_12_BIT, align 8
  %166 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %167 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  %171 = add nsw i64 %170, %165
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %168, align 4
  br label %173

173:                                              ; preds = %164, %160
  %174 = load i32, i32* %4, align 4
  %175 = and i32 %174, 32
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %173
  %178 = load i64, i64* @COUNTER_WRAP_12_BIT, align 8
  %179 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %180 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = add nsw i64 %183, %178
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %181, align 8
  br label %186

186:                                              ; preds = %177, %173
  %187 = load i32, i32* %4, align 4
  %188 = and i32 %187, 16
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %186
  %191 = load i64, i64* @COUNTER_WRAP_12_BIT, align 8
  %192 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %193 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = add nsw i64 %196, %191
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %194, align 4
  br label %199

199:                                              ; preds = %190, %186
  %200 = load i32, i32* %4, align 4
  %201 = and i32 %200, 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %212

203:                                              ; preds = %199
  %204 = load i64, i64* @COUNTER_WRAP_12_BIT, align 8
  %205 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %206 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = add nsw i64 %209, %204
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %207, align 8
  br label %212

212:                                              ; preds = %203, %199
  ret void
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
