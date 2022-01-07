; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c__img_ir_set_wake_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c__img_ir_set_wake_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_priv = type { %struct.img_ir_priv_hw }
%struct.img_ir_priv_hw = type { i32, %struct.img_ir_filter* }
%struct.img_ir_filter = type { i32 }

@RC_FILTER_WAKEUP = common dso_local global i64 0, align 8
@IMG_IR_F_WAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.img_ir_priv*, %struct.img_ir_filter*)* @_img_ir_set_wake_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_img_ir_set_wake_filter(%struct.img_ir_priv* %0, %struct.img_ir_filter* %1) #0 {
  %3 = alloca %struct.img_ir_priv*, align 8
  %4 = alloca %struct.img_ir_filter*, align 8
  %5 = alloca %struct.img_ir_priv_hw*, align 8
  store %struct.img_ir_priv* %0, %struct.img_ir_priv** %3, align 8
  store %struct.img_ir_filter* %1, %struct.img_ir_filter** %4, align 8
  %6 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %7 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %6, i32 0, i32 0
  store %struct.img_ir_priv_hw* %7, %struct.img_ir_priv_hw** %5, align 8
  %8 = load %struct.img_ir_filter*, %struct.img_ir_filter** %4, align 8
  %9 = icmp ne %struct.img_ir_filter* %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %5, align 8
  %12 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %11, i32 0, i32 1
  %13 = load %struct.img_ir_filter*, %struct.img_ir_filter** %12, align 8
  %14 = load i64, i64* @RC_FILTER_WAKEUP, align 8
  %15 = getelementptr inbounds %struct.img_ir_filter, %struct.img_ir_filter* %13, i64 %14
  %16 = load %struct.img_ir_filter*, %struct.img_ir_filter** %4, align 8
  %17 = bitcast %struct.img_ir_filter* %15 to i8*
  %18 = bitcast %struct.img_ir_filter* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  %19 = load i32, i32* @IMG_IR_F_WAKE, align 4
  %20 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %5, align 8
  %21 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  br label %31

24:                                               ; preds = %2
  %25 = load i32, i32* @IMG_IR_F_WAKE, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %5, align 8
  %28 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  br label %31

31:                                               ; preds = %24, %10
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
