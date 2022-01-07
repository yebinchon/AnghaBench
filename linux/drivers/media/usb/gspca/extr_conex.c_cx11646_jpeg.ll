; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_conex.c_cx11646_jpeg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_conex.c_cx11646_jpeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@cxjpeg_640 = common dso_local global i32* null, align 8
@cxjpeg_352 = common dso_local global i32* null, align 8
@cxjpeg_320 = common dso_local global i32* null, align 8
@cxjpeg_176 = common dso_local global i32* null, align 8
@reg10 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Damned Errors sending jpeg Table\0A\00", align 1
@cxjpeg_qtable = common dso_local global i32* null, align 8
@reg12 = common dso_local global i32 0, align 4
@regE5_8 = common dso_local global i32 0, align 4
@regE5a = common dso_local global i32 0, align 4
@regE5b = common dso_local global i32 0, align 4
@regE5c = common dso_local global i32 0, align 4
@reg51 = common dso_local global i32 0, align 4
@reg70 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @cx11646_jpeg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx11646_jpeg(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = call i32 @reg_w_val(%struct.gspca_dev* %7, i32 192, i32 1)
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = call i32 @reg_w_val(%struct.gspca_dev* %9, i32 195, i32 0)
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %12 = call i32 @reg_w_val(%struct.gspca_dev* %11, i32 192, i32 0)
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %14 = call i32 @reg_r(%struct.gspca_dev* %13, i32 1, i32 1)
  store i32 8, i32* %4, align 4
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %16 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %20 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %67 [
    i32 0, label %25
    i32 1, label %46
    i32 3, label %88
  ]

25:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %42, %25
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 27
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %30, 26
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 2, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %35 = load i32*, i32** @cxjpeg_640, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @reg_w(%struct.gspca_dev* %34, i32 8, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %26

45:                                               ; preds = %26
  store i32 40, i32* %5, align 4
  br label %109

46:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %63, %46
  %48 = load i32, i32* %3, align 4
  %49 = icmp slt i32 %48, 27
  br i1 %49, label %50, label %66

50:                                               ; preds = %47
  %51 = load i32, i32* %3, align 4
  %52 = icmp eq i32 %51, 26
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 2, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %50
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %56 = load i32*, i32** @cxjpeg_352, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @reg_w(%struct.gspca_dev* %55, i32 8, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %54
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %47

66:                                               ; preds = %47
  store i32 22, i32* %5, align 4
  br label %109

67:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %84, %67
  %69 = load i32, i32* %3, align 4
  %70 = icmp slt i32 %69, 27
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  %72 = load i32, i32* %3, align 4
  %73 = icmp eq i32 %72, 26
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 2, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %71
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %77 = load i32*, i32** @cxjpeg_320, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @reg_w(%struct.gspca_dev* %76, i32 8, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %75
  %85 = load i32, i32* %3, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %3, align 4
  br label %68

87:                                               ; preds = %68
  store i32 20, i32* %5, align 4
  br label %109

88:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %105, %88
  %90 = load i32, i32* %3, align 4
  %91 = icmp slt i32 %90, 27
  br i1 %91, label %92, label %108

92:                                               ; preds = %89
  %93 = load i32, i32* %3, align 4
  %94 = icmp eq i32 %93, 26
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 2, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %92
  %97 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %98 = load i32*, i32** @cxjpeg_176, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @reg_w(%struct.gspca_dev* %97, i32 8, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %96
  %106 = load i32, i32* %3, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %3, align 4
  br label %89

108:                                              ; preds = %89
  store i32 11, i32* %5, align 4
  br label %109

109:                                              ; preds = %108, %87, %66, %45
  %110 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %111 = call i32 @reg_r(%struct.gspca_dev* %110, i32 2, i32 1)
  %112 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @reg_w_val(%struct.gspca_dev* %112, i32 85, i32 %113)
  %115 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %116 = call i32 @reg_r(%struct.gspca_dev* %115, i32 2, i32 1)
  %117 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %118 = load i32, i32* @reg10, align 4
  %119 = call i32 @reg_w(%struct.gspca_dev* %117, i32 16, i32 %118, i32 2)
  %120 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %121 = call i32 @reg_w_val(%struct.gspca_dev* %120, i32 84, i32 2)
  %122 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %123 = call i32 @reg_w_val(%struct.gspca_dev* %122, i32 84, i32 1)
  %124 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %125 = call i32 @reg_w_val(%struct.gspca_dev* %124, i32 0, i32 148)
  %126 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %127 = call i32 @reg_w_val(%struct.gspca_dev* %126, i32 83, i32 192)
  %128 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %129 = call i32 @reg_w_val(%struct.gspca_dev* %128, i32 252, i32 225)
  %130 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %131 = call i32 @reg_w_val(%struct.gspca_dev* %130, i32 0, i32 0)
  store i32 50, i32* %6, align 4
  br label %132

132:                                              ; preds = %145, %109
  %133 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %134 = call i32 @reg_r(%struct.gspca_dev* %133, i32 2, i32 1)
  %135 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %136 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %132
  br label %149

142:                                              ; preds = %132
  %143 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %144 = call i32 @reg_w_val(%struct.gspca_dev* %143, i32 83, i32 0)
  br label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %6, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %132, label %149

149:                                              ; preds = %145, %141
  %150 = load i32, i32* %6, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %154 = call i32 @gspca_err(%struct.gspca_dev* %153, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %155

155:                                              ; preds = %152, %149
  %156 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %157 = call i32 @reg_r(%struct.gspca_dev* %156, i32 1, i32 1)
  store i32 8, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %158

158:                                              ; preds = %174, %155
  %159 = load i32, i32* %3, align 4
  %160 = icmp slt i32 %159, 18
  br i1 %160, label %161, label %177

161:                                              ; preds = %158
  %162 = load i32, i32* %3, align 4
  %163 = icmp eq i32 %162, 17
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  store i32 2, i32* %4, align 4
  br label %165

165:                                              ; preds = %164, %161
  %166 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %167 = load i32*, i32** @cxjpeg_qtable, align 8
  %168 = load i32, i32* %3, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %4, align 4
  %173 = call i32 @reg_w(%struct.gspca_dev* %166, i32 8, i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %165
  %175 = load i32, i32* %3, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %3, align 4
  br label %158

177:                                              ; preds = %158
  %178 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %179 = call i32 @reg_r(%struct.gspca_dev* %178, i32 2, i32 1)
  %180 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %181 = call i32 @reg_r(%struct.gspca_dev* %180, i32 83, i32 1)
  %182 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %183 = call i32 @reg_w_val(%struct.gspca_dev* %182, i32 84, i32 2)
  %184 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %185 = call i32 @reg_w_val(%struct.gspca_dev* %184, i32 84, i32 1)
  %186 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %187 = call i32 @reg_w_val(%struct.gspca_dev* %186, i32 0, i32 148)
  %188 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %189 = call i32 @reg_w_val(%struct.gspca_dev* %188, i32 83, i32 192)
  %190 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %191 = call i32 @reg_r(%struct.gspca_dev* %190, i32 56, i32 1)
  %192 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %193 = call i32 @reg_r(%struct.gspca_dev* %192, i32 56, i32 1)
  %194 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %195 = call i32 @reg_r(%struct.gspca_dev* %194, i32 31, i32 1)
  %196 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %197 = load i32, i32* @reg12, align 4
  %198 = call i32 @reg_w(%struct.gspca_dev* %196, i32 18, i32 %197, i32 5)
  %199 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %200 = load i32, i32* @regE5_8, align 4
  %201 = call i32 @reg_w(%struct.gspca_dev* %199, i32 229, i32 %200, i32 8)
  %202 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %203 = call i32 @reg_r(%struct.gspca_dev* %202, i32 232, i32 8)
  %204 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %205 = load i32, i32* @regE5a, align 4
  %206 = call i32 @reg_w(%struct.gspca_dev* %204, i32 229, i32 %205, i32 4)
  %207 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %208 = call i32 @reg_r(%struct.gspca_dev* %207, i32 232, i32 1)
  %209 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %210 = call i32 @reg_w_val(%struct.gspca_dev* %209, i32 154, i32 1)
  %211 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %212 = load i32, i32* @regE5b, align 4
  %213 = call i32 @reg_w(%struct.gspca_dev* %211, i32 229, i32 %212, i32 4)
  %214 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %215 = call i32 @reg_r(%struct.gspca_dev* %214, i32 232, i32 1)
  %216 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %217 = load i32, i32* @regE5c, align 4
  %218 = call i32 @reg_w(%struct.gspca_dev* %216, i32 229, i32 %217, i32 4)
  %219 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %220 = call i32 @reg_r(%struct.gspca_dev* %219, i32 232, i32 1)
  %221 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %222 = load i32, i32* @reg51, align 4
  %223 = call i32 @reg_w(%struct.gspca_dev* %221, i32 81, i32 %222, i32 2)
  %224 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %225 = load i32, i32* @reg10, align 4
  %226 = call i32 @reg_w(%struct.gspca_dev* %224, i32 16, i32 %225, i32 2)
  %227 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %228 = load i32, i32* @reg70, align 4
  %229 = call i32 @reg_w_val(%struct.gspca_dev* %227, i32 112, i32 %228)
  ret void
}

declare dso_local i32 @reg_w_val(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
