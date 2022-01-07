; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_miro_pinnacle_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_miro_pinnacle_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32, i32, i32, %struct.TYPE_4__, i8*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@I2C_ADDR_MSP3400 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"MSP34xx\00", align 1
@miro_tunermap = common dso_local global i32* null, align 8
@miro_fmtuner = common dso_local global i32* null, align 8
@BTTV_BOARD_MIRO = common dso_local global i64 0, align 8
@BTTV_BOARD_MIROPRO = common dso_local global i64 0, align 8
@BTTV_BOARD_PINNACLE = common dso_local global i64 0, align 8
@BTTV_BOARD_PINNACLEPRO = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"%d: miro: id=%d tuner=%d radio=%s stereo=%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"tea575x\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"fmtuner\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"PAL / mono\00", align 1
@TDA9887_INTERCARRIER = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"PAL+SECAM / stereo\00", align 1
@TDA9887_QSS = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c"NTSC / stereo\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"PAL+SECAM / mono\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"NTSC / mono\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"PAL / stereo\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"oops: unknown card\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"%d: pinnacle/mt: id=%d info=\22%s\22 radio=%s\0A\00", align 1
@TUNER_MT2032 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*)* @miro_pinnacle_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @miro_pinnacle_gpio(%struct.bttv* %0) #0 {
  %2 = alloca %struct.bttv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.bttv* %0, %struct.bttv** %2, align 8
  %7 = call i32 @gpio_inout(i32 16777215, i32 0)
  %8 = call i32 (...) @gpio_read()
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = ashr i32 %9, 10
  %11 = and i32 %10, 63
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %3, align 4
  %13 = load %struct.bttv*, %struct.bttv** %2, align 8
  %14 = load i32, i32* @I2C_ADDR_MSP3400, align 4
  %15 = call i32 @bttv_I2CRead(%struct.bttv* %13, i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 32
  br i1 %17, label %18, label %119

18:                                               ; preds = %1
  %19 = load i32*, i32** @miro_tunermap, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bttv*, %struct.bttv** %2, align 8
  %25 = getelementptr inbounds %struct.bttv, %struct.bttv* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 32
  %28 = icmp eq i32 0, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %18
  %30 = load %struct.bttv*, %struct.bttv** %2, align 8
  %31 = getelementptr inbounds %struct.bttv, %struct.bttv* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load i32*, i32** @miro_fmtuner, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %55, label %38

38:                                               ; preds = %29
  %39 = load %struct.bttv*, %struct.bttv** %2, align 8
  %40 = getelementptr inbounds %struct.bttv, %struct.bttv* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load %struct.bttv*, %struct.bttv** %2, align 8
  %42 = getelementptr inbounds %struct.bttv, %struct.bttv* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 6, i32* %43, align 8
  %44 = load %struct.bttv*, %struct.bttv** %2, align 8
  %45 = getelementptr inbounds %struct.bttv, %struct.bttv* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i32 7, i32* %46, align 4
  %47 = load %struct.bttv*, %struct.bttv** %2, align 8
  %48 = getelementptr inbounds %struct.bttv, %struct.bttv* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store i32 8, i32* %49, align 8
  %50 = load %struct.bttv*, %struct.bttv** %2, align 8
  %51 = getelementptr inbounds %struct.bttv, %struct.bttv* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  store i32 9, i32* %52, align 4
  %53 = load %struct.bttv*, %struct.bttv** %2, align 8
  %54 = call i32 @tea575x_init(%struct.bttv* %53)
  br label %55

55:                                               ; preds = %38, %29
  br label %59

56:                                               ; preds = %18
  %57 = load %struct.bttv*, %struct.bttv** %2, align 8
  %58 = getelementptr inbounds %struct.bttv, %struct.bttv* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %55
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 -1, %60
  br i1 %61, label %62, label %88

62:                                               ; preds = %59
  %63 = load %struct.bttv*, %struct.bttv** %2, align 8
  %64 = getelementptr inbounds %struct.bttv, %struct.bttv* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @BTTV_BOARD_MIRO, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load i64, i64* @BTTV_BOARD_MIROPRO, align 8
  %71 = load %struct.bttv*, %struct.bttv** %2, align 8
  %72 = getelementptr inbounds %struct.bttv, %struct.bttv* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  br label %74

74:                                               ; preds = %69, %62
  %75 = load %struct.bttv*, %struct.bttv** %2, align 8
  %76 = getelementptr inbounds %struct.bttv, %struct.bttv* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @BTTV_BOARD_PINNACLE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load i8*, i8** @BTTV_BOARD_PINNACLEPRO, align 8
  %83 = ptrtoint i8* %82 to i64
  %84 = load %struct.bttv*, %struct.bttv** %2, align 8
  %85 = getelementptr inbounds %struct.bttv, %struct.bttv* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i64 %83, i64* %86, align 8
  br label %87

87:                                               ; preds = %81, %74
  br label %88

88:                                               ; preds = %87, %59
  %89 = load %struct.bttv*, %struct.bttv** %2, align 8
  %90 = getelementptr inbounds %struct.bttv, %struct.bttv* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, 1
  %95 = load %struct.bttv*, %struct.bttv** %2, align 8
  %96 = getelementptr inbounds %struct.bttv, %struct.bttv* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i8*
  %100 = load %struct.bttv*, %struct.bttv** %2, align 8
  %101 = getelementptr inbounds %struct.bttv, %struct.bttv* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %88
  br label %112

105:                                              ; preds = %88
  %106 = load %struct.bttv*, %struct.bttv** %2, align 8
  %107 = getelementptr inbounds %struct.bttv, %struct.bttv* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  br label %112

112:                                              ; preds = %105, %104
  %113 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %104 ], [ %111, %105 ]
  %114 = load i32, i32* %4, align 4
  %115 = icmp eq i32 -1, %114
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %118 = call i32 (i8*, i32, i32, i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %94, i8* %99, i8* %113, i8* %117)
  br label %184

