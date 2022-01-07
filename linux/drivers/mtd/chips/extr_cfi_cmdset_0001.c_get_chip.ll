; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0001.c_get_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0001.c_get_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i32 }
%struct.flchip = type { i64, i64, i32, i32, i32, %struct.flchip_shared* }
%struct.flchip_shared = type { i32, %struct.flchip*, %struct.flchip* }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@FL_WRITING = common dso_local global i32 0, align 4
@FL_ERASING = common dso_local global i32 0, align 4
@FL_OTP_WRITE = common dso_local global i32 0, align 4
@FL_SHUTDOWN = common dso_local global i32 0, align 4
@FL_SYNCING = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.map_info*, %struct.flchip*, i64, i32)* @get_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_chip(%struct.map_info* %0, %struct.flchip* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.map_info*, align 8
  %7 = alloca %struct.flchip*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.flchip_shared*, align 8
  %12 = alloca %struct.flchip*, align 8
  store %struct.map_info* %0, %struct.map_info** %6, align 8
  store %struct.flchip* %1, %struct.flchip** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @wait, align 4
  %14 = load i32, i32* @current, align 4
  %15 = call i32 @DECLARE_WAITQUEUE(i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %183, %139, %108, %87, %68, %4
  %17 = load %struct.flchip*, %struct.flchip** %7, align 8
  %18 = getelementptr inbounds %struct.flchip, %struct.flchip* %17, i32 0, i32 5
  %19 = load %struct.flchip_shared*, %struct.flchip_shared** %18, align 8
  %20 = icmp ne %struct.flchip_shared* %19, null
  br i1 %20, label %21, label %173

21:                                               ; preds = %16
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @FL_WRITING, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %37, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @FL_ERASING, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @FL_OTP_WRITE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @FL_SHUTDOWN, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %173

37:                                               ; preds = %33, %29, %25, %21
  %38 = load %struct.flchip*, %struct.flchip** %7, align 8
  %39 = getelementptr inbounds %struct.flchip, %struct.flchip* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @FL_SYNCING, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %173

43:                                               ; preds = %37
  %44 = load %struct.flchip*, %struct.flchip** %7, align 8
  %45 = getelementptr inbounds %struct.flchip, %struct.flchip* %44, i32 0, i32 5
  %46 = load %struct.flchip_shared*, %struct.flchip_shared** %45, align 8
  store %struct.flchip_shared* %46, %struct.flchip_shared** %11, align 8
  %47 = load %struct.flchip_shared*, %struct.flchip_shared** %11, align 8
  %48 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.flchip_shared*, %struct.flchip_shared** %11, align 8
  %51 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %50, i32 0, i32 2
  %52 = load %struct.flchip*, %struct.flchip** %51, align 8
  store %struct.flchip* %52, %struct.flchip** %12, align 8
  %53 = load %struct.flchip*, %struct.flchip** %12, align 8
  %54 = icmp ne %struct.flchip* %53, null
  br i1 %54, label %55, label %122

55:                                               ; preds = %43
  %56 = load %struct.flchip*, %struct.flchip** %12, align 8
  %57 = load %struct.flchip*, %struct.flchip** %7, align 8
  %58 = icmp ne %struct.flchip* %56, %57
  br i1 %58, label %59, label %122

59:                                               ; preds = %55
  %60 = load %struct.flchip*, %struct.flchip** %12, align 8
  %61 = getelementptr inbounds %struct.flchip, %struct.flchip* %60, i32 0, i32 3
  %62 = call i32 @mutex_trylock(i32* %61)
  store i32 %62, i32* %10, align 4
  %63 = load %struct.flchip_shared*, %struct.flchip_shared** %11, align 8
  %64 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %59
  br label %16

69:                                               ; preds = %59
  %70 = load %struct.flchip*, %struct.flchip** %7, align 8
  %71 = getelementptr inbounds %struct.flchip, %struct.flchip* %70, i32 0, i32 3
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load %struct.map_info*, %struct.map_info** %6, align 8
  %74 = load %struct.flchip*, %struct.flchip** %12, align 8
  %75 = load %struct.flchip*, %struct.flchip** %12, align 8
  %76 = getelementptr inbounds %struct.flchip, %struct.flchip* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @chip_ready(%struct.map_info* %73, %struct.flchip* %74, i64 %77, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load %struct.flchip*, %struct.flchip** %7, align 8
  %81 = getelementptr inbounds %struct.flchip, %struct.flchip* %80, i32 0, i32 3
  %82 = call i32 @mutex_lock(i32* %81)
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @EAGAIN, align 4
  %85 = sub nsw i32 0, %84
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %69
  %88 = load %struct.flchip*, %struct.flchip** %12, align 8
  %89 = getelementptr inbounds %struct.flchip, %struct.flchip* %88, i32 0, i32 3
  %90 = call i32 @mutex_unlock(i32* %89)
  br label %16

91:                                               ; preds = %69
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load %struct.flchip*, %struct.flchip** %12, align 8
  %96 = getelementptr inbounds %struct.flchip, %struct.flchip* %95, i32 0, i32 3
  %97 = call i32 @mutex_unlock(i32* %96)
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %5, align 4
  br label %186

99:                                               ; preds = %91
  %100 = load %struct.flchip_shared*, %struct.flchip_shared** %11, align 8
  %101 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %100, i32 0, i32 0
  %102 = call i32 @mutex_lock(i32* %101)
  %103 = load %struct.flchip*, %struct.flchip** %7, align 8
  %104 = getelementptr inbounds %struct.flchip, %struct.flchip* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @FL_SYNCING, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %99
  %109 = load %struct.map_info*, %struct.map_info** %6, align 8
  %110 = load %struct.flchip*, %struct.flchip** %12, align 8
  %111 = load %struct.flchip*, %struct.flchip** %12, align 8
  %112 = getelementptr inbounds %struct.flchip, %struct.flchip* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @put_chip(%struct.map_info* %109, %struct.flchip* %110, i64 %113)
  %115 = load %struct.flchip*, %struct.flchip** %12, align 8
  %116 = getelementptr inbounds %struct.flchip, %struct.flchip* %115, i32 0, i32 3
  %117 = call i32 @mutex_unlock(i32* %116)
  br label %16

118:                                              ; preds = %99
  %119 = load %struct.flchip*, %struct.flchip** %12, align 8
  %120 = getelementptr inbounds %struct.flchip, %struct.flchip* %119, i32 0, i32 3
  %121 = call i32 @mutex_unlock(i32* %120)
  br label %122

122:                                              ; preds = %118, %55, %43
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @FL_ERASING, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %158

126:                                              ; preds = %122
  %127 = load %struct.flchip_shared*, %struct.flchip_shared** %11, align 8
  %128 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %127, i32 0, i32 1
  %129 = load %struct.flchip*, %struct.flchip** %128, align 8
  %130 = icmp ne %struct.flchip* %129, null
  br i1 %130, label %131, label %158

131:                                              ; preds = %126
  %132 = load %struct.flchip_shared*, %struct.flchip_shared** %11, align 8
  %133 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %132, i32 0, i32 1
  %134 = load %struct.flchip*, %struct.flchip** %133, align 8
  %135 = getelementptr inbounds %struct.flchip, %struct.flchip* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @FL_ERASING, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %158

139:                                              ; preds = %131
  %140 = load %struct.flchip_shared*, %struct.flchip_shared** %11, align 8
  %141 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %140, i32 0, i32 0
  %142 = call i32 @mutex_unlock(i32* %141)
  %143 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %144 = call i32 @set_current_state(i32 %143)
  %145 = load %struct.flchip*, %struct.flchip** %7, align 8
  %146 = getelementptr inbounds %struct.flchip, %struct.flchip* %145, i32 0, i32 4
  %147 = call i32 @add_wait_queue(i32* %146, i32* @wait)
  %148 = load %struct.flchip*, %struct.flchip** %7, align 8
  %149 = getelementptr inbounds %struct.flchip, %struct.flchip* %148, i32 0, i32 3
  %150 = call i32 @mutex_unlock(i32* %149)
  %151 = call i32 (...) @schedule()
  %152 = load %struct.flchip*, %struct.flchip** %7, align 8
  %153 = getelementptr inbounds %struct.flchip, %struct.flchip* %152, i32 0, i32 4
  %154 = call i32 @remove_wait_queue(i32* %153, i32* @wait)
  %155 = load %struct.flchip*, %struct.flchip** %7, align 8
  %156 = getelementptr inbounds %struct.flchip, %struct.flchip* %155, i32 0, i32 3
  %157 = call i32 @mutex_lock(i32* %156)
  br label %16

158:                                              ; preds = %131, %126, %122
  %159 = load %struct.flchip*, %struct.flchip** %7, align 8
  %160 = load %struct.flchip_shared*, %struct.flchip_shared** %11, align 8
  %161 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %160, i32 0, i32 2
  store %struct.flchip* %159, %struct.flchip** %161, align 8
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* @FL_ERASING, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %158
  %166 = load %struct.flchip*, %struct.flchip** %7, align 8
  %167 = load %struct.flchip_shared*, %struct.flchip_shared** %11, align 8
  %168 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %167, i32 0, i32 1
  store %struct.flchip* %166, %struct.flchip** %168, align 8
  br label %169

169:                                              ; preds = %165, %158
  %170 = load %struct.flchip_shared*, %struct.flchip_shared** %11, align 8
  %171 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %170, i32 0, i32 0
  %172 = call i32 @mutex_unlock(i32* %171)
  br label %173

173:                                              ; preds = %169, %37, %33, %16
  %174 = load %struct.map_info*, %struct.map_info** %6, align 8
  %175 = load %struct.flchip*, %struct.flchip** %7, align 8
  %176 = load i64, i64* %8, align 8
  %177 = load i32, i32* %9, align 4
  %178 = call i32 @chip_ready(%struct.map_info* %174, %struct.flchip* %175, i64 %176, i32 %177)
  store i32 %178, i32* %10, align 4
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* @EAGAIN, align 4
  %181 = sub nsw i32 0, %180
  %182 = icmp eq i32 %179, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %173
  br label %16

184:                                              ; preds = %173
  %185 = load i32, i32* %10, align 4
  store i32 %185, i32* %5, align 4
  br label %186

186:                                              ; preds = %184, %94
  %187 = load i32, i32* %5, align 4
  ret i32 %187
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @chip_ready(%struct.map_info*, %struct.flchip*, i64, i32) #1

declare dso_local i32 @put_chip(%struct.map_info*, %struct.flchip*, i64) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
