; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32, i64, i32*, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"set Frequency %u\0A\00", align 1
@DST_TYPE_IS_SAT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DST_TYPE_HAS_OBS_REGS = common dso_local global i32 0, align 4
@DST_TYPE_IS_TERR = common dso_local global i64 0, align 8
@DST_TYPE_IS_CABLE = common dso_local global i64 0, align 8
@DST_TYPE_IS_ATSC = common dso_local global i64 0, align 8
@DST_TYPE_HAS_ANALOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*, i32)* @dst_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_set_freq(%struct.dst_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dst_state*, align 8
  %5 = alloca i32, align 4
  store %struct.dst_state* %0, %struct.dst_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %8 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %12 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DST_TYPE_IS_SAT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %70

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = sdiv i32 %17, 1000
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 950
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %22, 2150
  br i1 %23, label %24, label %27

24:                                               ; preds = %21, %16
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %208

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %28, 8
  %30 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %31 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  store i32 %29, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %39 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  store i32 %37, i32* %41, align 4
  %42 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %43 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  store i32 1, i32* %45, align 4
  %46 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %47 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 8
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, -5
  store i32 %51, i32* %49, align 4
  %52 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %53 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @DST_TYPE_HAS_OBS_REGS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %27
  %59 = load i32, i32* %5, align 4
  %60 = icmp slt i32 %59, 1531
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %63 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 8
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, 4
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %61, %58
  br label %69

69:                                               ; preds = %68, %27
  br label %207

70:                                               ; preds = %2
  %71 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %72 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @DST_TYPE_IS_TERR, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %110

76:                                               ; preds = %70
  %77 = load i32, i32* %5, align 4
  %78 = sdiv i32 %77, 1000
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 137000
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %5, align 4
  %83 = icmp sgt i32 %82, 858000
  br i1 %83, label %84, label %87

84:                                               ; preds = %81, %76
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %208

87:                                               ; preds = %81
  %88 = load i32, i32* %5, align 4
  %89 = ashr i32 %88, 16
  %90 = and i32 %89, 255
  %91 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %92 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  store i32 %90, i32* %94, align 4
  %95 = load i32, i32* %5, align 4
  %96 = ashr i32 %95, 8
  %97 = and i32 %96, 255
  %98 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %99 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 3
  store i32 %97, i32* %101, align 4
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = ptrtoint i8* %104 to i32
  %106 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %107 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 4
  store i32 %105, i32* %109, align 4
  br label %206

110:                                              ; preds = %70
  %111 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %112 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @DST_TYPE_IS_CABLE, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %141

116:                                              ; preds = %110
  %117 = load i32, i32* %5, align 4
  %118 = sdiv i32 %117, 1000
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = ashr i32 %119, 16
  %121 = and i32 %120, 255
  %122 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %123 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 2
  store i32 %121, i32* %125, align 4
  %126 = load i32, i32* %5, align 4
  %127 = ashr i32 %126, 8
  %128 = and i32 %127, 255
  %129 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %130 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 3
  store i32 %128, i32* %132, align 4
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = inttoptr i64 %134 to i8*
  %136 = ptrtoint i8* %135 to i32
  %137 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %138 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 4
  store i32 %136, i32* %140, align 4
  br label %205

141:                                              ; preds = %110
  %142 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %143 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @DST_TYPE_IS_ATSC, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %201

147:                                              ; preds = %141
  %148 = load i32, i32* %5, align 4
  %149 = sdiv i32 %148, 1000
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* %5, align 4
  %151 = icmp slt i32 %150, 51000
  br i1 %151, label %155, label %152

152:                                              ; preds = %147
  %153 = load i32, i32* %5, align 4
  %154 = icmp sgt i32 %153, 858000
  br i1 %154, label %155, label %158

155:                                              ; preds = %152, %147
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %3, align 4
  br label %208

158:                                              ; preds = %152
  %159 = load i32, i32* %5, align 4
  %160 = ashr i32 %159, 16
  %161 = and i32 %160, 255
  %162 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %163 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 2
  store i32 %161, i32* %165, align 4
  %166 = load i32, i32* %5, align 4
  %167 = ashr i32 %166, 8
  %168 = and i32 %167, 255
  %169 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %170 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 3
  store i32 %168, i32* %172, align 4
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = inttoptr i64 %174 to i8*
  %176 = ptrtoint i8* %175 to i32
  %177 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %178 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 4
  store i32 %176, i32* %180, align 4
  %181 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %182 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %181, i32 0, i32 2
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 5
  store i32 0, i32* %184, align 4
  %185 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %186 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %185, i32 0, i32 2
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 6
  store i32 0, i32* %188, align 4
  %189 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %190 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @DST_TYPE_HAS_ANALOG, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %158
  %196 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %197 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 7
  store i32 0, i32* %199, align 4
  br label %200

200:                                              ; preds = %195, %158
  br label %204

201:                                              ; preds = %141
  %202 = load i32, i32* @EINVAL, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %3, align 4
  br label %208

204:                                              ; preds = %200
  br label %205

205:                                              ; preds = %204, %116
  br label %206

206:                                              ; preds = %205, %87
  br label %207

207:                                              ; preds = %206, %69
  store i32 0, i32* %3, align 4
  br label %208

208:                                              ; preds = %207, %201, %155, %84, %24
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local i32 @dprintk(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
