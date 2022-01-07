; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ves1820.c_ves1820_set_symbolrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ves1820.c_ves1820_set_symbolrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ves1820_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ves1820_inittab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ves1820_state*, i32)* @ves1820_set_symbolrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ves1820_set_symbolrate(%struct.ves1820_state* %0, i32 %1) #0 {
  %3 = alloca %struct.ves1820_state*, align 8
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
  store %struct.ves1820_state* %0, %struct.ves1820_state** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.ves1820_state*, %struct.ves1820_state** %3, align 8
  %16 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %19, 2
  %21 = icmp sgt i32 %14, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.ves1820_state*, %struct.ves1820_state** %3, align 8
  %24 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 2
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %22, %2
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 500000
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 500000, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.ves1820_state*, %struct.ves1820_state** %3, align 8
  %36 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %39, 16
  %41 = icmp slt i32 %34, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 1, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %33
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.ves1820_state*, %struct.ves1820_state** %3, align 8
  %46 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %49, 32
  %51 = icmp slt i32 %44, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store i32 2, i32* %8, align 4
  br label %53

53:                                               ; preds = %52, %43
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.ves1820_state*, %struct.ves1820_state** %3, align 8
  %56 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sdiv i32 %59, 64
  %61 = icmp slt i32 %54, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i32 3, i32* %8, align 4
  br label %63

63:                                               ; preds = %62, %53
  %64 = load %struct.ves1820_state*, %struct.ves1820_state** %3, align 8
  %65 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 10
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @do_div(i32 %73, i32 123)
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %63
  store i32 1, i32* %7, align 4
  br label %79

79:                                               ; preds = %78, %63
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @do_div(i32 %81, i32 160)
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %86, %79
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @do_div(i32 %89, i32 246)
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  store i32 1, i32* %7, align 4
  br label %95

95:                                               ; preds = %94, %87
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @do_div(i32 %97, i32 320)
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  store i32 0, i32* %7, align 4
  br label %103

103:                                              ; preds = %102, %95
  %104 = load i32, i32* %13, align 4
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @do_div(i32 %105, i32 492)
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  store i32 1, i32* %7, align 4
  br label %111

111:                                              ; preds = %110, %103
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @do_div(i32 %113, i32 640)
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  store i32 0, i32* %7, align 4
  br label %119

119:                                              ; preds = %118, %111
  %120 = load i32, i32* %13, align 4
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @do_div(i32 %121, i32 984)
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  store i32 1, i32* %7, align 4
  br label %127

127:                                              ; preds = %126, %119
  %128 = load %struct.ves1820_state*, %struct.ves1820_state** %3, align 8
  %129 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %128, i32 0, i32 0
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = ashr i32 %132, 4
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %4, align 4
  %136 = shl i32 %135, %134
  store i32 %136, i32* %4, align 4
  %137 = load i32, i32* %4, align 4
  %138 = shl i32 %137, 4
  %139 = load i32, i32* %10, align 4
  %140 = sdiv i32 %138, %139
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %4, align 4
  %142 = shl i32 %141, 4
  %143 = load i32, i32* %10, align 4
  %144 = srem i32 %142, %143
  %145 = shl i32 %144, 8
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* %9, align 4
  %147 = shl i32 %146, 8
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %10, align 4
  %150 = sdiv i32 %148, %149
  %151 = add nsw i32 %147, %150
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* %10, align 4
  %154 = srem i32 %152, %153
  %155 = shl i32 %154, 8
  store i32 %155, i32* %11, align 4
  %156 = load i32, i32* %9, align 4
  %157 = shl i32 %156, 8
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @DIV_ROUND_CLOSEST(i32 %158, i32 %159)
  %161 = add nsw i32 %157, %160
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %9, align 4
  store i32 %162, i32* %5, align 4
  %163 = load %struct.ves1820_state*, %struct.ves1820_state** %3, align 8
  %164 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %163, i32 0, i32 0
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = shl i32 %167, 5
  %169 = load i32, i32* %4, align 4
  %170 = sdiv i32 %168, %169
  %171 = add nsw i32 %170, 1
  %172 = sdiv i32 %171, 2
  store i32 %172, i32* %6, align 4
  %173 = load i32, i32* %6, align 4
  %174 = icmp sgt i32 %173, 255
  br i1 %174, label %175, label %176

175:                                              ; preds = %127
  store i32 255, i32* %6, align 4
  br label %176

176:                                              ; preds = %175, %127
  %177 = load i32, i32* %7, align 4
  %178 = shl i32 %177, 4
  %179 = load i32*, i32** @ves1820_inittab, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 14
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %178, %181
  store i32 %182, i32* %7, align 4
  %183 = load i32, i32* %8, align 4
  %184 = shl i32 %183, 6
  %185 = load i32*, i32** @ves1820_inittab, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 3
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %184, %187
  store i32 %188, i32* %8, align 4
  %189 = load %struct.ves1820_state*, %struct.ves1820_state** %3, align 8
  %190 = load i32, i32* %8, align 4
  %191 = call i32 @ves1820_writereg(%struct.ves1820_state* %189, i32 3, i32 %190)
  %192 = load %struct.ves1820_state*, %struct.ves1820_state** %3, align 8
  %193 = load i32, i32* %5, align 4
  %194 = and i32 %193, 255
  %195 = call i32 @ves1820_writereg(%struct.ves1820_state* %192, i32 10, i32 %194)
  %196 = load %struct.ves1820_state*, %struct.ves1820_state** %3, align 8
  %197 = load i32, i32* %5, align 4
  %198 = ashr i32 %197, 8
  %199 = and i32 %198, 255
  %200 = call i32 @ves1820_writereg(%struct.ves1820_state* %196, i32 11, i32 %199)
  %201 = load %struct.ves1820_state*, %struct.ves1820_state** %3, align 8
  %202 = load i32, i32* %5, align 4
  %203 = ashr i32 %202, 16
  %204 = and i32 %203, 63
  %205 = call i32 @ves1820_writereg(%struct.ves1820_state* %201, i32 12, i32 %204)
  %206 = load %struct.ves1820_state*, %struct.ves1820_state** %3, align 8
  %207 = load i32, i32* %6, align 4
  %208 = call i32 @ves1820_writereg(%struct.ves1820_state* %206, i32 13, i32 %207)
  %209 = load %struct.ves1820_state*, %struct.ves1820_state** %3, align 8
  %210 = load i32, i32* %7, align 4
  %211 = call i32 @ves1820_writereg(%struct.ves1820_state* %209, i32 14, i32 %210)
  ret i32 0
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @ves1820_writereg(%struct.ves1820_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
