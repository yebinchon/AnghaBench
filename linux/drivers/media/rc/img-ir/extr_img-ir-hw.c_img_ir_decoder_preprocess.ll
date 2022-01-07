; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_decoder_preprocess.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_decoder_preprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_decoder = type { i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.img_ir_decoder*)* @img_ir_decoder_preprocess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_ir_decoder_preprocess(%struct.img_ir_decoder* %0) #0 {
  %2 = alloca %struct.img_ir_decoder*, align 8
  store %struct.img_ir_decoder* %0, %struct.img_ir_decoder** %2, align 8
  %3 = load %struct.img_ir_decoder*, %struct.img_ir_decoder** %2, align 8
  %4 = getelementptr inbounds %struct.img_ir_decoder, %struct.img_ir_decoder* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load %struct.img_ir_decoder*, %struct.img_ir_decoder** %2, align 8
  %9 = getelementptr inbounds %struct.img_ir_decoder, %struct.img_ir_decoder* %8, i32 0, i32 0
  store i32 10, i32* %9, align 8
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.img_ir_decoder*, %struct.img_ir_decoder** %2, align 8
  %12 = getelementptr inbounds %struct.img_ir_decoder, %struct.img_ir_decoder* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = mul nsw i32 %13, 128
  %15 = sdiv i32 %14, 100
  %16 = load %struct.img_ir_decoder*, %struct.img_ir_decoder** %2, align 8
  %17 = getelementptr inbounds %struct.img_ir_decoder, %struct.img_ir_decoder* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.img_ir_decoder*, %struct.img_ir_decoder** %2, align 8
  %19 = getelementptr inbounds %struct.img_ir_decoder, %struct.img_ir_decoder* %18, i32 0, i32 1
  %20 = load %struct.img_ir_decoder*, %struct.img_ir_decoder** %2, align 8
  %21 = getelementptr inbounds %struct.img_ir_decoder, %struct.img_ir_decoder* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @img_ir_timings_preprocess(i32* %19, i32 %22)
  %24 = load %struct.img_ir_decoder*, %struct.img_ir_decoder** %2, align 8
  %25 = getelementptr inbounds %struct.img_ir_decoder, %struct.img_ir_decoder* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %10
  %29 = load %struct.img_ir_decoder*, %struct.img_ir_decoder** %2, align 8
  %30 = getelementptr inbounds %struct.img_ir_decoder, %struct.img_ir_decoder* %29, i32 0, i32 2
  %31 = load %struct.img_ir_decoder*, %struct.img_ir_decoder** %2, align 8
  %32 = getelementptr inbounds %struct.img_ir_decoder, %struct.img_ir_decoder* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @img_ir_timings_preprocess(i32* %30, i32 %33)
  %35 = load %struct.img_ir_decoder*, %struct.img_ir_decoder** %2, align 8
  %36 = getelementptr inbounds %struct.img_ir_decoder, %struct.img_ir_decoder* %35, i32 0, i32 2
  %37 = load %struct.img_ir_decoder*, %struct.img_ir_decoder** %2, align 8
  %38 = getelementptr inbounds %struct.img_ir_decoder, %struct.img_ir_decoder* %37, i32 0, i32 1
  %39 = call i32 @img_ir_timings_defaults(i32* %36, i32* %38)
  br label %40

40:                                               ; preds = %28, %10
  ret void
}

declare dso_local i32 @img_ir_timings_preprocess(i32*, i32) #1

declare dso_local i32 @img_ir_timings_defaults(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
