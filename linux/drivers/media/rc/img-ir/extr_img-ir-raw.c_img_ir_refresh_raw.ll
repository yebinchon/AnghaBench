; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-raw.c_img_ir_refresh_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-raw.c_img_ir_refresh_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_priv = type { %struct.img_ir_priv_raw }
%struct.img_ir_priv_raw = type { i32, %struct.rc_dev* }
%struct.rc_dev = type { i32 }

@IMG_IR_IRQ_EDGE = common dso_local global i32 0, align 4
@IMG_IR_STATUS = common dso_local global i32 0, align 4
@IMG_IR_IRRXD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.img_ir_priv*, i32)* @img_ir_refresh_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_ir_refresh_raw(%struct.img_ir_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.img_ir_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.img_ir_priv_raw*, align 8
  %6 = alloca %struct.rc_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.img_ir_priv* %0, %struct.img_ir_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %10 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %9, i32 0, i32 0
  store %struct.img_ir_priv_raw* %10, %struct.img_ir_priv_raw** %5, align 8
  %11 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %12 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.img_ir_priv_raw, %struct.img_ir_priv_raw* %12, i32 0, i32 1
  %14 = load %struct.rc_dev*, %struct.rc_dev** %13, align 8
  store %struct.rc_dev* %14, %struct.rc_dev** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @IMG_IR_IRQ_EDGE, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @IMG_IR_IRQ_EDGE, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %22 = load i32, i32* @IMG_IR_STATUS, align 4
  %23 = call i32 @img_ir_read(%struct.img_ir_priv* %21, i32 %22)
  %24 = load i32, i32* @IMG_IR_IRRXD, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.img_ir_priv_raw*, %struct.img_ir_priv_raw** %5, align 8
  %31 = getelementptr inbounds %struct.img_ir_priv_raw, %struct.img_ir_priv_raw* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %50

35:                                               ; preds = %28, %2
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.img_ir_priv_raw*, %struct.img_ir_priv_raw** %5, align 8
  %38 = getelementptr inbounds %struct.img_ir_priv_raw, %struct.img_ir_priv_raw* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %43 = call i32 @ir_raw_event_store_edge(%struct.rc_dev* %42, i32 0)
  br label %47

44:                                               ; preds = %35
  %45 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %46 = call i32 @ir_raw_event_store_edge(%struct.rc_dev* %45, i32 1)
  br label %47

47:                                               ; preds = %44, %41
  %48 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %49 = call i32 @ir_raw_event_handle(%struct.rc_dev* %48)
  br label %50

50:                                               ; preds = %47, %34
  ret void
}

declare dso_local i32 @img_ir_read(%struct.img_ir_priv*, i32) #1

declare dso_local i32 @ir_raw_event_store_edge(%struct.rc_dev*, i32) #1

declare dso_local i32 @ir_raw_event_handle(%struct.rc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
