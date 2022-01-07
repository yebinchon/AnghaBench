; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_allowed_protos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_allowed_protos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_decoder = type { i32 }
%struct.img_ir_priv = type { i32 }

@img_ir_decoders = common dso_local global %struct.img_ir_decoder** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.img_ir_priv*)* @img_ir_allowed_protos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_ir_allowed_protos(%struct.img_ir_priv* %0) #0 {
  %2 = alloca %struct.img_ir_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.img_ir_decoder**, align 8
  %5 = alloca %struct.img_ir_decoder*, align 8
  store %struct.img_ir_priv* %0, %struct.img_ir_priv** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.img_ir_decoder**, %struct.img_ir_decoder*** @img_ir_decoders, align 8
  store %struct.img_ir_decoder** %6, %struct.img_ir_decoder*** %4, align 8
  br label %7

7:                                                ; preds = %25, %1
  %8 = load %struct.img_ir_decoder**, %struct.img_ir_decoder*** %4, align 8
  %9 = load %struct.img_ir_decoder*, %struct.img_ir_decoder** %8, align 8
  %10 = icmp ne %struct.img_ir_decoder* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = load %struct.img_ir_decoder**, %struct.img_ir_decoder*** %4, align 8
  %13 = load %struct.img_ir_decoder*, %struct.img_ir_decoder** %12, align 8
  store %struct.img_ir_decoder* %13, %struct.img_ir_decoder** %5, align 8
  %14 = load %struct.img_ir_priv*, %struct.img_ir_priv** %2, align 8
  %15 = load %struct.img_ir_decoder*, %struct.img_ir_decoder** %5, align 8
  %16 = call i64 @img_ir_decoder_compatible(%struct.img_ir_priv* %14, %struct.img_ir_decoder* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = load %struct.img_ir_decoder*, %struct.img_ir_decoder** %5, align 8
  %20 = getelementptr inbounds %struct.img_ir_decoder, %struct.img_ir_decoder* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %18, %11
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.img_ir_decoder**, %struct.img_ir_decoder*** %4, align 8
  %27 = getelementptr inbounds %struct.img_ir_decoder*, %struct.img_ir_decoder** %26, i32 1
  store %struct.img_ir_decoder** %27, %struct.img_ir_decoder*** %4, align 8
  br label %7

28:                                               ; preds = %7
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @img_ir_decoder_compatible(%struct.img_ir_priv*, %struct.img_ir_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
