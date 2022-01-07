; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-core.c_set_tvaudio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-core.c_set_tvaudio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32, i8*, i32 }
%struct.TYPE_2__ = type { i64 }

@CX88_VMUX_TELEVISION = common dso_local global i64 0, align 8
@CX88_VMUX_CABLE = common dso_local global i64 0, align 8
@V4L2_STD_PAL_BG = common dso_local global i32 0, align 4
@WW_BG = common dso_local global i8* null, align 8
@V4L2_STD_PAL_DK = common dso_local global i32 0, align 4
@WW_DK = common dso_local global i8* null, align 8
@V4L2_STD_PAL_I = common dso_local global i32 0, align 4
@WW_I = common dso_local global i8* null, align 8
@V4L2_STD_SECAM_L = common dso_local global i32 0, align 4
@WW_L = common dso_local global i8* null, align 8
@V4L2_STD_SECAM_B = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_G = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_H = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_DK = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_M = common dso_local global i32 0, align 4
@V4L2_STD_PAL_M = common dso_local global i32 0, align 4
@WW_BTSC = common dso_local global i8* null, align 8
@V4L2_STD_NTSC_M_JP = common dso_local global i32 0, align 4
@WW_EIAJ = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [57 x i8] c"tvaudio support needs work for this tv norm [%s], sorry\0A\00", align 1
@WW_NONE = common dso_local global i8* null, align 8
@MO_AFECFG_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx88_core*)* @set_tvaudio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_tvaudio(%struct.cx88_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_2__, align 8
  %6 = alloca %struct.TYPE_2__, align 8
  store %struct.cx88_core* %0, %struct.cx88_core** %3, align 8
  %7 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %8 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %11 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @INPUT(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i64 %13, i64* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CX88_VMUX_TELEVISION, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %21 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @INPUT(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CX88_VMUX_CABLE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %134

30:                                               ; preds = %19, %1
  %31 = load i32, i32* @V4L2_STD_PAL_BG, align 4
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i8*, i8** @WW_BG, align 8
  %37 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %38 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  br label %127

39:                                               ; preds = %30
  %40 = load i32, i32* @V4L2_STD_PAL_DK, align 4
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i8*, i8** @WW_DK, align 8
  %46 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %47 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  br label %126

48:                                               ; preds = %39
  %49 = load i32, i32* @V4L2_STD_PAL_I, align 4
  %50 = load i32, i32* %4, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i8*, i8** @WW_I, align 8
  %55 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %56 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  br label %125

57:                                               ; preds = %48
  %58 = load i32, i32* @V4L2_STD_SECAM_L, align 4
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i8*, i8** @WW_L, align 8
  %64 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %65 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  br label %124

66:                                               ; preds = %57
  %67 = load i32, i32* @V4L2_STD_SECAM_B, align 4
  %68 = load i32, i32* @V4L2_STD_SECAM_G, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @V4L2_STD_SECAM_H, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %4, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load i8*, i8** @WW_BG, align 8
  %77 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %78 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  br label %123

79:                                               ; preds = %66
  %80 = load i32, i32* @V4L2_STD_SECAM_DK, align 4
  %81 = load i32, i32* %4, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i8*, i8** @WW_DK, align 8
  %86 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %87 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  br label %122

88:                                               ; preds = %79
  %89 = load i32, i32* @V4L2_STD_NTSC_M, align 4
  %90 = load i32, i32* %4, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* @V4L2_STD_PAL_M, align 4
  %95 = load i32, i32* %4, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93, %88
  %99 = load i8*, i8** @WW_BTSC, align 8
  %100 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %101 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  br label %121

102:                                              ; preds = %93
  %103 = load i32, i32* @V4L2_STD_NTSC_M_JP, align 4
  %104 = load i32, i32* %4, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i8*, i8** @WW_EIAJ, align 8
  %109 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %110 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  br label %120

111:                                              ; preds = %102
  %112 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %113 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @v4l2_norm_to_name(i32 %114)
  %116 = call i32 @pr_info(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %115)
  %117 = load i8*, i8** @WW_NONE, align 8
  %118 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %119 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %118, i32 0, i32 1
  store i8* %117, i8** %119, align 8
  store i32 0, i32* %2, align 4
  br label %134

120:                                              ; preds = %107
  br label %121

121:                                              ; preds = %120, %98
  br label %122

122:                                              ; preds = %121, %84
  br label %123

123:                                              ; preds = %122, %75
  br label %124

124:                                              ; preds = %123, %62
  br label %125

125:                                              ; preds = %124, %53
  br label %126

126:                                              ; preds = %125, %44
  br label %127

127:                                              ; preds = %126, %35
  %128 = load i32, i32* @MO_AFECFG_IO, align 4
  %129 = call i32 @cx_andor(i32 %128, i32 31, i32 0)
  %130 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %131 = call i32 @cx88_set_tvaudio(%struct.cx88_core* %130)
  %132 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %133 = call i32 @cx88_start_audio_dma(%struct.cx88_core* %132)
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %127, %111, %29
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i64 @INPUT(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @v4l2_norm_to_name(i32) #1

declare dso_local i32 @cx_andor(i32, i32, i32) #1

declare dso_local i32 @cx88_set_tvaudio(%struct.cx88_core*) #1

declare dso_local i32 @cx88_start_audio_dma(%struct.cx88_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
