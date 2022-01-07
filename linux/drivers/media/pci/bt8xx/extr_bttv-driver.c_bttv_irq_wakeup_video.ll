; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_irq_wakeup_video.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_irq_wakeup_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.bttv_buffer_set = type { %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i8* }

@irq_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%d: wakeup: both=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%d: wakeup: top=%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%d: wakeup: bottom=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*, %struct.bttv_buffer_set*, %struct.bttv_buffer_set*, i32)* @bttv_irq_wakeup_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bttv_irq_wakeup_video(%struct.bttv* %0, %struct.bttv_buffer_set* %1, %struct.bttv_buffer_set* %2, i32 %3) #0 {
  %5 = alloca %struct.bttv*, align 8
  %6 = alloca %struct.bttv_buffer_set*, align 8
  %7 = alloca %struct.bttv_buffer_set*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.bttv* %0, %struct.bttv** %5, align 8
  store %struct.bttv_buffer_set* %1, %struct.bttv_buffer_set** %6, align 8
  store %struct.bttv_buffer_set* %2, %struct.bttv_buffer_set** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = call i8* (...) @ktime_get_ns()
  store i8* %10, i8** %9, align 8
  %11 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %6, align 8
  %12 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %6, align 8
  %15 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = icmp eq %struct.TYPE_6__* %13, %16
  br i1 %17, label %18, label %71

18:                                               ; preds = %4
  %19 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %6, align 8
  %20 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = icmp ne %struct.TYPE_6__* null, %21
  br i1 %22, label %23, label %70

23:                                               ; preds = %18
  %24 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %7, align 8
  %25 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %6, align 8
  %28 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = icmp ne %struct.TYPE_6__* %26, %29
  br i1 %30, label %31, label %70

31:                                               ; preds = %23
  %32 = load i32, i32* @irq_debug, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load %struct.bttv*, %struct.bttv** %5, align 8
  %36 = getelementptr inbounds %struct.bttv, %struct.bttv* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %6, align 8
  %40 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %38, %struct.TYPE_6__* %41)
  br label %43

43:                                               ; preds = %34, %31
  %44 = load i8*, i8** %9, align 8
  %45 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %6, align 8
  %46 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  store i8* %44, i8** %49, align 8
  %50 = load %struct.bttv*, %struct.bttv** %5, align 8
  %51 = getelementptr inbounds %struct.bttv, %struct.bttv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %6, align 8
  %54 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  store i32 %52, i32* %57, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %6, align 8
  %60 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 %58, i32* %63, align 8
  %64 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %6, align 8
  %65 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = call i32 @wake_up(i32* %68)
  br label %70

70:                                               ; preds = %43, %23, %18
  br label %176

71:                                               ; preds = %4
  %72 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %6, align 8
  %73 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = icmp ne %struct.TYPE_6__* null, %74
  br i1 %75, label %76, label %123

76:                                               ; preds = %71
  %77 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %7, align 8
  %78 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %6, align 8
  %81 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = icmp ne %struct.TYPE_6__* %79, %82
  br i1 %83, label %84, label %123

84:                                               ; preds = %76
  %85 = load i32, i32* @irq_debug, align 4
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load %struct.bttv*, %struct.bttv** %5, align 8
  %89 = getelementptr inbounds %struct.bttv, %struct.bttv* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %6, align 8
  %93 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %92, i32 0, i32 1
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %91, %struct.TYPE_6__* %94)
  br label %96

96:                                               ; preds = %87, %84
  %97 = load i8*, i8** %9, align 8
  %98 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %6, align 8
  %99 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %98, i32 0, i32 1
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 3
  store i8* %97, i8** %102, align 8
  %103 = load %struct.bttv*, %struct.bttv** %5, align 8
  %104 = getelementptr inbounds %struct.bttv, %struct.bttv* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %6, align 8
  %107 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %106, i32 0, i32 1
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  store i32 %105, i32* %110, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %6, align 8
  %113 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %112, i32 0, i32 1
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  store i32 %111, i32* %116, align 8
  %117 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %6, align 8
  %118 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %117, i32 0, i32 1
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = call i32 @wake_up(i32* %121)
  br label %123

123:                                              ; preds = %96, %76, %71
  %124 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %6, align 8
  %125 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %124, i32 0, i32 0
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = icmp ne %struct.TYPE_6__* null, %126
  br i1 %127, label %128, label %175

128:                                              ; preds = %123
  %129 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %7, align 8
  %130 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %6, align 8
  %133 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %132, i32 0, i32 0
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = icmp ne %struct.TYPE_6__* %131, %134
  br i1 %135, label %136, label %175

136:                                              ; preds = %128
  %137 = load i32, i32* @irq_debug, align 4
  %138 = icmp sgt i32 %137, 1
  br i1 %138, label %139, label %148

139:                                              ; preds = %136
  %140 = load %struct.bttv*, %struct.bttv** %5, align 8
  %141 = getelementptr inbounds %struct.bttv, %struct.bttv* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %6, align 8
  %145 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %144, i32 0, i32 0
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %143, %struct.TYPE_6__* %146)
  br label %148

148:                                              ; preds = %139, %136
  %149 = load i8*, i8** %9, align 8
  %150 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %6, align 8
  %151 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %150, i32 0, i32 0
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 3
  store i8* %149, i8** %154, align 8
  %155 = load %struct.bttv*, %struct.bttv** %5, align 8
  %156 = getelementptr inbounds %struct.bttv, %struct.bttv* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %6, align 8
  %159 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %158, i32 0, i32 0
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 2
  store i32 %157, i32* %162, align 8
  %163 = load i32, i32* %8, align 4
  %164 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %6, align 8
  %165 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %164, i32 0, i32 0
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  store i32 %163, i32* %168, align 8
  %169 = load %struct.bttv_buffer_set*, %struct.bttv_buffer_set** %6, align 8
  %170 = getelementptr inbounds %struct.bttv_buffer_set, %struct.bttv_buffer_set* %169, i32 0, i32 0
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = call i32 @wake_up(i32* %173)
  br label %175

175:                                              ; preds = %148, %128, %123
  br label %176

176:                                              ; preds = %175, %70
  ret void
}

declare dso_local i8* @ktime_get_ns(...) #1

declare dso_local i32 @pr_debug(i8*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
