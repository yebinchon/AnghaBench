; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_set_decoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_set_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_priv = type { i32, %struct.img_ir_priv_hw }
%struct.img_ir_priv_hw = type { i32, %struct.TYPE_4__, i32, i64, %struct.img_ir_decoder*, i32, i32, i32, %struct.rc_dev* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.rc_dev = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.img_ir_decoder = type { i64 }

@IMG_IR_CONTROL = common dso_local global i32 0, align 4
@IMG_IR_IRQ_ENABLE = common dso_local global i32 0, align 4
@IMG_IR_IRQ_EDGE = common dso_local global i32 0, align 4
@IMG_IR_IRQ_CLEAR = common dso_local global i32 0, align 4
@IMG_IR_IRQ_ALL = common dso_local global i32 0, align 4
@IMG_IR_STATUS = common dso_local global i32 0, align 4
@IMG_IR_RXDVAL = common dso_local global i32 0, align 4
@IMG_IR_RXDVALD2 = common dso_local global i32 0, align 4
@IMG_IR_DATA_LW = common dso_local global i32 0, align 4
@IMG_IR_DATA_UP = common dso_local global i32 0, align 4
@IMG_IR_M_NORMAL = common dso_local global i32 0, align 4
@RC_PROTO_UNKNOWN = common dso_local global i32 0, align 4
@RC_FILTER_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.img_ir_priv*, %struct.img_ir_decoder*, i64)* @img_ir_set_decoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_ir_set_decoder(%struct.img_ir_priv* %0, %struct.img_ir_decoder* %1, i64 %2) #0 {
  %4 = alloca %struct.img_ir_priv*, align 8
  %5 = alloca %struct.img_ir_decoder*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.img_ir_priv_hw*, align 8
  %8 = alloca %struct.rc_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.img_ir_priv* %0, %struct.img_ir_priv** %4, align 8
  store %struct.img_ir_decoder* %1, %struct.img_ir_decoder** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %12 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %11, i32 0, i32 1
  store %struct.img_ir_priv_hw* %12, %struct.img_ir_priv_hw** %7, align 8
  %13 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %7, align 8
  %14 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %13, i32 0, i32 8
  %15 = load %struct.rc_dev*, %struct.rc_dev** %14, align 8
  store %struct.rc_dev* %15, %struct.rc_dev** %8, align 8
  %16 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %17 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_irq(i32* %17)
  %19 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %7, align 8
  %20 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %22 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock_irq(i32* %22)
  %24 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %7, align 8
  %25 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %24, i32 0, i32 7
  %26 = call i32 @del_timer_sync(i32* %25)
  %27 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %7, align 8
  %28 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %27, i32 0, i32 6
  %29 = call i32 @del_timer_sync(i32* %28)
  %30 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %31 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %30, i32 0, i32 0
  %32 = call i32 @spin_lock_irq(i32* %31)
  %33 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %7, align 8
  %34 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %36 = load i32, i32* @IMG_IR_CONTROL, align 4
  %37 = call i32 @img_ir_write(%struct.img_ir_priv* %35, i32 %36, i32 0)
  %38 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %39 = load i32, i32* @IMG_IR_IRQ_ENABLE, align 4
  %40 = call i32 @img_ir_read(%struct.img_ir_priv* %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %42 = load i32, i32* @IMG_IR_IRQ_ENABLE, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @IMG_IR_IRQ_EDGE, align 4
  %45 = and i32 %43, %44
  %46 = call i32 @img_ir_write(%struct.img_ir_priv* %41, i32 %42, i32 %45)
  %47 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %48 = load i32, i32* @IMG_IR_IRQ_CLEAR, align 4
  %49 = load i32, i32* @IMG_IR_IRQ_ALL, align 4
  %50 = load i32, i32* @IMG_IR_IRQ_EDGE, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = call i32 @img_ir_write(%struct.img_ir_priv* %47, i32 %48, i32 %52)
  %54 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %55 = load i32, i32* @IMG_IR_STATUS, align 4
  %56 = call i32 @img_ir_read(%struct.img_ir_priv* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @IMG_IR_RXDVAL, align 4
  %59 = load i32, i32* @IMG_IR_RXDVALD2, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %3
  %64 = load i32, i32* @IMG_IR_RXDVAL, align 4
  %65 = load i32, i32* @IMG_IR_RXDVALD2, align 4
  %66 = or i32 %64, %65
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %9, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %9, align 4
  %70 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %71 = load i32, i32* @IMG_IR_STATUS, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @img_ir_write(%struct.img_ir_priv* %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %63, %3
  %75 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %76 = load i32, i32* @IMG_IR_DATA_LW, align 4
  %77 = call i32 @img_ir_read(%struct.img_ir_priv* %75, i32 %76)
  %78 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %79 = load i32, i32* @IMG_IR_DATA_UP, align 4
  %80 = call i32 @img_ir_read(%struct.img_ir_priv* %78, i32 %79)
  %81 = load i32, i32* @IMG_IR_M_NORMAL, align 4
  %82 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %7, align 8
  %83 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 8
  %84 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %85 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %88 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  %90 = load i32, i32* @RC_PROTO_UNKNOWN, align 4
  %91 = load %struct.rc_dev*, %struct.rc_dev** %8, align 8
  %92 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %94 = call i32 @_img_ir_set_filter(%struct.img_ir_priv* %93, i32* null)
  %95 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %96 = call i32 @_img_ir_set_wake_filter(%struct.img_ir_priv* %95, i32* null)
  %97 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %7, align 8
  %98 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %97, i32 0, i32 3
  store i64 0, i64* %98, align 8
  %99 = load %struct.img_ir_decoder*, %struct.img_ir_decoder** %5, align 8
  %100 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %7, align 8
  %101 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %100, i32 0, i32 4
  store %struct.img_ir_decoder* %99, %struct.img_ir_decoder** %101, align 8
  %102 = load %struct.img_ir_decoder*, %struct.img_ir_decoder** %5, align 8
  %103 = icmp ne %struct.img_ir_decoder* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %74
  br label %136

105:                                              ; preds = %74
  %106 = load i64, i64* %6, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %105
  %109 = load %struct.img_ir_decoder*, %struct.img_ir_decoder** %5, align 8
  %110 = getelementptr inbounds %struct.img_ir_decoder, %struct.img_ir_decoder* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %6, align 8
  br label %112

112:                                              ; preds = %108, %105
  %113 = load i64, i64* %6, align 8
  %114 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %7, align 8
  %115 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %114, i32 0, i32 3
  store i64 %113, i64* %115, align 8
  %116 = load %struct.img_ir_decoder*, %struct.img_ir_decoder** %5, align 8
  %117 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %7, align 8
  %118 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %117, i32 0, i32 1
  %119 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %7, align 8
  %120 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @img_ir_decoder_convert(%struct.img_ir_decoder* %116, %struct.TYPE_4__* %118, i32 %121)
  %123 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %124 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %7, align 8
  %125 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i32, i32* @RC_FILTER_NORMAL, align 4
  %128 = call i32 @img_ir_write_timings(%struct.img_ir_priv* %123, i32* %126, i32 %127)
  %129 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %130 = load i32, i32* @IMG_IR_CONTROL, align 4
  %131 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %7, align 8
  %132 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @img_ir_write(%struct.img_ir_priv* %129, i32 %130, i32 %134)
  br label %136

136:                                              ; preds = %112, %104
  %137 = load %struct.img_ir_priv*, %struct.img_ir_priv** %4, align 8
  %138 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %137, i32 0, i32 0
  %139 = call i32 @spin_unlock_irq(i32* %138)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @img_ir_write(%struct.img_ir_priv*, i32, i32) #1

declare dso_local i32 @img_ir_read(%struct.img_ir_priv*, i32) #1

declare dso_local i32 @_img_ir_set_filter(%struct.img_ir_priv*, i32*) #1

declare dso_local i32 @_img_ir_set_wake_filter(%struct.img_ir_priv*, i32*) #1

declare dso_local i32 @img_ir_decoder_convert(%struct.img_ir_decoder*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @img_ir_write_timings(%struct.img_ir_priv*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
