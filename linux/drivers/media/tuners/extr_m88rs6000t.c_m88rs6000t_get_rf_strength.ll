; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_m88rs6000t.c_m88rs6000t_get_rf_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_m88rs6000t.c_m88rs6000t_get_rf_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.m88rs6000t_dev* }
%struct.m88rs6000t_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@__const.m88rs6000t_get_rf_strength.RFGS = private unnamed_addr constant [13 x i32] [i32 0, i32 245, i32 266, i32 268, i32 270, i32 285, i32 298, i32 295, i32 283, i32 285, i32 285, i32 300, i32 300], align 16
@__const.m88rs6000t_get_rf_strength.IFGS = private unnamed_addr constant [12 x i32] [i32 0, i32 300, i32 230, i32 270, i32 270, i32 285, i32 295, i32 285, i32 290, i32 295, i32 295, i32 310], align 16
@__const.m88rs6000t_get_rf_strength.BBGS = private unnamed_addr constant [14 x i32] [i32 0, i32 286, i32 275, i32 290, i32 294, i32 300, i32 290, i32 290, i32 285, i32 283, i32 260, i32 295, i32 290, i32 260], align 16
@.str = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @m88rs6000t_get_rf_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88rs6000t_get_rf_strength(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.m88rs6000t_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [13 x i32], align 16
  %26 = alloca [12 x i32], align 16
  %27 = alloca [14 x i32], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %29 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %28, i32 0, i32 0
  %30 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %29, align 8
  store %struct.m88rs6000t_dev* %30, %struct.m88rs6000t_dev** %5, align 8
  store i32 46, i32* %10, align 4
  store i32 290, i32* %11, align 4
  store i32 290, i32* %12, align 4
  store i32 1200, i32* %13, align 4
  store i32 1100, i32* %14, align 4
  store i32 300, i32* %15, align 4
  store i32 300, i32* %16, align 4
  store i32 300, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %31 = bitcast [13 x i32]* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %31, i8* align 16 bitcast ([13 x i32]* @__const.m88rs6000t_get_rf_strength.RFGS to i8*), i64 52, i1 false)
  %32 = bitcast [12 x i32]* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %32, i8* align 16 bitcast ([12 x i32]* @__const.m88rs6000t_get_rf_strength.IFGS to i8*), i64 48, i1 false)
  %33 = bitcast [14 x i32]* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %33, i8* align 16 bitcast ([14 x i32]* @__const.m88rs6000t_get_rf_strength.BBGS to i8*), i64 56, i1 false)
  %34 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %5, align 8
  %35 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @regmap_read(i32 %36, i32 90, i32* %6)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  br label %185

41:                                               ; preds = %2
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, 15
  store i32 %43, i32* %13, align 4
  %44 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %5, align 8
  %45 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @regmap_read(i32 %46, i32 95, i32* %6)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %185

51:                                               ; preds = %41
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, 15
  store i32 %53, i32* %14, align 4
  %54 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %5, align 8
  %55 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @regmap_read(i32 %56, i32 63, i32* %6)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %185

61:                                               ; preds = %51
  %62 = load i32, i32* %6, align 4
  %63 = lshr i32 %62, 4
  %64 = and i32 %63, 7
  store i32 %64, i32* %17, align 4
  %65 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %5, align 8
  %66 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @regmap_read(i32 %67, i32 119, i32* %6)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %185

72:                                               ; preds = %61
  %73 = load i32, i32* %6, align 4
  %74 = lshr i32 %73, 4
  %75 = and i32 %74, 15
  store i32 %75, i32* %15, align 4
  %76 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %5, align 8
  %77 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @regmap_read(i32 %78, i32 118, i32* %6)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  br label %185

83:                                               ; preds = %72
  %84 = load i32, i32* %6, align 4
  %85 = and i32 %84, 63
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %16, align 4
  %87 = ashr i32 %86, 2
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %16, align 4
  %89 = and i32 %88, 3
  store i32 %89, i32* %19, align 4
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %101, %83
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp ule i32 %91, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %90
  %95 = load i32, i32* %7, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [13 x i32], [13 x i32]* %25, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %20, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %20, align 4
  br label %101

