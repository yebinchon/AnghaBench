; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_cppcore.c_nfp_cpp_area_alloc_with_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_cppcore.c_nfp_cpp_area_alloc_with_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp_area = type { i64, i64, %struct.TYPE_4__, i32, i32, i32, %struct.nfp_cpp* }
%struct.TYPE_4__ = type { i64, i64, i32, i32, i8* }
%struct.nfp_cpp = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 (%struct.nfp_cpp_area*, i32, i64, i64)* }

@.str = private unnamed_addr constant [11 x i8] c"(reserved)\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfp_cpp_area* @nfp_cpp_area_alloc_with_name(%struct.nfp_cpp* %0, i32 %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.nfp_cpp_area*, align 8
  %7 = alloca %struct.nfp_cpp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.nfp_cpp_area*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i64, i64* %10, align 8
  store i64 %17, i64* %13, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i64, i64* %13, align 8
  %20 = load %struct.nfp_cpp*, %struct.nfp_cpp** %7, align 8
  %21 = getelementptr inbounds %struct.nfp_cpp, %struct.nfp_cpp* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @nfp_target_cpp(i32 %18, i64 %19, i32* %8, i64* %13, i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  store %struct.nfp_cpp_area* null, %struct.nfp_cpp_area** %6, align 8
  br label %149

27:                                               ; preds = %5
  %28 = load i64, i64* %13, align 8
  store i64 %28, i64* %10, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %15, align 4
  %36 = load %struct.nfp_cpp*, %struct.nfp_cpp** %7, align 8
  %37 = getelementptr inbounds %struct.nfp_cpp, %struct.nfp_cpp* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = add i64 72, %41
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %42, %44
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.nfp_cpp_area* @kzalloc(i32 %46, i32 %47)
  store %struct.nfp_cpp_area* %48, %struct.nfp_cpp_area** %12, align 8
  %49 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %12, align 8
  %50 = icmp ne %struct.nfp_cpp_area* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %32
  store %struct.nfp_cpp_area* null, %struct.nfp_cpp_area** %6, align 8
  br label %149

52:                                               ; preds = %32
  %53 = load %struct.nfp_cpp*, %struct.nfp_cpp** %7, align 8
  %54 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %12, align 8
  %55 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %54, i32 0, i32 6
  store %struct.nfp_cpp* %53, %struct.nfp_cpp** %55, align 8
  %56 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %12, align 8
  %57 = bitcast %struct.nfp_cpp_area* %56 to i8*
  %58 = getelementptr i8, i8* %57, i64 72
  %59 = load %struct.nfp_cpp*, %struct.nfp_cpp** %7, align 8
  %60 = getelementptr inbounds %struct.nfp_cpp, %struct.nfp_cpp* %59, i32 0, i32 2
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr i8, i8* %58, i64 %64
  %66 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %12, align 8
  %67 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 4
  store i8* %65, i8** %68, align 8
  %69 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %12, align 8
  %70 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 4
  %72 = load i8*, i8** %71, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @memcpy(i8* %72, i8* %73, i32 %74)
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %12, align 8
  %78 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  store i32 %76, i32* %79, align 4
  %80 = load i64, i64* %10, align 8
  %81 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %12, align 8
  %82 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i64 %80, i64* %83, align 8
  %84 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %12, align 8
  %85 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %11, align 8
  %89 = add i64 %87, %88
  %90 = sub i64 %89, 1
  %91 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %12, align 8
  %92 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i64 %90, i64* %93, align 8
  %94 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %12, align 8
  %95 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = call i32 @INIT_LIST_HEAD(i32* %96)
  %98 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %12, align 8
  %99 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %98, i32 0, i32 5
  %100 = call i32 @atomic_set(i32* %99, i32 0)
  %101 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %12, align 8
  %102 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %101, i32 0, i32 4
  %103 = call i32 @kref_init(i32* %102)
  %104 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %12, align 8
  %105 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %104, i32 0, i32 3
  %106 = call i32 @mutex_init(i32* %105)
  %107 = load %struct.nfp_cpp*, %struct.nfp_cpp** %7, align 8
  %108 = getelementptr inbounds %struct.nfp_cpp, %struct.nfp_cpp* %107, i32 0, i32 2
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i32 (%struct.nfp_cpp_area*, i32, i64, i64)*, i32 (%struct.nfp_cpp_area*, i32, i64, i64)** %110, align 8
  %112 = icmp ne i32 (%struct.nfp_cpp_area*, i32, i64, i64)* %111, null
  br i1 %112, label %113, label %130

113:                                              ; preds = %52
  %114 = load %struct.nfp_cpp*, %struct.nfp_cpp** %7, align 8
  %115 = getelementptr inbounds %struct.nfp_cpp, %struct.nfp_cpp* %114, i32 0, i32 2
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32 (%struct.nfp_cpp_area*, i32, i64, i64)*, i32 (%struct.nfp_cpp_area*, i32, i64, i64)** %117, align 8
  %119 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %12, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i64, i64* %10, align 8
  %122 = load i64, i64* %11, align 8
  %123 = call i32 %118(%struct.nfp_cpp_area* %119, i32 %120, i64 %121, i64 %122)
  store i32 %123, i32* %16, align 4
  %124 = load i32, i32* %16, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %113
  %127 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %12, align 8
  %128 = call i32 @kfree(%struct.nfp_cpp_area* %127)
  store %struct.nfp_cpp_area* null, %struct.nfp_cpp_area** %6, align 8
  br label %149

129:                                              ; preds = %113
  br label %130

130:                                              ; preds = %129, %52
  %131 = load %struct.nfp_cpp*, %struct.nfp_cpp** %7, align 8
  %132 = getelementptr inbounds %struct.nfp_cpp, %struct.nfp_cpp* %131, i32 0, i32 0
  %133 = call i32 @write_lock(i32* %132)
  %134 = load %struct.nfp_cpp*, %struct.nfp_cpp** %7, align 8
  %135 = getelementptr inbounds %struct.nfp_cpp, %struct.nfp_cpp* %134, i32 0, i32 1
  %136 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %12, align 8
  %137 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %136, i32 0, i32 2
  %138 = call i32 @__resource_add(i32* %135, %struct.TYPE_4__* %137)
  %139 = load %struct.nfp_cpp*, %struct.nfp_cpp** %7, align 8
  %140 = getelementptr inbounds %struct.nfp_cpp, %struct.nfp_cpp* %139, i32 0, i32 0
  %141 = call i32 @write_unlock(i32* %140)
  %142 = load i64, i64* %10, align 8
  %143 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %12, align 8
  %144 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  %145 = load i64, i64* %11, align 8
  %146 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %12, align 8
  %147 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %146, i32 0, i32 1
  store i64 %145, i64* %147, align 8
  %148 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %12, align 8
  store %struct.nfp_cpp_area* %148, %struct.nfp_cpp_area** %6, align 8
  br label %149

149:                                              ; preds = %130, %126, %51, %26
  %150 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %6, align 8
  ret %struct.nfp_cpp_area* %150
}

declare dso_local i32 @nfp_target_cpp(i32, i64, i32*, i64*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.nfp_cpp_area* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kfree(%struct.nfp_cpp_area*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @__resource_add(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
