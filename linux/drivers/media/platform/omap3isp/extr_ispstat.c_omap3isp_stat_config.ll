; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_omap3isp_stat_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_omap3isp_stat_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__*, i64, i64, %struct.TYPE_4__*, %struct.ispstat_generic_config* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { {}*, {}* }
%struct.ispstat_generic_config = type { i32, i64 }

@.str = private unnamed_addr constant [49 x i8] c"%s: configuring module with buffer size=0x%08lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"%s: configuration values are invalid.\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"%s: driver has corrected buffer size request to 0x%08lx\0A\00", align 1
@MAGIC_SIZE = common dso_local global i32 0, align 4
@AF_EXTRA_DATA = common dso_local global i32 0, align 4
@NUM_H3A_RECOVER_BUFS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"%s: module has been successfully configured.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap3isp_stat_config(%struct.ispstat* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ispstat*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ispstat_generic_config*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ispstat_generic_config*, align 8
  store %struct.ispstat* %0, %struct.ispstat** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.ispstat_generic_config*
  store %struct.ispstat_generic_config* %12, %struct.ispstat_generic_config** %8, align 8
  %13 = load %struct.ispstat_generic_config*, %struct.ispstat_generic_config** %8, align 8
  %14 = getelementptr inbounds %struct.ispstat_generic_config, %struct.ispstat_generic_config* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %17 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %20 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %19, i32 0, i32 3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %25 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %23, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %29)
  %31 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %32 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %31, i32 0, i32 6
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = bitcast {}** %34 to i32 (%struct.ispstat*, i8*)**
  %36 = load i32 (%struct.ispstat*, i8*)*, i32 (%struct.ispstat*, i8*)** %35, align 8
  %37 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 %36(%struct.ispstat* %37, i8* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %2
  %43 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %44 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %47 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %46, i32 0, i32 3
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %52 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %182

57:                                               ; preds = %2
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.ispstat_generic_config*, %struct.ispstat_generic_config** %8, align 8
  %60 = getelementptr inbounds %struct.ispstat_generic_config, %struct.ispstat_generic_config* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %58, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %57
  %64 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %65 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %64, i32 0, i32 3
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %70 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ispstat_generic_config*, %struct.ispstat_generic_config** %8, align 8
  %74 = getelementptr inbounds %struct.ispstat_generic_config, %struct.ispstat_generic_config* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %68, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %72, i64 %76)
  br label %78

78:                                               ; preds = %63, %57
  %79 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %80 = call i64 @IS_H3A(%struct.ispstat* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %118

82:                                               ; preds = %78
  %83 = load %struct.ispstat_generic_config*, %struct.ispstat_generic_config** %8, align 8
  %84 = getelementptr inbounds %struct.ispstat_generic_config, %struct.ispstat_generic_config* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = mul nsw i32 %85, 2
  %87 = load i32, i32* @MAGIC_SIZE, align 4
  %88 = add nsw i32 %86, %87
  store i32 %88, i32* %9, align 4
  %89 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %90 = call i64 @IS_H3A_AF(%struct.ispstat* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %82
  %93 = load i32, i32* @AF_EXTRA_DATA, align 4
  %94 = load i32, i32* @NUM_H3A_RECOVER_BUFS, align 4
  %95 = add nsw i32 %94, 2
  %96 = mul nsw i32 %93, %95
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %92, %82
  %100 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %101 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %100, i32 0, i32 7
  %102 = load %struct.ispstat_generic_config*, %struct.ispstat_generic_config** %101, align 8
  %103 = icmp ne %struct.ispstat_generic_config* %102, null
  br i1 %103, label %104, label %115

104:                                              ; preds = %99
  %105 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %106 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %105, i32 0, i32 7
  %107 = load %struct.ispstat_generic_config*, %struct.ispstat_generic_config** %106, align 8
  store %struct.ispstat_generic_config* %107, %struct.ispstat_generic_config** %10, align 8
  %108 = load %struct.ispstat_generic_config*, %struct.ispstat_generic_config** %10, align 8
  %109 = getelementptr inbounds %struct.ispstat_generic_config, %struct.ispstat_generic_config* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @NUM_H3A_RECOVER_BUFS, align 4
  %112 = mul nsw i32 %110, %111
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %104, %99
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @PAGE_ALIGN(i32 %116)
  store i32 %117, i32* %9, align 4
  br label %125

118:                                              ; preds = %78
  %119 = load %struct.ispstat_generic_config*, %struct.ispstat_generic_config** %8, align 8
  %120 = getelementptr inbounds %struct.ispstat_generic_config, %struct.ispstat_generic_config* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @MAGIC_SIZE, align 4
  %123 = add nsw i32 %121, %122
  %124 = call i32 @PAGE_ALIGN(i32 %123)
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %118, %115
  %126 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @isp_stat_bufs_alloc(%struct.ispstat* %126, i32 %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %125
  %132 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %133 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %132, i32 0, i32 1
  %134 = call i32 @mutex_unlock(i32* %133)
  %135 = load i32, i32* %6, align 4
  store i32 %135, i32* %3, align 4
  br label %182

136:                                              ; preds = %125
  %137 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %138 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %137, i32 0, i32 3
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = load i64, i64* %7, align 8
  %142 = call i32 @spin_lock_irqsave(i32* %140, i64 %141)
  %143 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %144 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %143, i32 0, i32 6
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = bitcast {}** %146 to i32 (%struct.ispstat*, i8*)**
  %148 = load i32 (%struct.ispstat*, i8*)*, i32 (%struct.ispstat*, i8*)** %147, align 8
  %149 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %150 = load i8*, i8** %5, align 8
  %151 = call i32 %148(%struct.ispstat* %149, i8* %150)
  %152 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %153 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %152, i32 0, i32 3
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = load i64, i64* %7, align 8
  %157 = call i32 @spin_unlock_irqrestore(i32* %155, i64 %156)
  %158 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %159 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %158, i32 0, i32 5
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %162 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %160, %163
  %165 = load %struct.ispstat_generic_config*, %struct.ispstat_generic_config** %8, align 8
  %166 = getelementptr inbounds %struct.ispstat_generic_config, %struct.ispstat_generic_config* %165, i32 0, i32 1
  store i64 %164, i64* %166, align 8
  %167 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %168 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %167, i32 0, i32 0
  store i32 1, i32* %168, align 8
  %169 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %170 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %169, i32 0, i32 3
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %175 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %173, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %177)
  %179 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %180 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %179, i32 0, i32 1
  %181 = call i32 @mutex_unlock(i32* %180)
  store i32 0, i32* %3, align 4
  br label %182

182:                                              ; preds = %136, %131, %42
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @IS_H3A(%struct.ispstat*) #1

declare dso_local i64 @IS_H3A_AF(%struct.ispstat*) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @isp_stat_bufs_alloc(%struct.ispstat*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
