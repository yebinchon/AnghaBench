; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_fastrpc.c_fastrpc_get_buff_overlaps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_fastrpc.c_fastrpc_get_buff_overlaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fastrpc_invoke_ctx = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64, i32, i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@olaps_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fastrpc_invoke_ctx*)* @fastrpc_get_buff_overlaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fastrpc_get_buff_overlaps(%struct.fastrpc_invoke_ctx* %0) #0 {
  %2 = alloca %struct.fastrpc_invoke_ctx*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.fastrpc_invoke_ctx* %0, %struct.fastrpc_invoke_ctx** %2, align 8
  store i64 0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %59, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %62

11:                                               ; preds = %5
  %12 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %2, align 8
  %21 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i64 %19, i64* %26, align 8
  %27 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %2, align 8
  %36 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %34, %42
  %44 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %2, align 8
  %45 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i64 %43, i64* %50, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %2, align 8
  %53 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  store i32 %51, i32* %58, align 8
  br label %59

59:                                               ; preds = %11
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %5

62:                                               ; preds = %5
  %63 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %2, align 8
  %64 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %2, align 8
  %67 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @olaps_cmp, align 4
  %70 = call i32 @sort(%struct.TYPE_4__* %65, i32 %68, i32 48, i32 %69, i32* null)
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %211, %62
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %2, align 8
  %74 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %214

77:                                               ; preds = %71
  %78 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %2, align 8
  %79 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %3, align 8
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %88, label %164

88:                                               ; preds = %77
  %89 = load i64, i64* %3, align 8
  %90 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %2, align 8
  %91 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  store i64 %89, i64* %96, align 8
  %97 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %2, align 8
  %98 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %97, i32 0, i32 1
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %2, align 8
  %106 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %105, i32 0, i32 1
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 4
  store i64 %104, i64* %111, align 8
  %112 = load i64, i64* %3, align 8
  %113 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %2, align 8
  %114 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %113, i32 0, i32 1
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = sub nsw i64 %112, %120
  %122 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %2, align 8
  %123 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %122, i32 0, i32 1
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 5
  store i64 %121, i64* %128, align 8
  %129 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %2, align 8
  %130 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %129, i32 0, i32 1
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %3, align 8
  %138 = icmp sgt i64 %136, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %88
  %140 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %2, align 8
  %141 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %140, i32 0, i32 1
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %3, align 8
  br label %163

148:                                              ; preds = %88
  %149 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %2, align 8
  %150 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %149, i32 0, i32 1
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = load i32, i32* %4, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 4
  store i64 0, i64* %155, align 8
  %156 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %2, align 8
  %157 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %156, i32 0, i32 1
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = load i32, i32* %4, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 3
  store i64 0, i64* %162, align 8
  br label %163

163:                                              ; preds = %148, %139
  br label %210

164:                                              ; preds = %77
  %165 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %2, align 8
  %166 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %165, i32 0, i32 1
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = load i32, i32* %4, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %2, align 8
  %174 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %173, i32 0, i32 1
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = load i32, i32* %4, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 4
  store i64 %172, i64* %179, align 8
  %180 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %2, align 8
  %181 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %180, i32 0, i32 1
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = load i32, i32* %4, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %2, align 8
  %189 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %188, i32 0, i32 1
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = load i32, i32* %4, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 3
  store i64 %187, i64* %194, align 8
  %195 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %2, align 8
  %196 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %195, i32 0, i32 1
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %196, align 8
  %198 = load i32, i32* %4, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 5
  store i64 0, i64* %201, align 8
  %202 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %2, align 8
  %203 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %202, i32 0, i32 1
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %203, align 8
  %205 = load i32, i32* %4, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* %3, align 8
  br label %210

210:                                              ; preds = %164, %163
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %4, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %4, align 4
  br label %71

214:                                              ; preds = %71
  ret void
}

declare dso_local i32 @sort(%struct.TYPE_4__*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
