; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_antenna.c_ath_ant_set_alt_ratio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_antenna.c_ath_ant_set_alt_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_ant_comb = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.ath_hw_antcomb_conf = type { i64, i64 }

@ATH_ANT_DIV_COMB_LNA1 = common dso_local global i64 0, align 8
@ATH_ANT_DIV_COMB_LNA2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_ant_comb*, %struct.ath_hw_antcomb_conf*)* @ath_ant_set_alt_ratio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_ant_set_alt_ratio(%struct.ath_ant_comb* %0, %struct.ath_hw_antcomb_conf* %1) #0 {
  %3 = alloca %struct.ath_ant_comb*, align 8
  %4 = alloca %struct.ath_hw_antcomb_conf*, align 8
  store %struct.ath_ant_comb* %0, %struct.ath_ant_comb** %3, align 8
  store %struct.ath_hw_antcomb_conf* %1, %struct.ath_hw_antcomb_conf** %4, align 8
  %5 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %3, align 8
  %6 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %5, i32 0, i32 6
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %91

9:                                                ; preds = %2
  %10 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %3, align 8
  %11 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %91

14:                                               ; preds = %9
  %15 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %3, align 8
  %16 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %3, align 8
  %19 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %56

22:                                               ; preds = %14
  %23 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %3, align 8
  %24 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ATH_ANT_DIV_COMB_LNA1, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %3, align 8
  %30 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ATH_ANT_DIV_COMB_LNA2, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %28, %22
  %35 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %36 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ATH_ANT_DIV_COMB_LNA2, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i64, i64* @ATH_ANT_DIV_COMB_LNA1, align 8
  %42 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %43 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  br label %48

44:                                               ; preds = %34
  %45 = load i64, i64* @ATH_ANT_DIV_COMB_LNA2, align 8
  %46 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %47 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %44, %40
  br label %55

49:                                               ; preds = %28
  %50 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %3, align 8
  %51 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %54 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %49, %48
  br label %90

56:                                               ; preds = %14
  %57 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %3, align 8
  %58 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ATH_ANT_DIV_COMB_LNA1, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %3, align 8
  %64 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ATH_ANT_DIV_COMB_LNA2, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %62, %56
  %69 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %70 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @ATH_ANT_DIV_COMB_LNA2, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i64, i64* @ATH_ANT_DIV_COMB_LNA1, align 8
  %76 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %77 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  br label %82

78:                                               ; preds = %68
  %79 = load i64, i64* @ATH_ANT_DIV_COMB_LNA2, align 8
  %80 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %81 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %78, %74
  br label %89

83:                                               ; preds = %62
  %84 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %3, align 8
  %85 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %88 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %83, %82
  br label %90

90:                                               ; preds = %89, %55
  br label %205

91:                                               ; preds = %9, %2
  %92 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %3, align 8
  %93 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %92, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %130

96:                                               ; preds = %91
  %97 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %3, align 8
  %98 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @ATH_ANT_DIV_COMB_LNA1, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %108, label %102

102:                                              ; preds = %96
  %103 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %3, align 8
  %104 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @ATH_ANT_DIV_COMB_LNA2, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %123

108:                                              ; preds = %102, %96
  %109 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %110 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @ATH_ANT_DIV_COMB_LNA2, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load i64, i64* @ATH_ANT_DIV_COMB_LNA1, align 8
  %116 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %117 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  br label %122

118:                                              ; preds = %108
  %119 = load i64, i64* @ATH_ANT_DIV_COMB_LNA2, align 8
  %120 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %121 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %118, %114
  br label %129

123:                                              ; preds = %102
  %124 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %3, align 8
  %125 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %128 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %127, i32 0, i32 1
  store i64 %126, i64* %128, align 8
  br label %129

129:                                              ; preds = %123, %122
  br label %204

130:                                              ; preds = %91
  %131 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %3, align 8
  %132 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %131, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %169

135:                                              ; preds = %130
  %136 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %3, align 8
  %137 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @ATH_ANT_DIV_COMB_LNA1, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %147, label %141

141:                                              ; preds = %135
  %142 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %3, align 8
  %143 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @ATH_ANT_DIV_COMB_LNA2, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %162

147:                                              ; preds = %141, %135
  %148 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %149 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @ATH_ANT_DIV_COMB_LNA2, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load i64, i64* @ATH_ANT_DIV_COMB_LNA1, align 8
  %155 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %156 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %155, i32 0, i32 1
  store i64 %154, i64* %156, align 8
  br label %161

157:                                              ; preds = %147
  %158 = load i64, i64* @ATH_ANT_DIV_COMB_LNA2, align 8
  %159 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %160 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %159, i32 0, i32 1
  store i64 %158, i64* %160, align 8
  br label %161

161:                                              ; preds = %157, %153
  br label %168

162:                                              ; preds = %141
  %163 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %3, align 8
  %164 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %167 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %166, i32 0, i32 1
  store i64 %165, i64* %167, align 8
  br label %168

168:                                              ; preds = %162, %161
  br label %203

169:                                              ; preds = %130
  %170 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %3, align 8
  %171 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %170, i32 0, i32 4
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @ATH_ANT_DIV_COMB_LNA1, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %181, label %175

175:                                              ; preds = %169
  %176 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %3, align 8
  %177 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %176, i32 0, i32 4
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @ATH_ANT_DIV_COMB_LNA2, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %196

181:                                              ; preds = %175, %169
  %182 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %183 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @ATH_ANT_DIV_COMB_LNA2, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %181
  %188 = load i64, i64* @ATH_ANT_DIV_COMB_LNA1, align 8
  %189 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %190 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %189, i32 0, i32 1
  store i64 %188, i64* %190, align 8
  br label %195

191:                                              ; preds = %181
  %192 = load i64, i64* @ATH_ANT_DIV_COMB_LNA2, align 8
  %193 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %194 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %193, i32 0, i32 1
  store i64 %192, i64* %194, align 8
  br label %195

195:                                              ; preds = %191, %187
  br label %202

196:                                              ; preds = %175
  %197 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %3, align 8
  %198 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %197, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %201 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %200, i32 0, i32 1
  store i64 %199, i64* %201, align 8
  br label %202

202:                                              ; preds = %196, %195
  br label %203

203:                                              ; preds = %202, %168
  br label %204

204:                                              ; preds = %203, %129
  br label %205

205:                                              ; preds = %204, %90
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
