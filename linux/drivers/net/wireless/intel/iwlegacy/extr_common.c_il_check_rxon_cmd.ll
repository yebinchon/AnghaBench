; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_check_rxon_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_check_rxon_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.il_rxon_cmd }
%struct.il_rxon_cmd = type { i32, i32*, i32*, i32, i32, i32, i32 }

@RXON_FLG_BAND_24G_MSK = common dso_local global i32 0, align 4
@RXON_FLG_TGJ_NARROW_BAND_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"check 2.4G: wrong narrow\0A\00", align 1
@RXON_FLG_RADAR_DETECT_MSK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"check 2.4G: wrong radar\0A\00", align 1
@RXON_FLG_SHORT_SLOT_MSK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"check 5.2G: not short slot!\0A\00", align 1
@RXON_FLG_CCK_MSK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"check 5.2G: CCK!\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"mac/bssid mcast!\0A\00", align 1
@RATE_6M_MASK = common dso_local global i32 0, align 4
@RATE_1M_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"neither 1 nor 6 are basic\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"aid > 2007\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"CCK and short slot\0A\00", align 1
@RXON_FLG_AUTO_DETECT_MSK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"CCK and auto detect\00", align 1
@RXON_FLG_TGG_PROTECT_MSK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"TGg but no auto-detect\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Tuning to channel %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Invalid RXON\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il_check_rxon_cmd(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_rxon_cmd*, align 8
  %5 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  %6 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %7 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %6, i32 0, i32 0
  store %struct.il_rxon_cmd* %7, %struct.il_rxon_cmd** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %9 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @RXON_FLG_BAND_24G_MSK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %1
  %15 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %16 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @RXON_FLG_TGJ_NARROW_BAND_MSK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 (i8*, ...) @IL_WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %23

23:                                               ; preds = %21, %14
  %24 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %25 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @RXON_FLG_RADAR_DETECT_MSK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = call i32 (i8*, ...) @IL_WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %32

32:                                               ; preds = %30, %23
  br label %52

33:                                               ; preds = %1
  %34 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %35 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @RXON_FLG_SHORT_SLOT_MSK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = call i32 (i8*, ...) @IL_WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %33
  %43 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %44 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @RXON_FLG_CCK_MSK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = call i32 (i8*, ...) @IL_WARN(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %42
  br label %52

52:                                               ; preds = %51, %32
  %53 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %54 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %59 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %57, %62
  %64 = and i32 %63, 1
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %52
  %67 = call i32 (i8*, ...) @IL_WARN(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %52
  %69 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %70 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @RATE_6M_MASK, align 4
  %73 = and i32 %71, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %77 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @RATE_1M_MASK, align 4
  %80 = and i32 %78, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = call i32 (i8*, ...) @IL_WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %84

84:                                               ; preds = %82, %75, %68
  %85 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %86 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le16_to_cpu(i32 %87)
  %89 = icmp sgt i32 %88, 2007
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = call i32 (i8*, ...) @IL_WARN(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %92

92:                                               ; preds = %90, %84
  %93 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %94 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @RXON_FLG_CCK_MSK, align 4
  %97 = load i32, i32* @RXON_FLG_SHORT_SLOT_MSK, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %95, %98
  %100 = load i32, i32* @RXON_FLG_CCK_MSK, align 4
  %101 = load i32, i32* @RXON_FLG_SHORT_SLOT_MSK, align 4
  %102 = or i32 %100, %101
  %103 = icmp eq i32 %99, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %92
  %105 = call i32 (i8*, ...) @IL_WARN(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %106

106:                                              ; preds = %104, %92
  %107 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %108 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @RXON_FLG_CCK_MSK, align 4
  %111 = load i32, i32* @RXON_FLG_AUTO_DETECT_MSK, align 4
  %112 = or i32 %110, %111
  %113 = and i32 %109, %112
  %114 = load i32, i32* @RXON_FLG_CCK_MSK, align 4
  %115 = load i32, i32* @RXON_FLG_AUTO_DETECT_MSK, align 4
  %116 = or i32 %114, %115
  %117 = icmp eq i32 %113, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %106
  %119 = call i32 (i8*, ...) @IL_WARN(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %120

120:                                              ; preds = %118, %106
  %121 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %122 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @RXON_FLG_AUTO_DETECT_MSK, align 4
  %125 = load i32, i32* @RXON_FLG_TGG_PROTECT_MSK, align 4
  %126 = or i32 %124, %125
  %127 = and i32 %123, %126
  %128 = load i32, i32* @RXON_FLG_TGG_PROTECT_MSK, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %120
  %131 = call i32 (i8*, ...) @IL_WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %132

132:                                              ; preds = %130, %120
  %133 = load i32, i32* %5, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %137 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @le16_to_cpu(i32 %138)
  %140 = call i32 (i8*, ...) @IL_WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %135, %132
  %142 = load i32, i32* %5, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = call i32 @IL_ERR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %2, align 4
  br label %149

148:                                              ; preds = %141
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %148, %144
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i32 @IL_WARN(i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @IL_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
