; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c__img_ir_set_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c__img_ir_set_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_priv = type { %struct.img_ir_priv_hw }
%struct.img_ir_priv_hw = type { i32, %struct.img_ir_filter* }
%struct.img_ir_filter = type { i32 }

@IMG_IR_IRQ_ENABLE = common dso_local global i32 0, align 4
@RC_FILTER_NORMAL = common dso_local global i64 0, align 8
@IMG_IR_F_FILTER = common dso_local global i32 0, align 4
@IMG_IR_IRQ_DATA_MATCH = common dso_local global i32 0, align 4
@IMG_IR_IRQ_DATA_VALID = common dso_local global i32 0, align 4
@IMG_IR_IRQ_DATA2_VALID = common dso_local global i32 0, align 4
@IMG_IR_IRQ_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.img_ir_priv*, %struct.img_ir_filter*)* @_img_ir_set_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_img_ir_set_filter(%struct.img_ir_priv* %0, %struct.img_ir_filter* %1) #0 {
  %3 = alloca %struct.img_ir_priv*, align 8
  %4 = alloca %struct.img_ir_filter*, align 8
  %5 = alloca %struct.img_ir_priv_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.img_ir_priv* %0, %struct.img_ir_priv** %3, align 8
  store %struct.img_ir_filter* %1, %struct.img_ir_filter** %4, align 8
  %8 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %9 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %8, i32 0, i32 0
  store %struct.img_ir_priv_hw* %9, %struct.img_ir_priv_hw** %5, align 8
  %10 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %11 = load i32, i32* @IMG_IR_IRQ_ENABLE, align 4
  %12 = call i32 @img_ir_read(%struct.img_ir_priv* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.img_ir_filter*, %struct.img_ir_filter** %4, align 8
  %14 = icmp ne %struct.img_ir_filter* %13, null
  br i1 %14, label %15, label %36

15:                                               ; preds = %2
  %16 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %5, align 8
  %17 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %16, i32 0, i32 1
  %18 = load %struct.img_ir_filter*, %struct.img_ir_filter** %17, align 8
  %19 = load i64, i64* @RC_FILTER_NORMAL, align 8
  %20 = getelementptr inbounds %struct.img_ir_filter, %struct.img_ir_filter* %18, i64 %19
  %21 = load %struct.img_ir_filter*, %struct.img_ir_filter** %4, align 8
  %22 = bitcast %struct.img_ir_filter* %20 to i8*
  %23 = bitcast %struct.img_ir_filter* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 4, i1 false)
  %24 = load i32, i32* @IMG_IR_F_FILTER, align 4
  %25 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %5, align 8
  %26 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* @IMG_IR_IRQ_DATA_MATCH, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @IMG_IR_IRQ_DATA_VALID, align 4
  %31 = load i32, i32* @IMG_IR_IRQ_DATA2_VALID, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %6, align 4
  br label %50

36:                                               ; preds = %2
  %37 = load i32, i32* @IMG_IR_F_FILTER, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %5, align 8
  %40 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load i32, i32* @IMG_IR_IRQ_DATA_MATCH, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @IMG_IR_IRQ_DATA_VALID, align 4
  %48 = load i32, i32* @IMG_IR_IRQ_DATA2_VALID, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %36, %15
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %55 = load %struct.img_ir_filter*, %struct.img_ir_filter** %4, align 8
  %56 = call i32 @img_ir_write_filter(%struct.img_ir_priv* %54, %struct.img_ir_filter* %55)
  %57 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %58 = load i32, i32* @IMG_IR_IRQ_CLEAR, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @img_ir_write(%struct.img_ir_priv* %57, i32 %58, i32 %59)
  %61 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %62 = load i32, i32* @IMG_IR_IRQ_ENABLE, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @img_ir_write(%struct.img_ir_priv* %61, i32 %62, i32 %63)
  ret void
}

declare dso_local i32 @img_ir_read(%struct.img_ir_priv*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @img_ir_write_filter(%struct.img_ir_priv*, %struct.img_ir_filter*) #1

declare dso_local i32 @img_ir_write(%struct.img_ir_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
