; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_add_mtd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_add_mtd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_blktrans_ops = type { i32 }
%struct.mtd_info = type { i32, i32 }
%struct.mtd_blktrans_dev = type { i32, i32, i32, i32, i32, %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev*, i64, i64, i32, %struct.mtd_info*, %struct.mtd_blktrans_ops*, %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev*, i32, i32, i32 }
%struct.sm_ftl = type { i32, i32, i32, i32, i32, %struct.sm_ftl*, %struct.sm_ftl*, %struct.sm_ftl*, i64, i64, i32, %struct.mtd_info*, %struct.mtd_blktrans_ops*, %struct.sm_ftl*, %struct.sm_ftl*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@sm_cache_flush_timer = common dso_local global i32 0, align 4
@sm_cache_flush_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"found unsupported mtd device, aborting\00", align 1
@SM_SECTOR_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"CIS not found on mtd device, aborting\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Found %d MiB xD/SmartMedia FTL on mtd%d\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"FTL layout:\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"%d zone(s), each consists of %d blocks (+%d spares)\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"each block consists of %d bytes\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"error in mtdblktrans layer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_blktrans_ops*, %struct.mtd_info*)* @sm_add_mtd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sm_add_mtd(%struct.mtd_blktrans_ops* %0, %struct.mtd_info* %1) #0 {
  %3 = alloca %struct.mtd_blktrans_ops*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.mtd_blktrans_dev*, align 8
  %6 = alloca %struct.sm_ftl*, align 8
  store %struct.mtd_blktrans_ops* %0, %struct.mtd_blktrans_ops** %3, align 8
  store %struct.mtd_info* %1, %struct.mtd_info** %4, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kzalloc(i32 120, i32 %7)
  %9 = bitcast i8* %8 to %struct.sm_ftl*
  store %struct.sm_ftl* %9, %struct.sm_ftl** %6, align 8
  %10 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %11 = icmp ne %struct.sm_ftl* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %193

13:                                               ; preds = %2
  %14 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %15 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %14, i32 0, i32 17
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %18 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %17, i32 0, i32 16
  %19 = load i32, i32* @sm_cache_flush_timer, align 4
  %20 = call i32 @timer_setup(i32* %18, i32 %19, i32 0)
  %21 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %22 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %21, i32 0, i32 15
  %23 = load i32, i32* @sm_cache_flush_work, align 4
  %24 = call i32 @INIT_WORK(i32* %22, i32 %23)
  %25 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %26 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %27 = call i64 @sm_get_media_info(%struct.sm_ftl* %25, %struct.mtd_info* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %13
  %30 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %190

31:                                               ; preds = %13
  %32 = load i32, i32* @SM_SECTOR_SIZE, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kzalloc(i32 %32, i32 %33)
  %35 = bitcast i8* %34 to %struct.sm_ftl*
  %36 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %37 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %36, i32 0, i32 5
  store %struct.sm_ftl* %35, %struct.sm_ftl** %37, align 8
  %38 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %39 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %38, i32 0, i32 5
  %40 = load %struct.sm_ftl*, %struct.sm_ftl** %39, align 8
  %41 = icmp ne %struct.sm_ftl* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %31
  br label %190

43:                                               ; preds = %31
  %44 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %45 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.sm_ftl* @kcalloc(i32 %46, i32 4, i32 %47)
  %49 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %50 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %49, i32 0, i32 6
  store %struct.sm_ftl* %48, %struct.sm_ftl** %50, align 8
  %51 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %52 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %51, i32 0, i32 6
  %53 = load %struct.sm_ftl*, %struct.sm_ftl** %52, align 8
  %54 = icmp ne %struct.sm_ftl* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %43
  br label %185

56:                                               ; preds = %43
  %57 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %58 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @kzalloc(i32 %59, i32 %60)
  %62 = bitcast i8* %61 to %struct.sm_ftl*
  %63 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %64 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %63, i32 0, i32 7
  store %struct.sm_ftl* %62, %struct.sm_ftl** %64, align 8
  %65 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %66 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %65, i32 0, i32 7
  %67 = load %struct.sm_ftl*, %struct.sm_ftl** %66, align 8
  %68 = icmp ne %struct.sm_ftl* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %56
  br label %180

70:                                               ; preds = %56
  %71 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %72 = call i32 @sm_cache_init(%struct.sm_ftl* %71)
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call i8* @kzalloc(i32 120, i32 %73)
  %75 = bitcast i8* %74 to %struct.mtd_blktrans_dev*
  store %struct.mtd_blktrans_dev* %75, %struct.mtd_blktrans_dev** %5, align 8
  %76 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %5, align 8
  %77 = icmp ne %struct.mtd_blktrans_dev* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %70
  br label %175

79:                                               ; preds = %70
  %80 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %5, align 8
  %81 = bitcast %struct.mtd_blktrans_dev* %80 to %struct.sm_ftl*
  %82 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %83 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %82, i32 0, i32 14
  store %struct.sm_ftl* %81, %struct.sm_ftl** %83, align 8
  %84 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %85 = bitcast %struct.sm_ftl* %84 to %struct.mtd_blktrans_dev*
  %86 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %5, align 8
  %87 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %86, i32 0, i32 13
  store %struct.mtd_blktrans_dev* %85, %struct.mtd_blktrans_dev** %87, align 8
  %88 = load %struct.mtd_blktrans_ops*, %struct.mtd_blktrans_ops** %3, align 8
  %89 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %5, align 8
  %90 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %89, i32 0, i32 12
  store %struct.mtd_blktrans_ops* %88, %struct.mtd_blktrans_ops** %90, align 8
  %91 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %92 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %5, align 8
  %93 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %92, i32 0, i32 11
  store %struct.mtd_info* %91, %struct.mtd_info** %93, align 8
  %94 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %5, align 8
  %95 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %94, i32 0, i32 2
  store i32 -1, i32* %95, align 8
  %96 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %97 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %100 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = mul nsw i32 %98, %101
  %103 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %104 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = mul nsw i32 %102, %105
  %107 = ashr i32 %106, 9
  %108 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %5, align 8
  %109 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  %110 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %111 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %110, i32 0, i32 10
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %5, align 8
  %114 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %113, i32 0, i32 10
  store i32 %112, i32* %114, align 8
  %115 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %116 = call i64 @sm_find_cis(%struct.sm_ftl* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %79
  %119 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %171

120:                                              ; preds = %79
  %121 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %122 = call i64 @sm_create_sysfs_attributes(%struct.sm_ftl* %121)
  %123 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %124 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %123, i32 0, i32 9
  store i64 %122, i64* %124, align 8
  %125 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %126 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %125, i32 0, i32 9
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %120
  br label %171

130:                                              ; preds = %120
  %131 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %132 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %131, i32 0, i32 9
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %5, align 8
  %135 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %134, i32 0, i32 9
  store i64 %133, i64* %135, align 8
  %136 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %137 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = sdiv i32 %138, 1048576
  %140 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %141 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @sm_printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %139, i32 %142)
  %144 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %145 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %146 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %149 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %152 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %151, i32 0, i32 8
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %155 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = sub nsw i64 %153, %157
  %159 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %147, i32 %150, i64 %158)
  %160 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %161 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %162)
  %164 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %5, align 8
  %165 = bitcast %struct.mtd_blktrans_dev* %164 to %struct.sm_ftl*
  %166 = call i64 @add_mtd_blktrans_dev(%struct.sm_ftl* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %130
  %169 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %171

170:                                              ; preds = %130
  br label %194

171:                                              ; preds = %168, %129, %118
  %172 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %5, align 8
  %173 = bitcast %struct.mtd_blktrans_dev* %172 to %struct.sm_ftl*
  %174 = call i32 @kfree(%struct.sm_ftl* %173)
  br label %175

175:                                              ; preds = %171, %78
  %176 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %177 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %176, i32 0, i32 7
  %178 = load %struct.sm_ftl*, %struct.sm_ftl** %177, align 8
  %179 = call i32 @kfree(%struct.sm_ftl* %178)
  br label %180

180:                                              ; preds = %175, %69
  %181 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %182 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %181, i32 0, i32 6
  %183 = load %struct.sm_ftl*, %struct.sm_ftl** %182, align 8
  %184 = call i32 @kfree(%struct.sm_ftl* %183)
  br label %185

185:                                              ; preds = %180, %55
  %186 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %187 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %186, i32 0, i32 5
  %188 = load %struct.sm_ftl*, %struct.sm_ftl** %187, align 8
  %189 = call i32 @kfree(%struct.sm_ftl* %188)
  br label %190

190:                                              ; preds = %185, %42, %29
  %191 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %192 = call i32 @kfree(%struct.sm_ftl* %191)
  br label %193

193:                                              ; preds = %190, %12
  br label %194

194:                                              ; preds = %193, %170
  ret void
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i64 @sm_get_media_info(%struct.sm_ftl*, %struct.mtd_info*) #1

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local %struct.sm_ftl* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @sm_cache_init(%struct.sm_ftl*) #1

declare dso_local i64 @sm_find_cis(%struct.sm_ftl*) #1

declare dso_local i64 @sm_create_sysfs_attributes(%struct.sm_ftl*) #1

declare dso_local i32 @sm_printk(i8*, i32, i32) #1

declare dso_local i64 @add_mtd_blktrans_dev(%struct.sm_ftl*) #1

declare dso_local i32 @kfree(%struct.sm_ftl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
