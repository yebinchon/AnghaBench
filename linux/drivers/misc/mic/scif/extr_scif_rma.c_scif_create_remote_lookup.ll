; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c_scif_create_remote_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c_scif_create_remote_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_dev = type { i32 }
%struct.scif_window = type { i32, i32, i32*, %struct.TYPE_4__, i32*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.TYPE_3__ = type { i32*, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCIF_NR_ADDR_IN_PAGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scif_dev*, %struct.scif_window*)* @scif_create_remote_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scif_create_remote_lookup(%struct.scif_dev* %0, %struct.scif_window* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scif_dev*, align 8
  %5 = alloca %struct.scif_window*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.scif_dev* %0, %struct.scif_dev** %4, align 8
  store %struct.scif_window* %1, %struct.scif_window** %5, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %13 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %9, align 4
  %15 = call i32 (...) @might_sleep()
  %16 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %17 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %16, i32 0, i32 6
  %18 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %19 = load %struct.scif_dev*, %struct.scif_dev** %4, align 8
  %20 = call i32 @scif_map_single(i32* %17, %struct.scif_window* %18, %struct.scif_dev* %19, i32 64)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %176

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = mul nsw i32 %25, %26
  %28 = call i32 @ALIGN(i32 %27, i32 2097152)
  %29 = ashr i32 %28, 21
  %30 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %31 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %33 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load %struct.scif_dev*, %struct.scif_dev** %4, align 8
  %36 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %37 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = load i32, i32* @__GFP_ZERO, align 4
  %44 = or i32 %42, %43
  %45 = call i8* @scif_alloc_coherent(i32* %34, %struct.scif_dev* %35, i32 %41, i32 %44)
  %46 = bitcast i8* %45 to i32*
  %47 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %48 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32* %46, i32** %49, align 8
  %50 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %51 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %24
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %8, align 4
  br label %176

58:                                               ; preds = %24
  %59 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %60 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load %struct.scif_dev*, %struct.scif_dev** %4, align 8
  %63 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %64 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 4
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = load i32, i32* @__GFP_ZERO, align 4
  %71 = or i32 %69, %70
  %72 = call i8* @scif_alloc_coherent(i32* %61, %struct.scif_dev* %62, i32 %68, i32 %71)
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %75 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32* %73, i32** %76, align 8
  %77 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %78 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %58
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %8, align 4
  br label %176

85:                                               ; preds = %58
  %86 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %87 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %86, i32 0, i32 4
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = call i32 @is_vmalloc_addr(i32* %89)
  store i32 %90, i32* %10, align 4
  %91 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %92 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = call i32 @is_vmalloc_addr(i32* %94)
  store i32 %95, i32* %11, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %96

96:                                               ; preds = %167, %85
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %175

100:                                              ; preds = %96
  %101 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %102 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %100
  %111 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %112 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %111, i32 0, i32 4
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = call i32 @vmalloc_to_page(i32* %116)
  br label %126

118:                                              ; preds = %100
  %119 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %120 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = call i32 @virt_to_page(i32* %124)
  br label %126

126:                                              ; preds = %118, %110
  %127 = phi i32 [ %117, %110 ], [ %125, %118 ]
  %128 = load %struct.scif_dev*, %struct.scif_dev** %4, align 8
  %129 = call i32 @scif_map_page(i32* %107, i32 %127, %struct.scif_dev* %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  br label %176

133:                                              ; preds = %126
  %134 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %135 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %133
  %144 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %145 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = call i32 @vmalloc_to_page(i32* %149)
  br label %159

151:                                              ; preds = %133
  %152 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %153 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = call i32 @virt_to_page(i32* %157)
  br label %159

159:                                              ; preds = %151, %143
  %160 = phi i32 [ %150, %143 ], [ %158, %151 ]
  %161 = load %struct.scif_dev*, %struct.scif_dev** %4, align 8
  %162 = call i32 @scif_map_page(i32* %140, i32 %160, %struct.scif_dev* %161)
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %159
  br label %176

166:                                              ; preds = %159
  br label %167

167:                                              ; preds = %166
  %168 = load i64, i64* @SCIF_NR_ADDR_IN_PAGE, align 8
  %169 = load i32, i32* %6, align 4
  %170 = sext i32 %169 to i64
  %171 = add nsw i64 %170, %168
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %6, align 4
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %7, align 4
  br label %96

175:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %178

176:                                              ; preds = %165, %132, %82, %55, %23
  %177 = load i32, i32* %8, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %176, %175
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @scif_map_single(i32*, %struct.scif_window*, %struct.scif_dev*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i8* @scif_alloc_coherent(i32*, %struct.scif_dev*, i32, i32) #1

declare dso_local i32 @is_vmalloc_addr(i32*) #1

declare dso_local i32 @scif_map_page(i32*, i32, %struct.scif_dev*) #1

declare dso_local i32 @vmalloc_to_page(i32*) #1

declare dso_local i32 @virt_to_page(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
