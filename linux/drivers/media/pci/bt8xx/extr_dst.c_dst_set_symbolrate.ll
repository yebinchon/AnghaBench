; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_set_symbolrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_set_symbolrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32, i64, i32, i32*, i32 }

@DST_TYPE_IS_TERR = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"set symrate %u\0A\00", align 1
@DST_TYPE_IS_SAT = common dso_local global i64 0, align 8
@DST_TYPE_HAS_SYMDIV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"set symcalc %u\0A\00", align 1
@DST_TYPE_HAS_OBS_REGS = common dso_local global i32 0, align 4
@DST_TYPE_IS_CABLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"DCTNEW\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"DCT-CI\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*, i32)* @dst_set_symbolrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_set_symbolrate(%struct.dst_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dst_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dst_state* %0, %struct.dst_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %10 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %12 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DST_TYPE_IS_TERR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %165

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = sdiv i32 %22, 1000
  store i32 %23, i32* %5, align 4
  %24 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %25 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DST_TYPE_IS_SAT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %107

29:                                               ; preds = %19
  %30 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %31 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @DST_TYPE_HAS_SYMDIV, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = shl i32 %38, 20
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @do_div(i32 %40, i32 88000)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = ashr i32 %45, 12
  %47 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %48 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 5
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* %6, align 4
  %52 = ashr i32 %51, 4
  %53 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %54 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 6
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %6, align 4
  %58 = shl i32 %57, 4
  %59 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %60 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 7
  store i32 %58, i32* %62, align 4
  br label %82

63:                                               ; preds = %29
  %64 = load i32, i32* %5, align 4
  %65 = ashr i32 %64, 16
  %66 = and i32 %65, 127
  %67 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %68 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 5
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* %5, align 4
  %72 = ashr i32 %71, 8
  %73 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %74 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 6
  store i32 %72, i32* %76, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %79 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 7
  store i32 %77, i32* %81, align 4
  br label %82

82:                                               ; preds = %63, %36
  %83 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %84 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 8
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, -33
  store i32 %88, i32* %86, align 4
  %89 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %90 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @DST_TYPE_HAS_OBS_REGS, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %82
  %96 = load i32, i32* %5, align 4
  %97 = icmp sgt i32 %96, 8000
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %100 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 8
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, 32
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %98, %95
  br label %106

106:                                              ; preds = %105, %82
  br label %164

107:                                              ; preds = %19
  %108 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %109 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @DST_TYPE_IS_CABLE, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %163

113:                                              ; preds = %107
  %114 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %115 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  %118 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %119 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @strncmp(i32 %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %139, label %123

123:                                              ; preds = %113
  %124 = load i32, i32* %5, align 4
  %125 = ashr i32 %124, 8
  %126 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %127 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 5
  store i32 %125, i32* %129, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %132 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 6
  store i32 %130, i32* %134, align 4
  %135 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %136 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %135, i32 0, i32 3
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 7
  store i32 0, i32* %138, align 4
  br label %162

139:                                              ; preds = %113
  %140 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %141 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @strncmp(i32 %142, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %161, label %145

145:                                              ; preds = %139
  %146 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %147 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 5
  store i32 0, i32* %149, align 4
  %150 = load i32, i32* %5, align 4
  %151 = ashr i32 %150, 8
  %152 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %153 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %152, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 6
  store i32 %151, i32* %155, align 4
  %156 = load i32, i32* %5, align 4
  %157 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %158 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %157, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 7
  store i32 %156, i32* %160, align 4
  br label %161

161:                                              ; preds = %145, %139
  br label %162

162:                                              ; preds = %161, %123
  br label %163

163:                                              ; preds = %162, %107
  br label %164

164:                                              ; preds = %163, %106
  store i32 0, i32* %3, align 4
  br label %165

165:                                              ; preds = %164, %16
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i32 @dprintk(i32, i8*, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
