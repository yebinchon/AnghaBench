; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_snd-go7007.c_parse_audio_stream_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_snd-go7007.c_parse_audio_stream_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { %struct.go7007_snd* }
%struct.go7007_snd = type { i64, i64, i64, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.go7007*, i32*, i32)* @parse_audio_stream_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_audio_stream_data(%struct.go7007* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.go7007*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.go7007_snd*, align 8
  %8 = alloca %struct.snd_pcm_runtime*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.go7007* %0, %struct.go7007** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.go7007*, %struct.go7007** %4, align 8
  %13 = getelementptr inbounds %struct.go7007, %struct.go7007* %12, i32 0, i32 0
  %14 = load %struct.go7007_snd*, %struct.go7007_snd** %13, align 8
  store %struct.go7007_snd* %14, %struct.go7007_snd** %7, align 8
  %15 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %16 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %18, align 8
  store %struct.snd_pcm_runtime* %19, %struct.snd_pcm_runtime** %8, align 8
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @bytes_to_frames(%struct.snd_pcm_runtime* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %24 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %23, i32 0, i32 5
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %30 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, %28
  store i64 %32, i64* %30, align 8
  %33 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %34 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %35, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %3
  %41 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %45 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %46, %43
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %40, %3
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %52 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, %50
  store i64 %54, i64* %52, align 8
  %55 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %56 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %55, i32 0, i32 5
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %60 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %66 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %64, %67
  br i1 %68, label %69, label %99

69:                                               ; preds = %48
  %70 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %74 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %72, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %11, align 4
  %78 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %79 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %83 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %81, %84
  %86 = trunc i64 %85 to i32
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @memcpy(i32 %86, i32* %87, i32 %88)
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %6, align 4
  %92 = sub nsw i32 %91, %90
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %5, align 8
  %97 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %98 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %97, i32 0, i32 2
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %69, %48
  %100 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %101 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %105 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %103, %106
  %108 = trunc i64 %107 to i32
  %109 = load i32*, i32** %5, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @memcpy(i32 %108, i32* %109, i32 %110)
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %115 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, %113
  store i64 %117, i64* %115, align 8
  %118 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %119 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %118, i32 0, i32 5
  %120 = load i64, i64* %10, align 8
  %121 = call i32 @spin_lock_irqsave(i32* %119, i64 %120)
  %122 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %123 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %126 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = icmp slt i64 %124, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %99
  %130 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %131 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %130, i32 0, i32 5
  %132 = load i64, i64* %10, align 8
  %133 = call i32 @spin_unlock_irqrestore(i32* %131, i64 %132)
  br label %155

134:                                              ; preds = %99
  %135 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %136 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %139 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = sub nsw i64 %140, %137
  store i64 %141, i64* %139, align 8
  %142 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %143 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %142, i32 0, i32 5
  %144 = load i64, i64* %10, align 8
  %145 = call i32 @spin_unlock_irqrestore(i32* %143, i64 %144)
  %146 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %147 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %134
  %151 = load %struct.go7007_snd*, %struct.go7007_snd** %7, align 8
  %152 = getelementptr inbounds %struct.go7007_snd, %struct.go7007_snd* %151, i32 0, i32 3
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = call i32 @snd_pcm_period_elapsed(%struct.TYPE_2__* %153)
  br label %155

155:                                              ; preds = %129, %150, %134
  ret void
}

declare dso_local i32 @bytes_to_frames(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
