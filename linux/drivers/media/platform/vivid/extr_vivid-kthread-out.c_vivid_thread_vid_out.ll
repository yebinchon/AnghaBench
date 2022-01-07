; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-kthread-out.c_vivid_thread_vid_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-kthread-out.c_vivid_thread_vid_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { i32, i32, i64, i32, i64, i32, i64, i64, i64, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Video Output Thread Start\0A\00", align 1
@jiffies = common dso_local global i8* null, align 8
@V4L2_FIELD_ALTERNATE = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@JIFFIES_RESYNC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Video Output Thread End\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vivid_thread_vid_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vivid_thread_vid_out(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vivid_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.vivid_dev*
  store %struct.vivid_dev* %13, %struct.vivid_dev** %3, align 8
  %14 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %15 = call i32 @dprintk(%struct.vivid_dev* %14, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 (...) @set_freezable()
  %17 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %18 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %20 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %19, i32 0, i32 11
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %25 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %24, i32 0, i32 1
  store i32 -128, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %1
  %27 = load i8*, i8** @jiffies, align 8
  %28 = ptrtoint i8* %27 to i64
  %29 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %30 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  %31 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %32 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %31, i32 0, i32 6
  store i64 0, i64* %32, align 8
  %33 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %34 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %33, i32 0, i32 8
  store i64 0, i64* %34, align 8
  %35 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %36 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %35, i32 0, i32 3
  store i32 0, i32* %36, align 8
  br label %37

37:                                               ; preds = %186, %26
  %38 = call i32 (...) @try_to_freeze()
  %39 = call i64 (...) @kthread_should_stop()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %189

42:                                               ; preds = %37
  %43 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %44 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %43, i32 0, i32 5
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load i8*, i8** @jiffies, align 8
  %47 = ptrtoint i8* %46 to i64
  store i64 %47, i64* %8, align 8
  %48 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %49 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %42
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %55 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %57 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  %60 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %61 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %63 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %62, i32 0, i32 1
  store i32 0, i32* %63, align 4
  %64 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %65 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %64, i32 0, i32 3
  store i32 0, i32* %65, align 8
  br label %66

66:                                               ; preds = %52, %42
  %67 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %68 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %67, i32 0, i32 10
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %10, align 4
  %71 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %72 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %71, i32 0, i32 10
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %11, align 4
  %75 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %76 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @V4L2_FIELD_ALTERNATE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %66
  %81 = load i32, i32* %11, align 4
  %82 = mul i32 %81, 2
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %80, %66
  %84 = load i64, i64* %8, align 8
  %85 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %86 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = sub i64 %84, %87
  store i64 %88, i64* %7, align 8
  %89 = load i64, i64* %7, align 8
  %90 = trunc i64 %89 to i32
  %91 = load i32, i32* %11, align 4
  %92 = mul i32 %90, %91
  %93 = load i32, i32* @HZ, align 4
  %94 = load i32, i32* %10, align 4
  %95 = mul i32 %93, %94
  %96 = udiv i32 %95, 2
  %97 = add i32 %92, %96
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @HZ, align 4
  %100 = load i32, i32* %10, align 4
  %101 = mul i32 %99, %100
  %102 = call i32 @do_div(i32 %98, i32 %101)
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* @JIFFIES_RESYNC, align 8
  %105 = icmp ugt i64 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %83
  %107 = load i64, i64* %8, align 8
  %108 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %109 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %108, i32 0, i32 2
  store i64 %107, i64* %109, align 8
  %110 = load i32, i32* %5, align 4
  %111 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %112 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %106, %83
  %114 = load i32, i32* %5, align 4
  %115 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %116 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add i32 %114, %117
  %119 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %120 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %122 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %126 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %125, i32 0, i32 8
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 %124, %127
  %129 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %130 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %129, i32 0, i32 9
  store i64 %128, i64* %130, align 8
  %131 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %132 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %136 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %135, i32 0, i32 6
  %137 = load i64, i64* %136, align 8
  %138 = sub nsw i64 %134, %137
  %139 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %140 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %139, i32 0, i32 7
  store i64 %138, i64* %140, align 8
  %141 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %142 = call i32 @vivid_thread_vid_out_tick(%struct.vivid_dev* %141)
  %143 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %144 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %143, i32 0, i32 5
  %145 = call i32 @mutex_unlock(i32* %144)
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* %10, align 4
  %148 = mul i32 %146, %147
  store i32 %148, i32* %4, align 4
  %149 = load i8*, i8** @jiffies, align 8
  %150 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %151 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = sub i64 0, %152
  %154 = getelementptr i8, i8* %149, i64 %153
  %155 = ptrtoint i8* %154 to i64
  store i64 %155, i64* %7, align 8
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %4, align 4
  %158 = add i32 %157, %156
  store i32 %158, i32* %4, align 4
  %159 = load i32, i32* %4, align 4
  %160 = load i32, i32* @HZ, align 4
  %161 = mul i32 %159, %160
  %162 = load i32, i32* %11, align 4
  %163 = udiv i32 %162, 2
  %164 = add i32 %161, %163
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @do_div(i32 %165, i32 %166)
  %168 = load i32, i32* %6, align 4
  %169 = zext i32 %168 to i64
  %170 = load i64, i64* %7, align 8
  %171 = icmp ult i64 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %113
  %173 = load i64, i64* %7, align 8
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %6, align 4
  br label %175

175:                                              ; preds = %172, %113
  %176 = load i32, i32* %6, align 4
  %177 = zext i32 %176 to i64
  %178 = load i64, i64* %7, align 8
  %179 = sub i64 %177, %178
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %9, align 4
  %181 = load i32, i32* %9, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %175
  %184 = load i32, i32* %9, align 4
  br label %186

185:                                              ; preds = %175
  br label %186

186:                                              ; preds = %185, %183
  %187 = phi i32 [ %184, %183 ], [ 1, %185 ]
  %188 = call i32 @schedule_timeout_interruptible(i32 %187)
  br label %37

189:                                              ; preds = %41
  %190 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %191 = call i32 @dprintk(%struct.vivid_dev* %190, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @dprintk(%struct.vivid_dev*, i32, i8*) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @vivid_thread_vid_out_tick(%struct.vivid_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
