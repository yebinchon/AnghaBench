; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_isr_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_isr_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_priv = type { %struct.img_ir_priv_hw }
%struct.img_ir_priv_hw = type { i32*, i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IMG_IR_STATUS = common dso_local global i32 0, align 4
@IMG_IR_RXDVAL = common dso_local global i32 0, align 4
@IMG_IR_RXDVALD2 = common dso_local global i32 0, align 4
@IMG_IR_QUIRK_CODE_IRQ = common dso_local global i32 0, align 4
@IMG_IR_CONTROL = common dso_local global i32 0, align 4
@IMG_IR_IRQ_ENABLE = common dso_local global i32 0, align 4
@IMG_IR_IRQ_EDGE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IMG_IR_RXDLEN = common dso_local global i32 0, align 4
@IMG_IR_RXDLEN_SHIFT = common dso_local global i32 0, align 4
@IMG_IR_QUIRK_CODE_LEN_INCR = common dso_local global i32 0, align 4
@IMG_IR_DATA_LW = common dso_local global i32 0, align 4
@IMG_IR_DATA_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @img_ir_isr_hw(%struct.img_ir_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.img_ir_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.img_ir_priv_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.img_ir_priv* %0, %struct.img_ir_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %12 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %11, i32 0, i32 0
  store %struct.img_ir_priv_hw* %12, %struct.img_ir_priv_hw** %5, align 8
  %13 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %5, align 8
  %14 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %13, i32 0, i32 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %122

18:                                               ; preds = %2
  %19 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %5, align 8
  %20 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %19, i32 0, i32 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %26 = load i32, i32* @IMG_IR_STATUS, align 4
  %27 = call i8* @img_ir_read(%struct.img_ir_priv* %25, i32 %26)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @IMG_IR_RXDVAL, align 4
  %31 = load i32, i32* @IMG_IR_RXDVALD2, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %77, label %35

35:                                               ; preds = %18
  %36 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %37 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IMG_IR_QUIRK_CODE_IRQ, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %35
  %48 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %5, align 8
  %49 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47, %35
  br label %122

53:                                               ; preds = %47
  %54 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %55 = load i32, i32* @IMG_IR_CONTROL, align 4
  %56 = call i32 @img_ir_write(%struct.img_ir_priv* %54, i32 %55, i32 0)
  %57 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %58 = load i32, i32* @IMG_IR_IRQ_ENABLE, align 4
  %59 = call i8* @img_ir_read(%struct.img_ir_priv* %57, i32 %58)
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %5, align 8
  %62 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %64 = load i32, i32* @IMG_IR_IRQ_ENABLE, align 4
  %65 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %5, align 8
  %66 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @IMG_IR_IRQ_EDGE, align 4
  %69 = and i32 %67, %68
  %70 = call i32 @img_ir_write(%struct.img_ir_priv* %63, i32 %64, i32 %69)
  %71 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %5, align 8
  %72 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %71, i32 0, i32 2
  %73 = load i64, i64* @jiffies, align 8
  %74 = call i64 @msecs_to_jiffies(i32 5)
  %75 = add nsw i64 %73, %74
  %76 = call i32 @mod_timer(i32* %72, i64 %75)
  br label %122

77:                                               ; preds = %18
  %78 = load i32, i32* @IMG_IR_RXDVAL, align 4
  %79 = load i32, i32* @IMG_IR_RXDVALD2, align 4
  %80 = or i32 %78, %79
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %6, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %6, align 4
  %84 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %85 = load i32, i32* @IMG_IR_STATUS, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @img_ir_write(%struct.img_ir_priv* %84, i32 %85, i32 %86)
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @IMG_IR_RXDLEN, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* @IMG_IR_RXDLEN_SHIFT, align 4
  %92 = ashr i32 %90, %91
  store i32 %92, i32* %7, align 4
  %93 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %5, align 8
  %94 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @IMG_IR_QUIRK_CODE_LEN_INCR, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %77
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %103, %77
  %107 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %108 = load i32, i32* @IMG_IR_DATA_LW, align 4
  %109 = call i8* @img_ir_read(%struct.img_ir_priv* %107, i32 %108)
  %110 = ptrtoint i8* %109 to i32
  store i32 %110, i32* %8, align 4
  %111 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %112 = load i32, i32* @IMG_IR_DATA_UP, align 4
  %113 = call i8* @img_ir_read(%struct.img_ir_priv* %111, i32 %112)
  %114 = ptrtoint i8* %113 to i32
  store i32 %114, i32* %9, align 4
  %115 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %9, align 4
  %118 = shl i32 %117, 32
  %119 = load i32, i32* %8, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @img_ir_handle_data(%struct.img_ir_priv* %115, i32 %116, i32 %120)
  br label %122

122:                                              ; preds = %106, %53, %52, %17
  ret void
}

declare dso_local i8* @img_ir_read(%struct.img_ir_priv*, i32) #1

declare dso_local i32 @img_ir_write(%struct.img_ir_priv*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @img_ir_handle_data(%struct.img_ir_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
