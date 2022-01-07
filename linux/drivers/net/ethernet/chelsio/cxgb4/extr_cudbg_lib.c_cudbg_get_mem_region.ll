; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_get_mem_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_get_mem_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.cudbg_meminfo = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.cudbg_mem_desc = type { i32 }

@cudbg_region = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.cudbg_meminfo*, i64, i8*, %struct.cudbg_mem_desc*)* @cudbg_get_mem_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cudbg_get_mem_region(%struct.adapter* %0, %struct.cudbg_meminfo* %1, i64 %2, i8* %3, %struct.cudbg_mem_desc* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.cudbg_meminfo*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.cudbg_mem_desc*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store %struct.cudbg_meminfo* %1, %struct.cudbg_meminfo** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.cudbg_mem_desc* %4, %struct.cudbg_mem_desc** %11, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %15, align 8
  %17 = load %struct.adapter*, %struct.adapter** %7, align 8
  %18 = load %struct.cudbg_meminfo*, %struct.cudbg_meminfo** %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @cudbg_meminfo_get_mem_index(%struct.adapter* %17, %struct.cudbg_meminfo* %18, i64 %19, i64* %12)
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* %16, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %16, align 4
  store i32 %24, i32* %6, align 4
  br label %188

25:                                               ; preds = %5
  store i64 0, i64* %14, align 8
  br label %26

26:                                               ; preds = %42, %25
  %27 = load i64, i64* %14, align 8
  %28 = load i32*, i32** @cudbg_region, align 8
  %29 = call i64 @ARRAY_SIZE(i32* %28)
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load i32*, i32** @cudbg_region, align 8
  %33 = load i64, i64* %14, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @strcmp(i32 %35, i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %31
  store i64 1, i64* %13, align 8
  %40 = load i64, i64* %14, align 8
  store i64 %40, i64* %15, align 8
  br label %45

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %14, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %14, align 8
  br label %26

45:                                               ; preds = %39, %26
  %46 = load i64, i64* %13, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %188

51:                                               ; preds = %45
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %52

52:                                               ; preds = %178, %51
  %53 = load i64, i64* %14, align 8
  %54 = load %struct.cudbg_meminfo*, %struct.cudbg_meminfo** %8, align 8
  %55 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %181

58:                                               ; preds = %52
  %59 = load %struct.cudbg_meminfo*, %struct.cudbg_meminfo** %8, align 8
  %60 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i64, i64* %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32*, i32** @cudbg_region, align 8
  %67 = call i64 @ARRAY_SIZE(i32* %66)
  %68 = icmp uge i64 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %178

70:                                               ; preds = %58
  %71 = load %struct.cudbg_meminfo*, %struct.cudbg_meminfo** %8, align 8
  %72 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i64, i64* %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %105, label %79

79:                                               ; preds = %70
  %80 = load i64, i64* %14, align 8
  %81 = load %struct.cudbg_meminfo*, %struct.cudbg_meminfo** %8, align 8
  %82 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub i64 %83, 1
  %85 = icmp ult i64 %80, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %79
  %87 = load %struct.cudbg_meminfo*, %struct.cudbg_meminfo** %8, align 8
  %88 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i64, i64* %14, align 8
  %91 = add i64 %90, 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %94, 1
  br label %97

96:                                               ; preds = %79
  br label %97

97:                                               ; preds = %96, %86
  %98 = phi i64 [ %95, %86 ], [ -1, %96 ]
  %99 = load %struct.cudbg_meminfo*, %struct.cudbg_meminfo** %8, align 8
  %100 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i64, i64* %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  store i64 %98, i64* %104, align 8
  br label %105

105:                                              ; preds = %97, %70
  %106 = load %struct.cudbg_meminfo*, %struct.cudbg_meminfo** %8, align 8
  %107 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i64, i64* %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %15, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %177

115:                                              ; preds = %105
  %116 = load %struct.cudbg_meminfo*, %struct.cudbg_meminfo** %8, align 8
  %117 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %116, i32 0, i32 1
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = load i64, i64* %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.cudbg_meminfo*, %struct.cudbg_meminfo** %8, align 8
  %124 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %123, i32 0, i32 2
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = load i64, i64* %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp slt i64 %122, %129
  br i1 %130, label %131, label %150

131:                                              ; preds = %115
  %132 = load %struct.cudbg_meminfo*, %struct.cudbg_meminfo** %8, align 8
  %133 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %132, i32 0, i32 1
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i64, i64* %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.cudbg_meminfo*, %struct.cudbg_meminfo** %8, align 8
  %140 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %139, i32 0, i32 2
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = load i64, i64* %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp slt i64 %138, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %131
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %6, align 4
  br label %188

150:                                              ; preds = %131, %115
  %151 = load %struct.cudbg_meminfo*, %struct.cudbg_meminfo** %8, align 8
  %152 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %151, i32 0, i32 1
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = load i64, i64* %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.cudbg_meminfo*, %struct.cudbg_meminfo** %8, align 8
  %159 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %158, i32 0, i32 2
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %159, align 8
  %161 = load i64, i64* %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp sgt i64 %157, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %150
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %6, align 4
  br label %188

169:                                              ; preds = %150
  %170 = load %struct.cudbg_mem_desc*, %struct.cudbg_mem_desc** %11, align 8
  %171 = load %struct.cudbg_meminfo*, %struct.cudbg_meminfo** %8, align 8
  %172 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %171, i32 0, i32 1
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = load i64, i64* %14, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i64 %174
  %176 = call i32 @memcpy(%struct.cudbg_mem_desc* %170, %struct.TYPE_4__* %175, i32 4)
  store i64 1, i64* %13, align 8
  br label %181

177:                                              ; preds = %105
  br label %178

178:                                              ; preds = %177, %69
  %179 = load i64, i64* %14, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %14, align 8
  br label %52

181:                                              ; preds = %169, %52
  %182 = load i64, i64* %13, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %181
  %185 = load i32, i32* @EINVAL, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %6, align 4
  br label %188

187:                                              ; preds = %181
  store i32 0, i32* %6, align 4
  br label %188

188:                                              ; preds = %187, %184, %166, %147, %48, %23
  %189 = load i32, i32* %6, align 4
  ret i32 %189
}

declare dso_local i32 @cudbg_meminfo_get_mem_index(%struct.adapter*, %struct.cudbg_meminfo*, i64, i64*) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @memcpy(%struct.cudbg_mem_desc*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
