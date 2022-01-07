; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera.c_altera_get_act_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera.c_altera_get_act_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_procinfo = type { i32*, i32, %struct.altera_procinfo* }

@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32, i8**, i8**, %struct.altera_procinfo**)* @altera_get_act_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_get_act_info(i32* %0, i64 %1, i32 %2, i8** %3, i8** %4, %struct.altera_procinfo** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.altera_procinfo**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.altera_procinfo*, align 8
  %16 = alloca %struct.altera_procinfo*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i8** %4, i8*** %12, align 8
  store %struct.altera_procinfo** %5, %struct.altera_procinfo*** %13, align 8
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %14, align 4
  store %struct.altera_procinfo* null, %struct.altera_procinfo** %15, align 8
  store %struct.altera_procinfo* null, %struct.altera_procinfo** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %31 = load i64, i64* %9, align 8
  %32 = icmp sle i64 %31, 52
  br i1 %32, label %33, label %35

33:                                               ; preds = %6
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %7, align 4
  br label %202

35:                                               ; preds = %6
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = call i32 @get_unaligned_be32(i32* %37)
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %17, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ne i64 %40, 1245793537
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %7, align 4
  br label %202

44:                                               ; preds = %35
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  %47 = call i32 @get_unaligned_be32(i32* %46)
  store i32 %47, i32* %18, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 8
  %50 = call i32 @get_unaligned_be32(i32* %49)
  store i32 %50, i32* %19, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 12
  %53 = call i32 @get_unaligned_be32(i32* %52)
  store i32 %53, i32* %20, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 16
  %56 = call i32 @get_unaligned_be32(i32* %55)
  store i32 %56, i32* %21, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 48
  %59 = call i32 @get_unaligned_be32(i32* %58)
  store i32 %59, i32* %22, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 52
  %62 = call i32 @get_unaligned_be32(i32* %61)
  store i32 %62, i32* %23, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %22, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %44
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %7, align 4
  br label %202

68:                                               ; preds = %44
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %10, align 4
  %72 = mul nsw i32 12, %71
  %73 = add nsw i32 %70, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %69, i64 %74
  %76 = call i32 @get_unaligned_be32(i32* %75)
  store i32 %76, i32* %24, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %18, align 4
  %79 = load i32, i32* %10, align 4
  %80 = mul nsw i32 12, %79
  %81 = add nsw i32 %78, %80
  %82 = add nsw i32 %81, 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %77, i64 %83
  %85 = call i32 @get_unaligned_be32(i32* %84)
  store i32 %85, i32* %25, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %10, align 4
  %89 = mul nsw i32 12, %88
  %90 = add nsw i32 %87, %89
  %91 = add nsw i32 %90, 8
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %86, i64 %92
  %94 = call i32 @get_unaligned_be32(i32* %93)
  store i32 %94, i32* %26, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %20, align 4
  %97 = load i32, i32* %24, align 4
  %98 = add nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %95, i64 %99
  %101 = bitcast i32* %100 to i8*
  %102 = load i8**, i8*** %11, align 8
  store i8* %101, i8** %102, align 8
  %103 = load i32, i32* %25, align 4
  %104 = load i32, i32* %21, align 4
  %105 = load i32, i32* %20, align 4
  %106 = sub nsw i32 %104, %105
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %68
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* %20, align 4
  %111 = load i32, i32* %25, align 4
  %112 = add nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %109, i64 %113
  %115 = bitcast i32* %114 to i8*
  %116 = load i8**, i8*** %12, align 8
  store i8* %115, i8** %116, align 8
  br label %117

117:                                              ; preds = %108, %68
  br label %118

118:                                              ; preds = %198, %117
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* %19, align 4
  %121 = load i32, i32* %26, align 4
  %122 = mul nsw i32 13, %121
  %123 = add nsw i32 %120, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %119, i64 %124
  %126 = call i32 @get_unaligned_be32(i32* %125)
  store i32 %126, i32* %27, align 4
  %127 = load i32*, i32** %8, align 8
  %128 = load i32, i32* %19, align 4
  %129 = load i32, i32* %26, align 4
  %130 = mul nsw i32 13, %129
  %131 = add nsw i32 %128, %130
  %132 = add nsw i32 %131, 8
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %127, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 3
  store i32 %136, i32* %28, align 4
  %137 = load i32, i32* @GFP_KERNEL, align 4
  %138 = call %struct.altera_procinfo* @kzalloc(i32 24, i32 %137)
  store %struct.altera_procinfo* %138, %struct.altera_procinfo** %15, align 8
  %139 = load %struct.altera_procinfo*, %struct.altera_procinfo** %15, align 8
  %140 = icmp eq %struct.altera_procinfo* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %118
  %142 = load i32, i32* @ENOMEM, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %14, align 4
  br label %181

144:                                              ; preds = %118
  %145 = load i32*, i32** %8, align 8
  %146 = load i32, i32* %20, align 4
  %147 = load i32, i32* %27, align 4
  %148 = add nsw i32 %146, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %145, i64 %149
  %151 = load %struct.altera_procinfo*, %struct.altera_procinfo** %15, align 8
  %152 = getelementptr inbounds %struct.altera_procinfo, %struct.altera_procinfo* %151, i32 0, i32 0
  store i32* %150, i32** %152, align 8
  %153 = load i32, i32* %28, align 4
  %154 = load %struct.altera_procinfo*, %struct.altera_procinfo** %15, align 8
  %155 = getelementptr inbounds %struct.altera_procinfo, %struct.altera_procinfo* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 8
  %156 = load %struct.altera_procinfo*, %struct.altera_procinfo** %15, align 8
  %157 = getelementptr inbounds %struct.altera_procinfo, %struct.altera_procinfo* %156, i32 0, i32 2
  store %struct.altera_procinfo* null, %struct.altera_procinfo** %157, align 8
  %158 = load %struct.altera_procinfo**, %struct.altera_procinfo*** %13, align 8
  %159 = load %struct.altera_procinfo*, %struct.altera_procinfo** %158, align 8
  %160 = icmp eq %struct.altera_procinfo* %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %144
  %162 = load %struct.altera_procinfo*, %struct.altera_procinfo** %15, align 8
  %163 = load %struct.altera_procinfo**, %struct.altera_procinfo*** %13, align 8
  store %struct.altera_procinfo* %162, %struct.altera_procinfo** %163, align 8
  br label %180

164:                                              ; preds = %144
  %165 = load %struct.altera_procinfo**, %struct.altera_procinfo*** %13, align 8
  %166 = load %struct.altera_procinfo*, %struct.altera_procinfo** %165, align 8
  store %struct.altera_procinfo* %166, %struct.altera_procinfo** %16, align 8
  br label %167

167:                                              ; preds = %172, %164
  %168 = load %struct.altera_procinfo*, %struct.altera_procinfo** %16, align 8
  %169 = getelementptr inbounds %struct.altera_procinfo, %struct.altera_procinfo* %168, i32 0, i32 2
  %170 = load %struct.altera_procinfo*, %struct.altera_procinfo** %169, align 8
  %171 = icmp ne %struct.altera_procinfo* %170, null
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = load %struct.altera_procinfo*, %struct.altera_procinfo** %16, align 8
  %174 = getelementptr inbounds %struct.altera_procinfo, %struct.altera_procinfo* %173, i32 0, i32 2
  %175 = load %struct.altera_procinfo*, %struct.altera_procinfo** %174, align 8
  store %struct.altera_procinfo* %175, %struct.altera_procinfo** %16, align 8
  br label %167

176:                                              ; preds = %167
  %177 = load %struct.altera_procinfo*, %struct.altera_procinfo** %15, align 8
  %178 = load %struct.altera_procinfo*, %struct.altera_procinfo** %16, align 8
  %179 = getelementptr inbounds %struct.altera_procinfo, %struct.altera_procinfo* %178, i32 0, i32 2
  store %struct.altera_procinfo* %177, %struct.altera_procinfo** %179, align 8
  br label %180

180:                                              ; preds = %176, %161
  br label %181

181:                                              ; preds = %180, %141
  %182 = load i32*, i32** %8, align 8
  %183 = load i32, i32* %19, align 4
  %184 = load i32, i32* %26, align 4
  %185 = mul nsw i32 13, %184
  %186 = add nsw i32 %183, %185
  %187 = add nsw i32 %186, 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %182, i64 %188
  %190 = call i32 @get_unaligned_be32(i32* %189)
  store i32 %190, i32* %26, align 4
  br label %191

191:                                              ; preds = %181
  %192 = load i32, i32* %26, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %191
  %195 = load i32, i32* %26, align 4
  %196 = load i32, i32* %23, align 4
  %197 = icmp slt i32 %195, %196
  br label %198

198:                                              ; preds = %194, %191
  %199 = phi i1 [ false, %191 ], [ %197, %194 ]
  br i1 %199, label %118, label %200

200:                                              ; preds = %198
  %201 = load i32, i32* %14, align 4
  store i32 %201, i32* %7, align 4
  br label %202

202:                                              ; preds = %200, %66, %42, %33
  %203 = load i32, i32* %7, align 4
  ret i32 %203
}

declare dso_local i32 @get_unaligned_be32(i32*) #1

declare dso_local %struct.altera_procinfo* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
