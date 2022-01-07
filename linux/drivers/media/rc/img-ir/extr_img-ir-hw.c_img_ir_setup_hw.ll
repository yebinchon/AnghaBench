; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_setup_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_setup_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_decoder = type { i32 }
%struct.img_ir_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@img_ir_decoders = common dso_local global %struct.img_ir_decoder** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @img_ir_setup_hw(%struct.img_ir_priv* %0) #0 {
  %2 = alloca %struct.img_ir_priv*, align 8
  %3 = alloca %struct.img_ir_decoder**, align 8
  %4 = alloca %struct.img_ir_decoder*, align 8
  store %struct.img_ir_priv* %0, %struct.img_ir_priv** %2, align 8
  %5 = load %struct.img_ir_priv*, %struct.img_ir_priv** %2, align 8
  %6 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %40

11:                                               ; preds = %1
  %12 = load %struct.img_ir_decoder**, %struct.img_ir_decoder*** @img_ir_decoders, align 8
  store %struct.img_ir_decoder** %12, %struct.img_ir_decoder*** %3, align 8
  br label %13

13:                                               ; preds = %34, %11
  %14 = load %struct.img_ir_decoder**, %struct.img_ir_decoder*** %3, align 8
  %15 = load %struct.img_ir_decoder*, %struct.img_ir_decoder** %14, align 8
  %16 = icmp ne %struct.img_ir_decoder* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = load %struct.img_ir_decoder**, %struct.img_ir_decoder*** %3, align 8
  %19 = load %struct.img_ir_decoder*, %struct.img_ir_decoder** %18, align 8
  store %struct.img_ir_decoder* %19, %struct.img_ir_decoder** %4, align 8
  %20 = load %struct.img_ir_priv*, %struct.img_ir_priv** %2, align 8
  %21 = load %struct.img_ir_decoder*, %struct.img_ir_decoder** %4, align 8
  %22 = call i64 @img_ir_decoder_compatible(%struct.img_ir_priv* %20, %struct.img_ir_decoder* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load %struct.img_ir_priv*, %struct.img_ir_priv** %2, align 8
  %26 = load %struct.img_ir_decoder*, %struct.img_ir_decoder** %4, align 8
  %27 = getelementptr inbounds %struct.img_ir_decoder, %struct.img_ir_decoder* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @img_ir_set_protocol(%struct.img_ir_priv* %25, i32 %28)
  %30 = load %struct.img_ir_priv*, %struct.img_ir_priv** %2, align 8
  %31 = load %struct.img_ir_decoder*, %struct.img_ir_decoder** %4, align 8
  %32 = call i32 @img_ir_set_decoder(%struct.img_ir_priv* %30, %struct.img_ir_decoder* %31, i32 0)
  br label %40

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.img_ir_decoder**, %struct.img_ir_decoder*** %3, align 8
  %36 = getelementptr inbounds %struct.img_ir_decoder*, %struct.img_ir_decoder** %35, i32 1
  store %struct.img_ir_decoder** %36, %struct.img_ir_decoder*** %3, align 8
  br label %13

37:                                               ; preds = %13
  %38 = load %struct.img_ir_priv*, %struct.img_ir_priv** %2, align 8
  %39 = call i32 @img_ir_set_decoder(%struct.img_ir_priv* %38, %struct.img_ir_decoder* null, i32 0)
  br label %40

40:                                               ; preds = %37, %24, %10
  ret void
}

declare dso_local i64 @img_ir_decoder_compatible(%struct.img_ir_priv*, %struct.img_ir_decoder*) #1

declare dso_local i32 @img_ir_set_protocol(%struct.img_ir_priv*, i32) #1

declare dso_local i32 @img_ir_set_decoder(%struct.img_ir_priv*, %struct.img_ir_decoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
