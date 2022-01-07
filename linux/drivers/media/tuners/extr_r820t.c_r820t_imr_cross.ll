; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_r820t.c_r820t_imr_cross.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_r820t.c_r820t_imr_cross.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r820t_priv = type { i32 }
%struct.r820t_sect_type = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r820t_priv*, %struct.r820t_sect_type*, i32*)* @r820t_imr_cross to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r820t_imr_cross(%struct.r820t_priv* %0, %struct.r820t_sect_type* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.r820t_priv*, align 8
  %6 = alloca %struct.r820t_sect_type*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [5 x %struct.r820t_sect_type], align 16
  %9 = alloca %struct.r820t_sect_type, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.r820t_priv* %0, %struct.r820t_priv** %5, align 8
  store %struct.r820t_sect_type* %1, %struct.r820t_sect_type** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %15 = call i32 @r820t_read_cache_reg(%struct.r820t_priv* %14, i32 8)
  %16 = and i32 %15, 192
  store i32 %16, i32* %12, align 4
  %17 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %18 = call i32 @r820t_read_cache_reg(%struct.r820t_priv* %17, i32 9)
  %19 = and i32 %18, 192
  store i32 %19, i32* %13, align 4
  %20 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %9, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %9, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %9, i32 0, i32 2
  store i32 255, i32* %22, align 4
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %141, %3
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 5
  br i1 %25, label %26, label %144

26:                                               ; preds = %23
  %27 = load i32, i32* %10, align 4
  switch i32 %27, label %76 [
    i32 0, label %28
    i32 1, label %39
    i32 2, label %51
    i32 3, label %64
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [5 x %struct.r820t_sect_type], [5 x %struct.r820t_sect_type]* %8, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [5 x %struct.r820t_sect_type], [5 x %struct.r820t_sect_type]* %8, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %37, i32 0, i32 1
  store i32 %34, i32* %38, align 4
  br label %89

39:                                               ; preds = %26
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [5 x %struct.r820t_sect_type], [5 x %struct.r820t_sect_type]* %8, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %45, 1
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [5 x %struct.r820t_sect_type], [5 x %struct.r820t_sect_type]* %8, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %49, i32 0, i32 1
  store i32 %46, i32* %50, align 4
  br label %89

51:                                               ; preds = %26
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [5 x %struct.r820t_sect_type], [5 x %struct.r820t_sect_type]* %8, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %13, align 4
  %58 = or i32 %57, 32
  %59 = add nsw i32 %58, 1
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [5 x %struct.r820t_sect_type], [5 x %struct.r820t_sect_type]* %8, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %62, i32 0, i32 1
  store i32 %59, i32* %63, align 4
  br label %89

64:                                               ; preds = %26
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [5 x %struct.r820t_sect_type], [5 x %struct.r820t_sect_type]* %8, i64 0, i64 %68
  %70 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [5 x %struct.r820t_sect_type], [5 x %struct.r820t_sect_type]* %8, i64 0, i64 %73
  %75 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %74, i32 0, i32 1
  store i32 %71, i32* %75, align 4
  br label %89

76:                                               ; preds = %26
  %77 = load i32, i32* %12, align 4
  %78 = or i32 %77, 32
  %79 = add nsw i32 %78, 1
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [5 x %struct.r820t_sect_type], [5 x %struct.r820t_sect_type]* %8, i64 0, i64 %81
  %83 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %82, i32 0, i32 0
  store i32 %79, i32* %83, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [5 x %struct.r820t_sect_type], [5 x %struct.r820t_sect_type]* %8, i64 0, i64 %86
  %88 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %87, i32 0, i32 1
  store i32 %84, i32* %88, align 4
  br label %89

89:                                               ; preds = %76, %64, %51, %39, %28
  %90 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [5 x %struct.r820t_sect_type], [5 x %struct.r820t_sect_type]* %8, i64 0, i64 %92
  %94 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @r820t_write_reg(%struct.r820t_priv* %90, i32 8, i32 %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %89
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %4, align 4
  br label %184

101:                                              ; preds = %89
  %102 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [5 x %struct.r820t_sect_type], [5 x %struct.r820t_sect_type]* %8, i64 0, i64 %104
  %106 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @r820t_write_reg(%struct.r820t_priv* %102, i32 9, i32 %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %101
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %4, align 4
  br label %184

113:                                              ; preds = %101
  %114 = load %struct.r820t_priv*, %struct.r820t_priv** %5, align 8
  %115 = call i32 @r820t_multi_read(%struct.r820t_priv* %114)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i32, i32* %11, align 4
  store i32 %119, i32* %4, align 4
  br label %184

120:                                              ; preds = %113
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [5 x %struct.r820t_sect_type], [5 x %struct.r820t_sect_type]* %8, i64 0, i64 %123
  %125 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %124, i32 0, i32 2
  store i32 %121, i32* %125, align 4
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [5 x %struct.r820t_sect_type], [5 x %struct.r820t_sect_type]* %8, i64 0, i64 %127
  %129 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %9, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %130, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %120
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [5 x %struct.r820t_sect_type], [5 x %struct.r820t_sect_type]* %8, i64 0, i64 %136
  %138 = bitcast %struct.r820t_sect_type* %9 to i8*
  %139 = bitcast %struct.r820t_sect_type* %137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %138, i8* align 4 %139, i64 12, i1 false)
  br label %140

140:                                              ; preds = %134, %120
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %23

144:                                              ; preds = %23
  %145 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %9, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 31
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %166

149:                                              ; preds = %144
  %150 = load i32*, i32** %7, align 8
  store i32 0, i32* %150, align 4
  %151 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %6, align 8
  %152 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %151, i64 0
  %153 = getelementptr inbounds [5 x %struct.r820t_sect_type], [5 x %struct.r820t_sect_type]* %8, i64 0, i64 0
  %154 = bitcast %struct.r820t_sect_type* %152 to i8*
  %155 = bitcast %struct.r820t_sect_type* %153 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %154, i8* align 16 %155, i64 12, i1 false)
  %156 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %6, align 8
  %157 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %156, i64 1
  %158 = getelementptr inbounds [5 x %struct.r820t_sect_type], [5 x %struct.r820t_sect_type]* %8, i64 0, i64 1
  %159 = bitcast %struct.r820t_sect_type* %157 to i8*
  %160 = bitcast %struct.r820t_sect_type* %158 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %159, i8* align 4 %160, i64 12, i1 false)
  %161 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %6, align 8
  %162 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %161, i64 2
  %163 = getelementptr inbounds [5 x %struct.r820t_sect_type], [5 x %struct.r820t_sect_type]* %8, i64 0, i64 2
  %164 = bitcast %struct.r820t_sect_type* %162 to i8*
  %165 = bitcast %struct.r820t_sect_type* %163 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %164, i8* align 8 %165, i64 12, i1 false)
  br label %183

