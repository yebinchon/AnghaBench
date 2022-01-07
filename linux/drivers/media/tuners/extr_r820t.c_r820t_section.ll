; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_r820t.c_r820t_section.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_r820t.c_r820t_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r820t_priv = type { i32 }
%struct.r820t_sect_type = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r820t_priv*, %struct.r820t_sect_type*)* @r820t_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r820t_section(%struct.r820t_priv* %0, %struct.r820t_sect_type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.r820t_priv*, align 8
  %5 = alloca %struct.r820t_sect_type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x %struct.r820t_sect_type], align 16
  %8 = alloca [3 x %struct.r820t_sect_type], align 16
  store %struct.r820t_priv* %0, %struct.r820t_priv** %4, align 8
  store %struct.r820t_sect_type* %1, %struct.r820t_sect_type** %5, align 8
  %9 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %5, align 8
  %10 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 31
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %5, align 8
  %16 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 223
  %19 = add nsw i32 %18, 1
  %20 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %7, i64 0, i64 0
  %21 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 16
  br label %29

22:                                               ; preds = %2
  %23 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %5, align 8
  %24 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1
  %27 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %7, i64 0, i64 0
  %28 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 16
  br label %29

29:                                               ; preds = %22, %14
  %30 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %5, align 8
  %31 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %7, i64 0, i64 0
  %34 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.r820t_priv*, %struct.r820t_priv** %4, align 8
  %36 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %7, i64 0, i64 0
  %37 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %7, i64 0, i64 0
  %38 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 16
  %40 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %7, i64 0, i64 0
  %41 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @r820t_iq_tree(%struct.r820t_priv* %35, %struct.r820t_sect_type* %36, i32 %39, i32 %42, i32 8)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %29
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %137

48:                                               ; preds = %29
  %49 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %7, i64 0, i64 0
  %50 = call i32 @r820t_compre_cor(%struct.r820t_sect_type* %49)
  %51 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %8, i64 0, i64 0
  %52 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %7, i64 0, i64 0
  %53 = bitcast %struct.r820t_sect_type* %51 to i8*
  %54 = bitcast %struct.r820t_sect_type* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %53, i8* align 16 %54, i64 8, i1 false)
  %55 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %5, align 8
  %56 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %7, i64 0, i64 0
  %59 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 16
  %60 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %5, align 8
  %61 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %7, i64 0, i64 0
  %64 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.r820t_priv*, %struct.r820t_priv** %4, align 8
  %66 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %7, i64 0, i64 0
  %67 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %7, i64 0, i64 0
  %68 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 16
  %70 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %7, i64 0, i64 0
  %71 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @r820t_iq_tree(%struct.r820t_priv* %65, %struct.r820t_sect_type* %66, i32 %69, i32 %72, i32 8)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %48
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %137

78:                                               ; preds = %48
  %79 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %7, i64 0, i64 0
  %80 = call i32 @r820t_compre_cor(%struct.r820t_sect_type* %79)
  %81 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %8, i64 0, i64 1
  %82 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %7, i64 0, i64 0
  %83 = bitcast %struct.r820t_sect_type* %81 to i8*
  %84 = bitcast %struct.r820t_sect_type* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 16 %84, i64 8, i1 false)
  %85 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %5, align 8
  %86 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 31
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %78
  %91 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %5, align 8
  %92 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, 32
  %95 = add nsw i32 %94, 1
  %96 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %7, i64 0, i64 0
  %97 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 16
  br label %105

98:                                               ; preds = %78
  %99 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %5, align 8
  %100 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  %103 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %7, i64 0, i64 0
  %104 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 16
  br label %105

105:                                              ; preds = %98, %90
  %106 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %5, align 8
  %107 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %7, i64 0, i64 0
  %110 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.r820t_priv*, %struct.r820t_priv** %4, align 8
  %112 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %7, i64 0, i64 0
  %113 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %7, i64 0, i64 0
  %114 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 16
  %116 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %7, i64 0, i64 0
  %117 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @r820t_iq_tree(%struct.r820t_priv* %111, %struct.r820t_sect_type* %112, i32 %115, i32 %118, i32 8)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %105
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %3, align 4
  br label %137

124:                                              ; preds = %105
  %125 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %7, i64 0, i64 0
  %126 = call i32 @r820t_compre_cor(%struct.r820t_sect_type* %125)
  %127 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %8, i64 0, i64 2
  %128 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %7, i64 0, i64 0
  %129 = bitcast %struct.r820t_sect_type* %127 to i8*
  %130 = bitcast %struct.r820t_sect_type* %128 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %129, i8* align 16 %130, i64 8, i1 false)
  %131 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %8, i64 0, i64 0
  %132 = call i32 @r820t_compre_cor(%struct.r820t_sect_type* %131)
  %133 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %5, align 8
  %134 = getelementptr inbounds [3 x %struct.r820t_sect_type], [3 x %struct.r820t_sect_type]* %8, i64 0, i64 0
  %135 = bitcast %struct.r820t_sect_type* %133 to i8*
  %136 = bitcast %struct.r820t_sect_type* %134 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %135, i8* align 16 %136, i64 8, i1 false)
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %124, %122, %76, %46
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @r820t_iq_tree(%struct.r820t_priv*, %struct.r820t_sect_type*, i32, i32, i32) #1

declare dso_local i32 @r820t_compre_cor(%struct.r820t_sect_type*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
