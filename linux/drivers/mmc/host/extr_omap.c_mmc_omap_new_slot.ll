; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_new_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_new_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_omap_host = type { %struct.TYPE_3__*, %struct.mmc_omap_slot**, i32 }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32*, i32*, i32 }
%struct.mmc_omap_slot = type { i32, %struct.TYPE_4__*, i32, i32, i32, %struct.mmc_host*, %struct.mmc_omap_host* }
%struct.mmc_host = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@MMC_POWER_UNDEFINED = common dso_local global i32 0, align 4
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@MMC_CAP_ERASE = common dso_local global i32 0, align 4
@mmc_omap_ops = common dso_local global i32 0, align 4
@mmc_omap_cover_timer = common dso_local global i32 0, align 4
@mmc_omap_cover_handler = common dso_local global i32 0, align 4
@dev_attr_slot_name = common dso_local global i32 0, align 4
@dev_attr_cover_switch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_omap_host*, i32)* @mmc_omap_new_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_omap_new_slot(%struct.mmc_omap_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_omap_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_omap_slot*, align 8
  %7 = alloca %struct.mmc_host*, align 8
  %8 = alloca i32, align 4
  store %struct.mmc_omap_host* %0, %struct.mmc_omap_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mmc_omap_slot* null, %struct.mmc_omap_slot** %6, align 8
  %9 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.mmc_host* @mmc_alloc_host(i32 48, i32 %11)
  store %struct.mmc_host* %12, %struct.mmc_host** %7, align 8
  %13 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %14 = icmp eq %struct.mmc_host* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %206

18:                                               ; preds = %2
  %19 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %20 = call %struct.mmc_omap_slot* @mmc_priv(%struct.mmc_host* %19)
  store %struct.mmc_omap_slot* %20, %struct.mmc_omap_slot** %6, align 8
  %21 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %4, align 8
  %22 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %6, align 8
  %23 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %22, i32 0, i32 6
  store %struct.mmc_omap_host* %21, %struct.mmc_omap_host** %23, align 8
  %24 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %25 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %6, align 8
  %26 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %25, i32 0, i32 5
  store %struct.mmc_host* %24, %struct.mmc_host** %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %6, align 8
  %29 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @MMC_POWER_UNDEFINED, align 4
  %31 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %6, align 8
  %32 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %4, align 8
  %34 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %6, align 8
  %42 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %41, i32 0, i32 1
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %42, align 8
  %43 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %6, align 8
  %44 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %4, align 8
  %45 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %44, i32 0, i32 1
  %46 = load %struct.mmc_omap_slot**, %struct.mmc_omap_slot*** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %46, i64 %48
  store %struct.mmc_omap_slot* %43, %struct.mmc_omap_slot** %49, align 8
  %50 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %51 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %4, align 8
  %53 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sge i32 %61, 4
  br i1 %62, label %63, label %71

63:                                               ; preds = %18
  %64 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %65 = load i32, i32* @MMC_CAP_ERASE, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %68 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %63, %18
  %72 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %73 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %72, i32 0, i32 10
  store i32* @mmc_omap_ops, i32** %73, align 8
  %74 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %75 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %74, i32 0, i32 1
  store i32 400000, i32* %75, align 4
  %76 = call i64 (...) @mmc_omap2()
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %80 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %79, i32 0, i32 2
  store i32 48000000, i32* %80, align 8
  br label %84

81:                                               ; preds = %71
  %82 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %83 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %82, i32 0, i32 2
  store i32 24000000, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %78
  %85 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %4, align 8
  %86 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %84
  %92 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %4, align 8
  %93 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %98 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @min(i64 %96, i32 %99)
  %101 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %102 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %91, %84
  %104 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %6, align 8
  %105 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %110 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %109, i32 0, i32 9
  store i32 %108, i32* %110, align 4
  %111 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %112 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %111, i32 0, i32 3
  store i32 32, i32* %112, align 4
  %113 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %114 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %113, i32 0, i32 4
  store i32 2048, i32* %114, align 8
  %115 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %116 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %115, i32 0, i32 5
  store i32 2048, i32* %116, align 4
  %117 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %118 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %121 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 %119, %122
  %124 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %125 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %124, i32 0, i32 6
  store i32 %123, i32* %125, align 8
  %126 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %127 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %130 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %129, i32 0, i32 7
  store i32 %128, i32* %130, align 4
  %131 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %6, align 8
  %132 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %131, i32 0, i32 1
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %148

137:                                              ; preds = %103
  %138 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %6, align 8
  %139 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %138, i32 0, i32 3
  %140 = load i32, i32* @mmc_omap_cover_timer, align 4
  %141 = call i32 @timer_setup(i32* %139, i32 %140, i32 0)
  %142 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %6, align 8
  %143 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %142, i32 0, i32 2
  %144 = load i32, i32* @mmc_omap_cover_handler, align 4
  %145 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %6, align 8
  %146 = ptrtoint %struct.mmc_omap_slot* %145 to i64
  %147 = call i32 @tasklet_init(i32* %143, i32 %144, i64 %146)
  br label %148

148:                                              ; preds = %137, %103
  %149 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %150 = call i32 @mmc_add_host(%struct.mmc_host* %149)
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %200

154:                                              ; preds = %148
  %155 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %6, align 8
  %156 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %155, i32 0, i32 1
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %169

161:                                              ; preds = %154
  %162 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %163 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %162, i32 0, i32 8
  %164 = call i32 @device_create_file(i32* %163, i32* @dev_attr_slot_name)
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  br label %200

168:                                              ; preds = %161
  br label %169

169:                                              ; preds = %168, %154
  %170 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %6, align 8
  %171 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %170, i32 0, i32 1
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 2
  %174 = load i32*, i32** %173, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %187

176:                                              ; preds = %169
  %177 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %178 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %177, i32 0, i32 8
  %179 = call i32 @device_create_file(i32* %178, i32* @dev_attr_cover_switch)
  store i32 %179, i32* %8, align 4
  %180 = load i32, i32* %8, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  br label %188

183:                                              ; preds = %176
  %184 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %6, align 8
  %185 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %184, i32 0, i32 2
  %186 = call i32 @tasklet_schedule(i32* %185)
  br label %187

187:                                              ; preds = %183, %169
  store i32 0, i32* %3, align 4
  br label %206

188:                                              ; preds = %182
  %189 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %6, align 8
  %190 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %189, i32 0, i32 1
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %199

195:                                              ; preds = %188
  %196 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %197 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %196, i32 0, i32 8
  %198 = call i32 @device_remove_file(i32* %197, i32* @dev_attr_slot_name)
  br label %199

199:                                              ; preds = %195, %188
  br label %200

200:                                              ; preds = %199, %167, %153
  %201 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %202 = call i32 @mmc_remove_host(%struct.mmc_host* %201)
  %203 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %204 = call i32 @mmc_free_host(%struct.mmc_host* %203)
  %205 = load i32, i32* %8, align 4
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %200, %187, %15
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local %struct.mmc_host* @mmc_alloc_host(i32, i32) #1

declare dso_local %struct.mmc_omap_slot* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i64 @mmc_omap2(...) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @mmc_add_host(%struct.mmc_host*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @mmc_remove_host(%struct.mmc_host*) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
