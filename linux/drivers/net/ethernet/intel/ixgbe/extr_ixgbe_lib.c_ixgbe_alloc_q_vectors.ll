; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_lib.c_ixgbe_alloc_q_vectors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_lib.c_ixgbe_alloc_q_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, i32, i32, i32, %struct.TYPE_6__**, %struct.TYPE_5__**, %struct.TYPE_4__** }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@IXGBE_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*)* @ixgbe_alloc_q_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_alloc_q_vectors(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  %17 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %4, align 4
  %20 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %6, align 4
  %26 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %29 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IXGBE_FLAG_MSIX_ENABLED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %1
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %40, %41
  %43 = icmp sge i32 %37, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %62, %44
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %45
  %49 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @ixgbe_alloc_q_vector(%struct.ixgbe_adapter* %49, i32 %50, i32 %51, i32 0, i32 0, i32 0, i32 0, i32 1, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %211

57:                                               ; preds = %48
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %45

65:                                               ; preds = %45
  br label %66

66:                                               ; preds = %65, %36
  br label %67

67:                                               ; preds = %117, %66
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %120

71:                                               ; preds = %67
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %11, align 4
  %75 = sub nsw i32 %73, %74
  %76 = call i32 @DIV_ROUND_UP(i32 %72, i32 %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %11, align 4
  %80 = sub nsw i32 %78, %79
  %81 = call i32 @DIV_ROUND_UP(i32 %77, i32 %80)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* %11, align 4
  %85 = sub nsw i32 %83, %84
  %86 = call i32 @DIV_ROUND_UP(i32 %82, i32 %85)
  store i32 %86, i32* %16, align 4
  %87 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @ixgbe_alloc_q_vector(%struct.ixgbe_adapter* %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %71
  br label %211

100:                                              ; preds = %71
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %5, align 4
  %103 = sub nsw i32 %102, %101
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %6, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %7, align 4
  %109 = sub nsw i32 %108, %107
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %10, align 4
  br label %117

117:                                              ; preds = %100
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %67

120:                                              ; preds = %67
  store i32 0, i32* %13, align 4
  br label %121

121:                                              ; preds = %147, %120
  %122 = load i32, i32* %13, align 4
  %123 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %124 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %150

127:                                              ; preds = %121
  %128 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %129 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %128, i32 0, i32 7
  %130 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %129, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %130, i64 %132
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = icmp ne %struct.TYPE_4__* %134, null
  br i1 %135, label %136, label %146

136:                                              ; preds = %127
  %137 = load i32, i32* %13, align 4
  %138 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %139 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %138, i32 0, i32 7
  %140 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %139, align 8
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %140, i64 %142
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  store i32 %137, i32* %145, align 4
  br label %146

146:                                              ; preds = %136, %127
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %13, align 4
  br label %121

150:                                              ; preds = %121
  store i32 0, i32* %13, align 4
  br label %151

151:                                              ; preds = %177, %150
  %152 = load i32, i32* %13, align 4
  %153 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %154 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %180

157:                                              ; preds = %151
  %158 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %159 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %158, i32 0, i32 6
  %160 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %159, align 8
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %160, i64 %162
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = icmp ne %struct.TYPE_5__* %164, null
  br i1 %165, label %166, label %176

166:                                              ; preds = %157
  %167 = load i32, i32* %13, align 4
  %168 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %169 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %168, i32 0, i32 6
  %170 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %169, align 8
  %171 = load i32, i32* %13, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %170, i64 %172
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  store i32 %167, i32* %175, align 4
  br label %176

176:                                              ; preds = %166, %157
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %13, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %13, align 4
  br label %151

180:                                              ; preds = %151
  store i32 0, i32* %13, align 4
  br label %181

181:                                              ; preds = %207, %180
  %182 = load i32, i32* %13, align 4
  %183 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %184 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = icmp slt i32 %182, %185
  br i1 %186, label %187, label %210

187:                                              ; preds = %181
  %188 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %189 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %188, i32 0, i32 5
  %190 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %189, align 8
  %191 = load i32, i32* %13, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %190, i64 %192
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = icmp ne %struct.TYPE_6__* %194, null
  br i1 %195, label %196, label %206

196:                                              ; preds = %187
  %197 = load i32, i32* %13, align 4
  %198 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %199 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %198, i32 0, i32 5
  %200 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %199, align 8
  %201 = load i32, i32* %13, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %200, i64 %202
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  store i32 %197, i32* %205, align 4
  br label %206

206:                                              ; preds = %196, %187
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %13, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %13, align 4
  br label %181

210:                                              ; preds = %181
  store i32 0, i32* %2, align 4
  br label %231

211:                                              ; preds = %99, %56
  %212 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %213 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %212, i32 0, i32 2
  store i32 0, i32* %213, align 8
  %214 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %215 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %214, i32 0, i32 3
  store i32 0, i32* %215, align 4
  %216 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %217 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %216, i32 0, i32 1
  store i32 0, i32* %217, align 4
  %218 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %219 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %218, i32 0, i32 0
  store i32 0, i32* %219, align 8
  br label %220

220:                                              ; preds = %224, %211
  %221 = load i32, i32* %11, align 4
  %222 = add nsw i32 %221, -1
  store i32 %222, i32* %11, align 4
  %223 = icmp ne i32 %221, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %220
  %225 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %226 = load i32, i32* %11, align 4
  %227 = call i32 @ixgbe_free_q_vector(%struct.ixgbe_adapter* %225, i32 %226)
  br label %220

228:                                              ; preds = %220
  %229 = load i32, i32* @ENOMEM, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %2, align 4
  br label %231

231:                                              ; preds = %228, %210
  %232 = load i32, i32* %2, align 4
  ret i32 %232
}

declare dso_local i32 @ixgbe_alloc_q_vector(%struct.ixgbe_adapter*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @ixgbe_free_q_vector(%struct.ixgbe_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