119:                                              ; preds = %1
  %120 = load i32, i32* %3, align 4
  %121 = sub nsw i32 63, %120
  store i32 %121, i32* %3, align 4
  %122 = load %struct.bttv*, %struct.bttv** %2, align 8
  %123 = getelementptr inbounds %struct.bttv, %struct.bttv* %122, i32 0, i32 0
  store i32 0, i32* %123, align 8
  %124 = load i32, i32* %3, align 4
  switch i32 %124, label %157 [
    i32 1, label %125
    i32 2, label %129
    i32 3, label %135
    i32 4, label %141
    i32 5, label %145
    i32 6, label %149
    i32 7, label %153
  ]

125:                                              ; preds = %119
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  %126 = load i8*, i8** @TDA9887_INTERCARRIER, align 8
  %127 = load %struct.bttv*, %struct.bttv** %2, align 8
  %128 = getelementptr inbounds %struct.bttv, %struct.bttv* %127, i32 0, i32 4
  store i8* %126, i8** %128, align 8
  br label %158

129:                                              ; preds = %119
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  %130 = load %struct.bttv*, %struct.bttv** %2, align 8
  %131 = getelementptr inbounds %struct.bttv, %struct.bttv* %130, i32 0, i32 0
  store i32 1, i32* %131, align 8
  %132 = load i8*, i8** @TDA9887_QSS, align 8
  %133 = load %struct.bttv*, %struct.bttv** %2, align 8
  %134 = getelementptr inbounds %struct.bttv, %struct.bttv* %133, i32 0, i32 4
  store i8* %132, i8** %134, align 8
  br label %158

135:                                              ; preds = %119
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  %136 = load %struct.bttv*, %struct.bttv** %2, align 8
  %137 = getelementptr inbounds %struct.bttv, %struct.bttv* %136, i32 0, i32 0
  store i32 1, i32* %137, align 8
  %138 = load i8*, i8** @TDA9887_QSS, align 8
  %139 = load %struct.bttv*, %struct.bttv** %2, align 8
  %140 = getelementptr inbounds %struct.bttv, %struct.bttv* %139, i32 0, i32 4
  store i8* %138, i8** %140, align 8
  br label %158

141:                                              ; preds = %119
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8** %6, align 8
  %142 = load i8*, i8** @TDA9887_QSS, align 8
  %143 = load %struct.bttv*, %struct.bttv** %2, align 8
  %144 = getelementptr inbounds %struct.bttv, %struct.bttv* %143, i32 0, i32 4
  store i8* %142, i8** %144, align 8
  br label %158

145:                                              ; preds = %119
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8** %6, align 8
  %146 = load i8*, i8** @TDA9887_INTERCARRIER, align 8
  %147 = load %struct.bttv*, %struct.bttv** %2, align 8
  %148 = getelementptr inbounds %struct.bttv, %struct.bttv* %147, i32 0, i32 4
  store i8* %146, i8** %148, align 8
  br label %158

149:                                              ; preds = %119
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  %150 = load i8*, i8** @TDA9887_INTERCARRIER, align 8
  %151 = load %struct.bttv*, %struct.bttv** %2, align 8
  %152 = getelementptr inbounds %struct.bttv, %struct.bttv* %151, i32 0, i32 4
  store i8* %150, i8** %152, align 8
  br label %158

153:                                              ; preds = %119
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8** %6, align 8
  %154 = load i8*, i8** @TDA9887_INTERCARRIER, align 8
  %155 = load %struct.bttv*, %struct.bttv** %2, align 8
  %156 = getelementptr inbounds %struct.bttv, %struct.bttv* %155, i32 0, i32 4
  store i8* %154, i8** %156, align 8
  br label %158

157:                                              ; preds = %119
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8** %6, align 8
  br label %158

158:                                              ; preds = %157, %153, %149, %145, %141, %135, %129, %125
  %159 = load i32, i32* %4, align 4
  %160 = icmp ne i32 -1, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = load i8*, i8** @BTTV_BOARD_PINNACLEPRO, align 8
  %163 = ptrtoint i8* %162 to i64
  %164 = load %struct.bttv*, %struct.bttv** %2, align 8
  %165 = getelementptr inbounds %struct.bttv, %struct.bttv* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  store i64 %163, i64* %166, align 8
  br label %167

167:                                              ; preds = %161, %158
  %168 = load %struct.bttv*, %struct.bttv** %2, align 8
  %169 = getelementptr inbounds %struct.bttv, %struct.bttv* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %3, align 4
  %173 = load i8*, i8** %6, align 8
  %174 = load %struct.bttv*, %struct.bttv** %2, align 8
  %175 = getelementptr inbounds %struct.bttv, %struct.bttv* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %180 = call i32 (i8*, i32, i32, i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i32 %171, i32 %172, i8* %173, i8* %179)
  %181 = load i32, i32* @TUNER_MT2032, align 4
  %182 = load %struct.bttv*, %struct.bttv** %2, align 8
  %183 = getelementptr inbounds %struct.bttv, %struct.bttv* %182, i32 0, i32 2
  store i32 %181, i32* %183, align 8
  br label %184

184:                                              ; preds = %167, %112
  ret void
}

declare dso_local i32 @gpio_inout(i32, i32) #1

declare dso_local i32 @gpio_read(...) #1

declare dso_local i32 @bttv_I2CRead(%struct.bttv*, i32, i8*) #1

declare dso_local i32 @tea575x_init(%struct.bttv*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
