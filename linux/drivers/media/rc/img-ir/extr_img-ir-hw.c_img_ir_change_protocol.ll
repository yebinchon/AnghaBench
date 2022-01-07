; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_change_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_change_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_decoder = type { i32 }
%struct.rc_dev = type { i32, %struct.img_ir_priv* }
%struct.img_ir_priv = type { %struct.img_ir_priv_hw }
%struct.img_ir_priv_hw = type { %struct.TYPE_2__*, %struct.rc_dev* }
%struct.TYPE_2__ = type { i32 }

@img_ir_decoders = common dso_local global %struct.img_ir_decoder** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32*)* @img_ir_change_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_ir_change_protocol(%struct.rc_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.img_ir_priv*, align 8
  %7 = alloca %struct.img_ir_priv_hw*, align 8
  %8 = alloca %struct.rc_dev*, align 8
  %9 = alloca %struct.img_ir_decoder**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.img_ir_decoder*, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %13 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %12, i32 0, i32 1
  %14 = load %struct.img_ir_priv*, %struct.img_ir_priv** %13, align 8
  store %struct.img_ir_priv* %14, %struct.img_ir_priv** %6, align 8
  %15 = load %struct.img_ir_priv*, %struct.img_ir_priv** %6, align 8
  %16 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %15, i32 0, i32 0
  store %struct.img_ir_priv_hw* %16, %struct.img_ir_priv_hw** %7, align 8
  %17 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %7, align 8
  %18 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %17, i32 0, i32 1
  %19 = load %struct.rc_dev*, %struct.rc_dev** %18, align 8
  store %struct.rc_dev* %19, %struct.rc_dev** %8, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load %struct.img_ir_priv*, %struct.img_ir_priv** %6, align 8
  %25 = call i32 @img_ir_set_decoder(%struct.img_ir_priv* %24, %struct.img_ir_decoder* null, i32 0)
  br label %67

26:                                               ; preds = %2
  %27 = load %struct.img_ir_decoder**, %struct.img_ir_decoder*** @img_ir_decoders, align 8
  store %struct.img_ir_decoder** %27, %struct.img_ir_decoder*** %9, align 8
  br label %28

28:                                               ; preds = %61, %26
  %29 = load %struct.img_ir_decoder**, %struct.img_ir_decoder*** %9, align 8
  %30 = load %struct.img_ir_decoder*, %struct.img_ir_decoder** %29, align 8
  %31 = icmp ne %struct.img_ir_decoder* %30, null
  br i1 %31, label %32, label %64

32:                                               ; preds = %28
  %33 = load %struct.img_ir_decoder**, %struct.img_ir_decoder*** %9, align 8
  %34 = load %struct.img_ir_decoder*, %struct.img_ir_decoder** %33, align 8
  store %struct.img_ir_decoder* %34, %struct.img_ir_decoder** %11, align 8
  %35 = load %struct.img_ir_priv*, %struct.img_ir_priv** %6, align 8
  %36 = load %struct.img_ir_decoder*, %struct.img_ir_decoder** %11, align 8
  %37 = call i32 @img_ir_decoder_compatible(%struct.img_ir_priv* %35, %struct.img_ir_decoder* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  br label %61

40:                                               ; preds = %32
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.img_ir_decoder*, %struct.img_ir_decoder** %11, align 8
  %44 = getelementptr inbounds %struct.img_ir_decoder, %struct.img_ir_decoder* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %40
  %49 = load %struct.img_ir_decoder*, %struct.img_ir_decoder** %11, align 8
  %50 = getelementptr inbounds %struct.img_ir_decoder, %struct.img_ir_decoder* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %51
  store i32 %54, i32* %52, align 4
  %55 = load %struct.img_ir_priv*, %struct.img_ir_priv** %6, align 8
  %56 = load %struct.img_ir_decoder*, %struct.img_ir_decoder** %11, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @img_ir_set_decoder(%struct.img_ir_priv* %55, %struct.img_ir_decoder* %56, i32 %58)
  br label %67

60:                                               ; preds = %40
  br label %61

61:                                               ; preds = %60, %39
  %62 = load %struct.img_ir_decoder**, %struct.img_ir_decoder*** %9, align 8
  %63 = getelementptr inbounds %struct.img_ir_decoder*, %struct.img_ir_decoder** %62, i32 1
  store %struct.img_ir_decoder** %63, %struct.img_ir_decoder*** %9, align 8
  br label %28

64:                                               ; preds = %28
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %86

67:                                               ; preds = %48, %23
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %10, align 4
  %70 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %7, align 8
  %71 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = icmp ne %struct.TYPE_2__* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %7, align 8
  %76 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %74, %67
  store i32 0, i32* %10, align 4
  br label %82

82:                                               ; preds = %81, %74
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %85 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %82, %64
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @img_ir_set_decoder(%struct.img_ir_priv*, %struct.img_ir_decoder*, i32) #1

declare dso_local i32 @img_ir_decoder_compatible(%struct.img_ir_priv*, %struct.img_ir_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