166:                                              ; preds = %144
  %167 = load i32*, i32** %7, align 8
  store i32 1, i32* %167, align 4
  %168 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %6, align 8
  %169 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %168, i64 0
  %170 = getelementptr inbounds [5 x %struct.r820t_sect_type], [5 x %struct.r820t_sect_type]* %8, i64 0, i64 0
  %171 = bitcast %struct.r820t_sect_type* %169 to i8*
  %172 = bitcast %struct.r820t_sect_type* %170 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %171, i8* align 16 %172, i64 12, i1 false)
  %173 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %6, align 8
  %174 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %173, i64 1
  %175 = getelementptr inbounds [5 x %struct.r820t_sect_type], [5 x %struct.r820t_sect_type]* %8, i64 0, i64 3
  %176 = bitcast %struct.r820t_sect_type* %174 to i8*
  %177 = bitcast %struct.r820t_sect_type* %175 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %176, i8* align 4 %177, i64 12, i1 false)
  %178 = load %struct.r820t_sect_type*, %struct.r820t_sect_type** %6, align 8
  %179 = getelementptr inbounds %struct.r820t_sect_type, %struct.r820t_sect_type* %178, i64 2
  %180 = getelementptr inbounds [5 x %struct.r820t_sect_type], [5 x %struct.r820t_sect_type]* %8, i64 0, i64 4
  %181 = bitcast %struct.r820t_sect_type* %179 to i8*
  %182 = bitcast %struct.r820t_sect_type* %180 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %181, i8* align 16 %182, i64 12, i1 false)
  br label %183

183:                                              ; preds = %166, %149
  store i32 0, i32* %4, align 4
  br label %184

184:                                              ; preds = %183, %118, %111, %99
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local i32 @r820t_read_cache_reg(%struct.r820t_priv*, i32) #1

declare dso_local i32 @r820t_write_reg(%struct.r820t_priv*, i32, i32) #1

declare dso_local i32 @r820t_multi_read(%struct.r820t_priv*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