101:                                              ; preds = %94
  %102 = load i32, i32* %7, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %90

104:                                              ; preds = %90
  %105 = load i32, i32* %13, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, i32* %20, align 4
  %109 = add nsw i32 %108, 400
  store i32 %109, i32* %20, align 4
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i32, i32* %13, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32, i32* %20, align 4
  %115 = add nsw i32 %114, 300
  store i32 %115, i32* %20, align 4
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i32, i32* %13, align 4
  %118 = icmp eq i32 %117, 2
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32, i32* %20, align 4
  %121 = add nsw i32 %120, 200
  store i32 %121, i32* %20, align 4
  br label %122

122:                                              ; preds = %119, %116
  %123 = load i32, i32* %13, align 4
  %124 = icmp eq i32 %123, 3
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, i32* %20, align 4
  %127 = add nsw i32 %126, 100
  store i32 %127, i32* %20, align 4
  br label %128

128:                                              ; preds = %125, %122
  store i32 0, i32* %7, align 4
  br label %129

129:                                              ; preds = %140, %128
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %14, align 4
  %132 = icmp ule i32 %130, %131
  br i1 %132, label %133, label %143

133:                                              ; preds = %129
  %134 = load i32, i32* %7, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds [12 x i32], [12 x i32]* %26, i64 0, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %21, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %21, align 4
  br label %140

140:                                              ; preds = %133
  %141 = load i32, i32* %7, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %7, align 4
  br label %129

143:                                              ; preds = %129
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* %12, align 4
  %146 = mul nsw i32 %144, %145
  store i32 %146, i32* %24, align 4
  store i32 0, i32* %7, align 4
  br label %147

147:                                              ; preds = %158, %143
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %15, align 4
  %150 = icmp ule i32 %148, %149
  br i1 %150, label %151, label %161

151:                                              ; preds = %147
  %152 = load i32, i32* %7, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds [14 x i32], [14 x i32]* %27, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %22, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %22, align 4
  br label %158

158:                                              ; preds = %151
  %159 = load i32, i32* %7, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %7, align 4
  br label %147

161:                                              ; preds = %147
  %162 = load i32, i32* %18, align 4
  %163 = load i32, i32* %10, align 4
  %164 = mul nsw i32 %162, %163
  %165 = load i32, i32* %19, align 4
  %166 = load i32, i32* %11, align 4
  %167 = mul nsw i32 %165, %166
  %168 = add nsw i32 %164, %167
  store i32 %168, i32* %23, align 4
  %169 = load i32, i32* %20, align 4
  %170 = load i32, i32* %21, align 4
  %171 = add nsw i32 %169, %170
  %172 = load i32, i32* %24, align 4
  %173 = sub nsw i32 %171, %172
  %174 = load i32, i32* %22, align 4
  %175 = add nsw i32 %173, %174
  %176 = load i32, i32* %23, align 4
  %177 = add nsw i32 %175, %176
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %9, align 4
  %179 = call i32 @clamp_val(i32 %178, i32 1000, i32 10500)
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %9, align 4
  %181 = sub nsw i32 10500, %180
  %182 = mul nsw i32 %181, 65535
  %183 = sdiv i32 %182, 9500
  %184 = load i32*, i32** %4, align 8
  store i32 %183, i32* %184, align 4
  br label %185

185:                                              ; preds = %161, %82, %71, %60, %50, %40
  %186 = load i32, i32* %8, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %185
  %189 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %5, align 8
  %190 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %189, i32 0, i32 0
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @dev_dbg(i32* %192, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %193)
  br label %195

195:                                              ; preds = %188, %185
  %196 = load i32, i32* %8, align 4
  ret i32 %196
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #2

declare dso_local i32 @clamp_val(i32, i32, i32) #2

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
