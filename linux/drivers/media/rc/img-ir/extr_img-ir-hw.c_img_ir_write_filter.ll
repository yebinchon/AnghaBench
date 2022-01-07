; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_write_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_write_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_priv = type { i32 }
%struct.img_ir_filter = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"IR filter=%016llx & %016llx\0A\00", align 1
@IMG_IR_IRQ_MSG_DATA_LW = common dso_local global i32 0, align 4
@IMG_IR_IRQ_MSG_DATA_UP = common dso_local global i32 0, align 4
@IMG_IR_IRQ_MSG_MASK_LW = common dso_local global i32 0, align 4
@IMG_IR_IRQ_MSG_MASK_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"IR clearing filter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.img_ir_priv*, %struct.img_ir_filter*)* @img_ir_write_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_ir_write_filter(%struct.img_ir_priv* %0, %struct.img_ir_filter* %1) #0 {
  %3 = alloca %struct.img_ir_priv*, align 8
  %4 = alloca %struct.img_ir_filter*, align 8
  store %struct.img_ir_priv* %0, %struct.img_ir_priv** %3, align 8
  store %struct.img_ir_filter* %1, %struct.img_ir_filter** %4, align 8
  %5 = load %struct.img_ir_filter*, %struct.img_ir_filter** %4, align 8
  %6 = icmp ne %struct.img_ir_filter* %5, null
  br i1 %6, label %7, label %46

7:                                                ; preds = %2
  %8 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %9 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.img_ir_filter*, %struct.img_ir_filter** %4, align 8
  %12 = getelementptr inbounds %struct.img_ir_filter, %struct.img_ir_filter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = load %struct.img_ir_filter*, %struct.img_ir_filter** %4, align 8
  %16 = getelementptr inbounds %struct.img_ir_filter, %struct.img_ir_filter* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = call i32 (i32, i8*, ...) @dev_dbg(i32 %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %14, i64 %18)
  %20 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %21 = load i32, i32* @IMG_IR_IRQ_MSG_DATA_LW, align 4
  %22 = load %struct.img_ir_filter*, %struct.img_ir_filter** %4, align 8
  %23 = getelementptr inbounds %struct.img_ir_filter, %struct.img_ir_filter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @img_ir_write(%struct.img_ir_priv* %20, i32 %21, i32 %24)
  %26 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %27 = load i32, i32* @IMG_IR_IRQ_MSG_DATA_UP, align 4
  %28 = load %struct.img_ir_filter*, %struct.img_ir_filter** %4, align 8
  %29 = getelementptr inbounds %struct.img_ir_filter, %struct.img_ir_filter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 32
  %32 = call i32 @img_ir_write(%struct.img_ir_priv* %26, i32 %27, i32 %31)
  %33 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %34 = load i32, i32* @IMG_IR_IRQ_MSG_MASK_LW, align 4
  %35 = load %struct.img_ir_filter*, %struct.img_ir_filter** %4, align 8
  %36 = getelementptr inbounds %struct.img_ir_filter, %struct.img_ir_filter* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @img_ir_write(%struct.img_ir_priv* %33, i32 %34, i32 %37)
  %39 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %40 = load i32, i32* @IMG_IR_IRQ_MSG_MASK_UP, align 4
  %41 = load %struct.img_ir_filter*, %struct.img_ir_filter** %4, align 8
  %42 = getelementptr inbounds %struct.img_ir_filter, %struct.img_ir_filter* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 32
  %45 = call i32 @img_ir_write(%struct.img_ir_priv* %39, i32 %40, i32 %44)
  br label %57

46:                                               ; preds = %2
  %47 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %48 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i8*, ...) @dev_dbg(i32 %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %52 = load i32, i32* @IMG_IR_IRQ_MSG_MASK_LW, align 4
  %53 = call i32 @img_ir_write(%struct.img_ir_priv* %51, i32 %52, i32 0)
  %54 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %55 = load i32, i32* @IMG_IR_IRQ_MSG_MASK_UP, align 4
  %56 = call i32 @img_ir_write(%struct.img_ir_priv* %54, i32 %55, i32 0)
  br label %57

57:                                               ; preds = %46, %7
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @img_ir_write(%struct.img_ir_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
