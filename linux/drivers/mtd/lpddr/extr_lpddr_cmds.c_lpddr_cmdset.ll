; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/lpddr/extr_lpddr_cmds.c_lpddr_cmdset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/lpddr/extr_lpddr_cmds.c_lpddr_cmdset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32, i32, i32, i32, %struct.flchip*, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, %struct.map_info* }
%struct.flchip = type { i32, i32, i32, %struct.flchip_shared*, i32, i32 }
%struct.flchip_shared = type { i32, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.map_info = type { %struct.mtd_info* }
%struct.lpddr_private = type { i32, i32, i32, i32, i32, %struct.flchip*, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, %struct.map_info* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MTD_NORFLASH = common dso_local global i8* null, align 8
@lpddr_read = common dso_local global i32 0, align 4
@MTD_CAP_NORFLASH = common dso_local global i32 0, align 4
@MTD_BIT_WRITEABLE = common dso_local global i32 0, align 4
@lpddr_erase = common dso_local global i32 0, align 4
@lpddr_write_buffers = common dso_local global i32 0, align 4
@lpddr_writev = common dso_local global i32 0, align 4
@lpddr_lock = common dso_local global i32 0, align 4
@lpddr_unlock = common dso_local global i32 0, align 4
@lpddr_point = common dso_local global i32 0, align 4
@lpddr_unpoint = common dso_local global i32 0, align 4
@FL_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mtd_info* @lpddr_cmdset(%struct.map_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.map_info*, align 8
  %4 = alloca %struct.lpddr_private*, align 8
  %5 = alloca %struct.flchip_shared*, align 8
  %6 = alloca %struct.flchip*, align 8
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.map_info* %0, %struct.map_info** %3, align 8
  %11 = load %struct.map_info*, %struct.map_info** %3, align 8
  %12 = getelementptr inbounds %struct.map_info, %struct.map_info* %11, i32 0, i32 0
  %13 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %14 = bitcast %struct.mtd_info* %13 to %struct.lpddr_private*
  store %struct.lpddr_private* %14, %struct.lpddr_private** %4, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.mtd_info* @kzalloc(i32 96, i32 %15)
  store %struct.mtd_info* %16, %struct.mtd_info** %7, align 8
  %17 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %18 = icmp ne %struct.mtd_info* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store %struct.mtd_info* null, %struct.mtd_info** %2, align 8
  br label %195

20:                                               ; preds = %1
  %21 = load %struct.map_info*, %struct.map_info** %3, align 8
  %22 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %23 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %22, i32 0, i32 17
  store %struct.map_info* %21, %struct.map_info** %23, align 8
  %24 = load i8*, i8** @MTD_NORFLASH, align 8
  %25 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %26 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %25, i32 0, i32 15
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @lpddr_read, align 4
  %28 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %29 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %28, i32 0, i32 16
  store i32 %27, i32* %29, align 8
  %30 = load i8*, i8** @MTD_NORFLASH, align 8
  %31 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %32 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %31, i32 0, i32 15
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* @MTD_CAP_NORFLASH, align 4
  %34 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %35 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %34, i32 0, i32 14
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @MTD_BIT_WRITEABLE, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %39 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %38, i32 0, i32 14
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @lpddr_erase, align 4
  %43 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %44 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %43, i32 0, i32 13
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @lpddr_write_buffers, align 4
  %46 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %47 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %46, i32 0, i32 12
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @lpddr_writev, align 4
  %49 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %50 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %49, i32 0, i32 11
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @lpddr_lock, align 4
  %52 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %53 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %52, i32 0, i32 10
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @lpddr_unlock, align 4
  %55 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %56 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %55, i32 0, i32 9
  store i32 %54, i32* %56, align 8
  %57 = load %struct.map_info*, %struct.map_info** %3, align 8
  %58 = call i64 @map_is_linear(%struct.map_info* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %20
  %61 = load i32, i32* @lpddr_point, align 4
  %62 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %63 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %62, i32 0, i32 8
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @lpddr_unpoint, align 4
  %65 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %66 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %60, %20
  %68 = load %struct.lpddr_private*, %struct.lpddr_private** %4, align 8
  %69 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %68, i32 0, i32 6
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 1, %72
  %74 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %75 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.lpddr_private*, %struct.lpddr_private** %4, align 8
  %77 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %76, i32 0, i32 6
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 1, %80
  %82 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %83 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.lpddr_private*, %struct.lpddr_private** %4, align 8
  %85 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %84, i32 0, i32 6
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 1, %88
  %90 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %91 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.lpddr_private*, %struct.lpddr_private** %4, align 8
  %93 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call %struct.flchip_shared* @kmalloc_array(i32 %94, i32 24, i32 %95)
  store %struct.flchip_shared* %96, %struct.flchip_shared** %5, align 8
  %97 = load %struct.flchip_shared*, %struct.flchip_shared** %5, align 8
  %98 = icmp ne %struct.flchip_shared* %97, null
  br i1 %98, label %105, label %99

99:                                               ; preds = %67
  %100 = load %struct.lpddr_private*, %struct.lpddr_private** %4, align 8
  %101 = bitcast %struct.lpddr_private* %100 to %struct.mtd_info*
  %102 = call i32 @kfree(%struct.mtd_info* %101)
  %103 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %104 = call i32 @kfree(%struct.mtd_info* %103)
  store %struct.mtd_info* null, %struct.mtd_info** %2, align 8
  br label %195

105:                                              ; preds = %67
  %106 = load %struct.lpddr_private*, %struct.lpddr_private** %4, align 8
  %107 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %106, i32 0, i32 5
  %108 = load %struct.flchip*, %struct.flchip** %107, align 8
  %109 = getelementptr inbounds %struct.flchip, %struct.flchip* %108, i64 0
  store %struct.flchip* %109, %struct.flchip** %6, align 8
  %110 = load %struct.lpddr_private*, %struct.lpddr_private** %4, align 8
  %111 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.lpddr_private*, %struct.lpddr_private** %4, align 8
  %114 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %113, i32 0, i32 6
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = sdiv i32 %112, %117
  store i32 %118, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %119

119:                                              ; preds = %190, %105
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %193

123:                                              ; preds = %119
  %124 = load %struct.flchip_shared*, %struct.flchip_shared** %5, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %124, i64 %126
  %128 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %127, i32 0, i32 1
  store i32* null, i32** %128, align 8
  %129 = load %struct.flchip_shared*, %struct.flchip_shared** %5, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %129, i64 %131
  %133 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %132, i32 0, i32 2
  store i32 0, i32* %133, align 8
  %134 = load %struct.flchip_shared*, %struct.flchip_shared** %5, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %134, i64 %136
  %138 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %137, i32 0, i32 0
  %139 = call i32 @mutex_init(i32* %138)
  store i32 0, i32* %10, align 4
  br label %140

140:                                              ; preds = %186, %123
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.lpddr_private*, %struct.lpddr_private** %4, align 8
  %143 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %142, i32 0, i32 6
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = icmp slt i32 %141, %146
  br i1 %147, label %148, label %189

148:                                              ; preds = %140
  %149 = load %struct.flchip*, %struct.flchip** %6, align 8
  %150 = load %struct.lpddr_private*, %struct.lpddr_private** %4, align 8
  %151 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %150, i32 0, i32 5
  %152 = load %struct.flchip*, %struct.flchip** %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.flchip, %struct.flchip* %152, i64 %154
  %156 = bitcast %struct.flchip* %149 to i8*
  %157 = bitcast %struct.flchip* %155 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %156, i8* align 8 %157, i64 32, i1 false)
  %158 = load i32, i32* %10, align 4
  %159 = load %struct.lpddr_private*, %struct.lpddr_private** %4, align 8
  %160 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = shl i32 %158, %161
  %163 = load %struct.flchip*, %struct.flchip** %6, align 8
  %164 = getelementptr inbounds %struct.flchip, %struct.flchip* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %165, %162
  store i32 %166, i32* %164, align 8
  %167 = load i32, i32* @FL_READY, align 4
  %168 = load %struct.flchip*, %struct.flchip** %6, align 8
  %169 = getelementptr inbounds %struct.flchip, %struct.flchip* %168, i32 0, i32 4
  store i32 %167, i32* %169, align 8
  %170 = load %struct.flchip*, %struct.flchip** %6, align 8
  %171 = getelementptr inbounds %struct.flchip, %struct.flchip* %170, i32 0, i32 5
  store i32 %167, i32* %171, align 4
  %172 = load %struct.flchip_shared*, %struct.flchip_shared** %5, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %172, i64 %174
  %176 = load %struct.flchip*, %struct.flchip** %6, align 8
  %177 = getelementptr inbounds %struct.flchip, %struct.flchip* %176, i32 0, i32 3
  store %struct.flchip_shared* %175, %struct.flchip_shared** %177, align 8
  %178 = load %struct.flchip*, %struct.flchip** %6, align 8
  %179 = getelementptr inbounds %struct.flchip, %struct.flchip* %178, i32 0, i32 2
  %180 = call i32 @init_waitqueue_head(i32* %179)
  %181 = load %struct.flchip*, %struct.flchip** %6, align 8
  %182 = getelementptr inbounds %struct.flchip, %struct.flchip* %181, i32 0, i32 1
  %183 = call i32 @mutex_init(i32* %182)
  %184 = load %struct.flchip*, %struct.flchip** %6, align 8
  %185 = getelementptr inbounds %struct.flchip, %struct.flchip* %184, i32 1
  store %struct.flchip* %185, %struct.flchip** %6, align 8
  br label %186

186:                                              ; preds = %148
  %187 = load i32, i32* %10, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %10, align 4
  br label %140

189:                                              ; preds = %140
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %9, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %9, align 4
  br label %119

193:                                              ; preds = %119
  %194 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  store %struct.mtd_info* %194, %struct.mtd_info** %2, align 8
  br label %195

195:                                              ; preds = %193, %99, %19
  %196 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  ret %struct.mtd_info* %196
}

declare dso_local %struct.mtd_info* @kzalloc(i32, i32) #1

declare dso_local i64 @map_is_linear(%struct.map_info*) #1

declare dso_local %struct.flchip_shared* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.mtd_info*) #1

declare dso_local i32 @mutex_init(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
