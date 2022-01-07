; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_get_media_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_get_media_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.sm_ftl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mtd_info = type { i32, i64, i32, i32, i64 }

@MTD_ROM = common dso_local global i64 0, align 8
@SM_SECTOR_SIZE = common dso_local global i32 0, align 4
@SM_SMALL_PAGE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SM_SMALL_OOB_SIZE = common dso_local global i64 0, align 8
@SM_OOB_SIZE = common dso_local global i64 0, align 8
@chs_table = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"media has unknown size : %dMiB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sm_ftl*, %struct.mtd_info*)* @sm_get_media_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm_get_media_info(%struct.sm_ftl* %0, %struct.mtd_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sm_ftl*, align 8
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sm_ftl* %0, %struct.sm_ftl** %4, align 8
  store %struct.mtd_info* %1, %struct.mtd_info** %5, align 8
  %8 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %9 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sdiv i32 %10, 1048576
  store i32 %11, i32* %7, align 4
  %12 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %13 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MTD_ROM, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %19 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %21 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %23 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %22, i32 0, i32 2
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %89 [
    i32 1, label %25
    i32 2, label %36
    i32 4, label %71
    i32 8, label %80
  ]

25:                                               ; preds = %2
  %26 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %27 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %26, i32 0, i32 3
  store i32 256, i32* %27, align 4
  %28 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %29 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %28, i32 0, i32 4
  store i32 250, i32* %29, align 4
  %30 = load i32, i32* @SM_SECTOR_SIZE, align 4
  %31 = mul nsw i32 8, %30
  %32 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %33 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %35 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %34, i32 0, i32 2
  store i32 1, i32* %35, align 4
  br label %89

36:                                               ; preds = %2
  %37 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %38 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SM_SMALL_PAGE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %44 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %43, i32 0, i32 3
  store i32 512, i32* %44, align 4
  %45 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %46 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %45, i32 0, i32 4
  store i32 500, i32* %46, align 4
  %47 = load i32, i32* @SM_SECTOR_SIZE, align 4
  %48 = mul nsw i32 8, %47
  %49 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %50 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %52 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %51, i32 0, i32 2
  store i32 1, i32* %52, align 4
  br label %70

53:                                               ; preds = %36
  %54 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %55 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %213

61:                                               ; preds = %53
  %62 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %63 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %62, i32 0, i32 3
  store i32 256, i32* %63, align 4
  %64 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %65 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %64, i32 0, i32 4
  store i32 250, i32* %65, align 4
  %66 = load i32, i32* @SM_SECTOR_SIZE, align 4
  %67 = mul nsw i32 16, %66
  %68 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %69 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %61, %42
  br label %89

71:                                               ; preds = %2
  %72 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %73 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %72, i32 0, i32 3
  store i32 512, i32* %73, align 4
  %74 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %75 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %74, i32 0, i32 4
  store i32 500, i32* %75, align 4
  %76 = load i32, i32* @SM_SECTOR_SIZE, align 4
  %77 = mul nsw i32 16, %76
  %78 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %79 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  br label %89

80:                                               ; preds = %2
  %81 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %82 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %81, i32 0, i32 3
  store i32 1024, i32* %82, align 4
  %83 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %84 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %83, i32 0, i32 4
  store i32 1000, i32* %84, align 4
  %85 = load i32, i32* @SM_SECTOR_SIZE, align 4
  %86 = mul nsw i32 16, %85
  %87 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %88 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %80, %2, %71, %70, %25
  %90 = load i32, i32* %7, align 4
  %91 = icmp sge i32 %90, 16
  br i1 %91, label %92, label %105

92:                                               ; preds = %89
  %93 = load i32, i32* %7, align 4
  %94 = sdiv i32 %93, 16
  %95 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %96 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %98 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %97, i32 0, i32 3
  store i32 1024, i32* %98, align 4
  %99 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %100 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %99, i32 0, i32 4
  store i32 1000, i32* %100, align 4
  %101 = load i32, i32* @SM_SECTOR_SIZE, align 4
  %102 = mul nsw i32 32, %101
  %103 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %104 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %92, %89
  %106 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %107 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %110 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = icmp sgt i32 %108, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %105
  %114 = load i32, i32* @ENODEV, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %213

116:                                              ; preds = %105
  %117 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %118 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @SM_SECTOR_SIZE, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load i32, i32* @ENODEV, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  br label %213

125:                                              ; preds = %116
  %126 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %127 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %125
  %131 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %132 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @SM_SMALL_OOB_SIZE, align 8
  %135 = icmp slt i64 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load i32, i32* @ENODEV, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %3, align 4
  br label %213

139:                                              ; preds = %130, %125
  %140 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %141 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %153, label %144

144:                                              ; preds = %139
  %145 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %146 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @SM_OOB_SIZE, align 8
  %149 = icmp slt i64 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load i32, i32* @ENODEV, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %3, align 4
  br label %213

153:                                              ; preds = %144, %139
  %154 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %155 = call i32 @mtd_has_oob(%struct.mtd_info* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %153
  %158 = load i32, i32* @ENODEV, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %3, align 4
  br label %213

160:                                              ; preds = %153
  store i32 0, i32* %6, align 4
  br label %161

161:                                              ; preds = %201, %160
  %162 = load i32, i32* %6, align 4
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chs_table, align 8
  %164 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %163)
  %165 = icmp slt i32 %162, %164
  br i1 %165, label %166, label %204

166:                                              ; preds = %161
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chs_table, align 8
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %7, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %200

175:                                              ; preds = %166
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chs_table, align 8
  %177 = load i32, i32* %6, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %183 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %182, i32 0, i32 6
  store i32 %181, i32* %183, align 4
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chs_table, align 8
  %185 = load i32, i32* %6, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %191 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %190, i32 0, i32 7
  store i32 %189, i32* %191, align 4
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chs_table, align 8
  %193 = load i32, i32* %6, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %199 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %198, i32 0, i32 8
  store i32 %197, i32* %199, align 4
  store i32 0, i32* %3, align 4
  br label %213

200:                                              ; preds = %166
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %6, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %6, align 4
  br label %161

204:                                              ; preds = %161
  %205 = load i32, i32* %7, align 4
  %206 = call i32 @sm_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %205)
  %207 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %208 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %207, i32 0, i32 6
  store i32 985, i32* %208, align 4
  %209 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %210 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %209, i32 0, i32 7
  store i32 33, i32* %210, align 4
  %211 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %212 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %211, i32 0, i32 8
  store i32 63, i32* %212, align 4
  store i32 0, i32* %3, align 4
  br label %213

213:                                              ; preds = %204, %175, %157, %150, %136, %122, %113, %58
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local i32 @mtd_has_oob(%struct.mtd_info*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @sm_printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
