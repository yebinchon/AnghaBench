; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0001.c_inval_cache_and_wait_for_operation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0001.c_inval_cache_and_wait_for_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { %struct.cfi_private* }
%struct.cfi_private = type { i32 }
%struct.flchip = type { i32, i32, i64, i64, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@FL_ERASING = common dso_local global i32 0, align 4
@FL_WRITING = common dso_local global i32 0, align 4
@FL_STATUS = common dso_local global i8* null, align 8
@ETIME = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.map_info*, %struct.flchip*, i64, i64, i32, i32, i32)* @inval_cache_and_wait_for_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inval_cache_and_wait_for_operation(%struct.map_info* %0, %struct.flchip* %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.map_info*, align 8
  %10 = alloca %struct.flchip*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.cfi_private*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.map_info* %0, %struct.map_info** %9, align 8
  store %struct.flchip* %1, %struct.flchip** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %23 = load %struct.map_info*, %struct.map_info** %9, align 8
  %24 = getelementptr inbounds %struct.map_info, %struct.map_info* %23, i32 0, i32 0
  %25 = load %struct.cfi_private*, %struct.cfi_private** %24, align 8
  store %struct.cfi_private* %25, %struct.cfi_private** %16, align 8
  %26 = call i32 @CMD(i32 128)
  store i32 %26, i32* %18, align 4
  %27 = load %struct.flchip*, %struct.flchip** %10, align 8
  %28 = getelementptr inbounds %struct.flchip, %struct.flchip* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %19, align 4
  %30 = load %struct.flchip*, %struct.flchip** %10, align 8
  %31 = getelementptr inbounds %struct.flchip, %struct.flchip* %30, i32 0, i32 1
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %7
  %36 = load %struct.map_info*, %struct.map_info** %9, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @INVALIDATE_CACHED_RANGE(%struct.map_info* %36, i64 %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %7
  %41 = load %struct.flchip*, %struct.flchip** %10, align 8
  %42 = getelementptr inbounds %struct.flchip, %struct.flchip* %41, i32 0, i32 1
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load i32, i32* %15, align 4
  store i32 %44, i32* %20, align 4
  %45 = load i32, i32* %20, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  store i32 500000, i32* %20, align 4
  br label %48

48:                                               ; preds = %47, %40
  %49 = load i32, i32* %20, align 4
  store i32 %49, i32* %22, align 4
  %50 = load i32, i32* %14, align 4
  %51 = udiv i32 %50, 2
  store i32 %51, i32* %21, align 4
  br label %52

52:                                               ; preds = %150, %58, %48
  %53 = load %struct.flchip*, %struct.flchip** %10, align 8
  %54 = getelementptr inbounds %struct.flchip, %struct.flchip* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %19, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %52
  %59 = load i32, i32* @wait, align 4
  %60 = load i32, i32* @current, align 4
  %61 = call i32 @DECLARE_WAITQUEUE(i32 %59, i32 %60)
  %62 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %63 = call i32 @set_current_state(i32 %62)
  %64 = load %struct.flchip*, %struct.flchip** %10, align 8
  %65 = getelementptr inbounds %struct.flchip, %struct.flchip* %64, i32 0, i32 4
  %66 = call i32 @add_wait_queue(i32* %65, i32* @wait)
  %67 = load %struct.flchip*, %struct.flchip** %10, align 8
  %68 = getelementptr inbounds %struct.flchip, %struct.flchip* %67, i32 0, i32 1
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = call i32 (...) @schedule()
  %71 = load %struct.flchip*, %struct.flchip** %10, align 8
  %72 = getelementptr inbounds %struct.flchip, %struct.flchip* %71, i32 0, i32 4
  %73 = call i32 @remove_wait_queue(i32* %72, i32* @wait)
  %74 = load %struct.flchip*, %struct.flchip** %10, align 8
  %75 = getelementptr inbounds %struct.flchip, %struct.flchip* %74, i32 0, i32 1
  %76 = call i32 @mutex_lock(i32* %75)
  br label %52

77:                                               ; preds = %52
  %78 = load %struct.map_info*, %struct.map_info** %9, align 8
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @map_read(%struct.map_info* %78, i64 %79)
  store i32 %80, i32* %17, align 4
  %81 = load %struct.map_info*, %struct.map_info** %9, align 8
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %18, align 4
  %85 = call i64 @map_word_andequal(%struct.map_info* %81, i32 %82, i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %154

88:                                               ; preds = %77
  %89 = load %struct.flchip*, %struct.flchip** %10, align 8
  %90 = getelementptr inbounds %struct.flchip, %struct.flchip* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %88
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* @FL_ERASING, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i32, i32* %22, align 4
  store i32 %98, i32* %20, align 4
  %99 = load %struct.flchip*, %struct.flchip** %10, align 8
  %100 = getelementptr inbounds %struct.flchip, %struct.flchip* %99, i32 0, i32 3
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %97, %93, %88
  %102 = load %struct.flchip*, %struct.flchip** %10, align 8
  %103 = getelementptr inbounds %struct.flchip, %struct.flchip* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* @FL_WRITING, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load i32, i32* %22, align 4
  store i32 %111, i32* %20, align 4
  %112 = load %struct.flchip*, %struct.flchip** %10, align 8
  %113 = getelementptr inbounds %struct.flchip, %struct.flchip* %112, i32 0, i32 2
  store i64 0, i64* %113, align 8
  br label %114

114:                                              ; preds = %110, %106, %101
  %115 = load i32, i32* %20, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %128, label %117

117:                                              ; preds = %114
  %118 = load %struct.map_info*, %struct.map_info** %9, align 8
  %119 = call i32 @CMD(i32 112)
  %120 = load i64, i64* %11, align 8
  %121 = call i32 @map_write(%struct.map_info* %118, i32 %119, i64 %120)
  %122 = load i8*, i8** @FL_STATUS, align 8
  %123 = ptrtoint i8* %122 to i32
  %124 = load %struct.flchip*, %struct.flchip** %10, align 8
  %125 = getelementptr inbounds %struct.flchip, %struct.flchip* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* @ETIME, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %8, align 4
  br label %159

128:                                              ; preds = %114
  %129 = load %struct.flchip*, %struct.flchip** %10, align 8
  %130 = getelementptr inbounds %struct.flchip, %struct.flchip* %129, i32 0, i32 1
  %131 = call i32 @mutex_unlock(i32* %130)
  %132 = load i32, i32* %21, align 4
  %133 = load i32, i32* @HZ, align 4
  %134 = sdiv i32 1000000, %133
  %135 = icmp uge i32 %132, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %128
  %137 = load i32, i32* %21, align 4
  %138 = udiv i32 %137, 1000
  %139 = call i32 @msleep(i32 %138)
  %140 = load i32, i32* %21, align 4
  %141 = load i32, i32* %20, align 4
  %142 = sub i32 %141, %140
  store i32 %142, i32* %20, align 4
  %143 = load i32, i32* @HZ, align 4
  %144 = sdiv i32 1000000, %143
  store i32 %144, i32* %21, align 4
  br label %150

145:                                              ; preds = %128
  %146 = call i32 @udelay(i32 1)
  %147 = call i32 (...) @cond_resched()
  %148 = load i32, i32* %20, align 4
  %149 = add i32 %148, -1
  store i32 %149, i32* %20, align 4
  br label %150

150:                                              ; preds = %145, %136
  %151 = load %struct.flchip*, %struct.flchip** %10, align 8
  %152 = getelementptr inbounds %struct.flchip, %struct.flchip* %151, i32 0, i32 1
  %153 = call i32 @mutex_lock(i32* %152)
  br label %52

154:                                              ; preds = %87
  %155 = load i8*, i8** @FL_STATUS, align 8
  %156 = ptrtoint i8* %155 to i32
  %157 = load %struct.flchip*, %struct.flchip** %10, align 8
  %158 = getelementptr inbounds %struct.flchip, %struct.flchip* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  store i32 0, i32* %8, align 4
  br label %159

159:                                              ; preds = %154, %117
  %160 = load i32, i32* %8, align 4
  ret i32 %160
}

declare dso_local i32 @CMD(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @INVALIDATE_CACHED_RANGE(%struct.map_info*, i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @map_read(%struct.map_info*, i64) #1

declare dso_local i64 @map_word_andequal(%struct.map_info*, i32, i32, i32) #1

declare dso_local i32 @map_write(%struct.map_info*, i32, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
