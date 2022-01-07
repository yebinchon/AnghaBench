; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/lpddr/extr_lpddr_cmds.c_get_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/lpddr/extr_lpddr_cmds.c_get_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i32 }
%struct.flchip = type { i64, i32, i32, i32, %struct.flchip_shared* }
%struct.flchip_shared = type { i32, %struct.flchip*, %struct.flchip* }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@FL_WRITING = common dso_local global i32 0, align 4
@FL_ERASING = common dso_local global i32 0, align 4
@FL_SYNCING = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.map_info*, %struct.flchip*, i32)* @get_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_chip(%struct.map_info* %0, %struct.flchip* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.map_info*, align 8
  %6 = alloca %struct.flchip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.flchip_shared*, align 8
  %10 = alloca %struct.flchip*, align 8
  store %struct.map_info* %0, %struct.map_info** %5, align 8
  store %struct.flchip* %1, %struct.flchip** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @wait, align 4
  %12 = load i32, i32* @current, align 4
  %13 = call i32 @DECLARE_WAITQUEUE(i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %166, %123, %95, %74, %58, %3
  %15 = load %struct.flchip*, %struct.flchip** %6, align 8
  %16 = getelementptr inbounds %struct.flchip, %struct.flchip* %15, i32 0, i32 4
  %17 = load %struct.flchip_shared*, %struct.flchip_shared** %16, align 8
  %18 = icmp ne %struct.flchip_shared* %17, null
  br i1 %18, label %19, label %157

19:                                               ; preds = %14
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @FL_WRITING, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @FL_ERASING, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %157

27:                                               ; preds = %23, %19
  %28 = load %struct.flchip*, %struct.flchip** %6, align 8
  %29 = getelementptr inbounds %struct.flchip, %struct.flchip* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @FL_SYNCING, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %157

33:                                               ; preds = %27
  %34 = load %struct.flchip*, %struct.flchip** %6, align 8
  %35 = getelementptr inbounds %struct.flchip, %struct.flchip* %34, i32 0, i32 4
  %36 = load %struct.flchip_shared*, %struct.flchip_shared** %35, align 8
  store %struct.flchip_shared* %36, %struct.flchip_shared** %9, align 8
  %37 = load %struct.flchip_shared*, %struct.flchip_shared** %9, align 8
  %38 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.flchip_shared*, %struct.flchip_shared** %9, align 8
  %41 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %40, i32 0, i32 2
  %42 = load %struct.flchip*, %struct.flchip** %41, align 8
  store %struct.flchip* %42, %struct.flchip** %10, align 8
  %43 = load %struct.flchip*, %struct.flchip** %10, align 8
  %44 = icmp ne %struct.flchip* %43, null
  br i1 %44, label %45, label %106

45:                                               ; preds = %33
  %46 = load %struct.flchip*, %struct.flchip** %10, align 8
  %47 = load %struct.flchip*, %struct.flchip** %6, align 8
  %48 = icmp ne %struct.flchip* %46, %47
  br i1 %48, label %49, label %106

49:                                               ; preds = %45
  %50 = load %struct.flchip*, %struct.flchip** %10, align 8
  %51 = getelementptr inbounds %struct.flchip, %struct.flchip* %50, i32 0, i32 2
  %52 = call i32 @mutex_trylock(i32* %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.flchip_shared*, %struct.flchip_shared** %9, align 8
  %54 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %49
  br label %14

59:                                               ; preds = %49
  %60 = load %struct.flchip*, %struct.flchip** %6, align 8
  %61 = getelementptr inbounds %struct.flchip, %struct.flchip* %60, i32 0, i32 2
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load %struct.map_info*, %struct.map_info** %5, align 8
  %64 = load %struct.flchip*, %struct.flchip** %10, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @chip_ready(%struct.map_info* %63, %struct.flchip* %64, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load %struct.flchip*, %struct.flchip** %6, align 8
  %68 = getelementptr inbounds %struct.flchip, %struct.flchip* %67, i32 0, i32 2
  %69 = call i32 @mutex_lock(i32* %68)
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @EAGAIN, align 4
  %72 = sub nsw i32 0, %71
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %59
  %75 = load %struct.flchip*, %struct.flchip** %10, align 8
  %76 = getelementptr inbounds %struct.flchip, %struct.flchip* %75, i32 0, i32 2
  %77 = call i32 @mutex_unlock(i32* %76)
  br label %14

78:                                               ; preds = %59
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load %struct.flchip*, %struct.flchip** %10, align 8
  %83 = getelementptr inbounds %struct.flchip, %struct.flchip* %82, i32 0, i32 2
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %4, align 4
  br label %169

86:                                               ; preds = %78
  %87 = load %struct.flchip_shared*, %struct.flchip_shared** %9, align 8
  %88 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %87, i32 0, i32 0
  %89 = call i32 @mutex_lock(i32* %88)
  %90 = load %struct.flchip*, %struct.flchip** %6, align 8
  %91 = getelementptr inbounds %struct.flchip, %struct.flchip* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @FL_SYNCING, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %86
  %96 = load %struct.map_info*, %struct.map_info** %5, align 8
  %97 = load %struct.flchip*, %struct.flchip** %10, align 8
  %98 = call i32 @put_chip(%struct.map_info* %96, %struct.flchip* %97)
  %99 = load %struct.flchip*, %struct.flchip** %10, align 8
  %100 = getelementptr inbounds %struct.flchip, %struct.flchip* %99, i32 0, i32 2
  %101 = call i32 @mutex_unlock(i32* %100)
  br label %14

102:                                              ; preds = %86
  %103 = load %struct.flchip*, %struct.flchip** %10, align 8
  %104 = getelementptr inbounds %struct.flchip, %struct.flchip* %103, i32 0, i32 2
  %105 = call i32 @mutex_unlock(i32* %104)
  br label %106

106:                                              ; preds = %102, %45, %33
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @FL_ERASING, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %142

110:                                              ; preds = %106
  %111 = load %struct.flchip_shared*, %struct.flchip_shared** %9, align 8
  %112 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %111, i32 0, i32 1
  %113 = load %struct.flchip*, %struct.flchip** %112, align 8
  %114 = icmp ne %struct.flchip* %113, null
  br i1 %114, label %115, label %142

115:                                              ; preds = %110
  %116 = load %struct.flchip_shared*, %struct.flchip_shared** %9, align 8
  %117 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %116, i32 0, i32 1
  %118 = load %struct.flchip*, %struct.flchip** %117, align 8
  %119 = getelementptr inbounds %struct.flchip, %struct.flchip* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @FL_ERASING, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %142

123:                                              ; preds = %115
  %124 = load %struct.flchip_shared*, %struct.flchip_shared** %9, align 8
  %125 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %124, i32 0, i32 0
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %128 = call i32 @set_current_state(i32 %127)
  %129 = load %struct.flchip*, %struct.flchip** %6, align 8
  %130 = getelementptr inbounds %struct.flchip, %struct.flchip* %129, i32 0, i32 3
  %131 = call i32 @add_wait_queue(i32* %130, i32* @wait)
  %132 = load %struct.flchip*, %struct.flchip** %6, align 8
  %133 = getelementptr inbounds %struct.flchip, %struct.flchip* %132, i32 0, i32 2
  %134 = call i32 @mutex_unlock(i32* %133)
  %135 = call i32 (...) @schedule()
  %136 = load %struct.flchip*, %struct.flchip** %6, align 8
  %137 = getelementptr inbounds %struct.flchip, %struct.flchip* %136, i32 0, i32 3
  %138 = call i32 @remove_wait_queue(i32* %137, i32* @wait)
  %139 = load %struct.flchip*, %struct.flchip** %6, align 8
  %140 = getelementptr inbounds %struct.flchip, %struct.flchip* %139, i32 0, i32 2
  %141 = call i32 @mutex_lock(i32* %140)
  br label %14

142:                                              ; preds = %115, %110, %106
  %143 = load %struct.flchip*, %struct.flchip** %6, align 8
  %144 = load %struct.flchip_shared*, %struct.flchip_shared** %9, align 8
  %145 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %144, i32 0, i32 2
  store %struct.flchip* %143, %struct.flchip** %145, align 8
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @FL_ERASING, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %142
  %150 = load %struct.flchip*, %struct.flchip** %6, align 8
  %151 = load %struct.flchip_shared*, %struct.flchip_shared** %9, align 8
  %152 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %151, i32 0, i32 1
  store %struct.flchip* %150, %struct.flchip** %152, align 8
  br label %153

153:                                              ; preds = %149, %142
  %154 = load %struct.flchip_shared*, %struct.flchip_shared** %9, align 8
  %155 = getelementptr inbounds %struct.flchip_shared, %struct.flchip_shared* %154, i32 0, i32 0
  %156 = call i32 @mutex_unlock(i32* %155)
  br label %157

157:                                              ; preds = %153, %27, %23, %14
  %158 = load %struct.map_info*, %struct.map_info** %5, align 8
  %159 = load %struct.flchip*, %struct.flchip** %6, align 8
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @chip_ready(%struct.map_info* %158, %struct.flchip* %159, i32 %160)
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* @EAGAIN, align 4
  %164 = sub nsw i32 0, %163
  %165 = icmp eq i32 %162, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %157
  br label %14

167:                                              ; preds = %157
  %168 = load i32, i32* %8, align 4
  store i32 %168, i32* %4, align 4
  br label %169

169:                                              ; preds = %167, %81
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @chip_ready(%struct.map_info*, %struct.flchip*, i32) #1

declare dso_local i32 @put_chip(%struct.map_info*, %struct.flchip*) #1

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
