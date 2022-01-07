; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-core.c_img_ir_ident.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-core.c_img_ir_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_priv = type { i32, i32, i32 }

@IMG_IR_CORE_REV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"IMG IR Decoder (%d.%d.%d.%d) probed successfully\0A\00", align 1
@IMG_IR_DESIGNER = common dso_local global i32 0, align 4
@IMG_IR_DESIGNER_SHIFT = common dso_local global i32 0, align 4
@IMG_IR_MAJOR_REV = common dso_local global i32 0, align 4
@IMG_IR_MAJOR_REV_SHIFT = common dso_local global i32 0, align 4
@IMG_IR_MINOR_REV = common dso_local global i32 0, align 4
@IMG_IR_MINOR_REV_SHIFT = common dso_local global i32 0, align 4
@IMG_IR_MAINT_REV = common dso_local global i32 0, align 4
@IMG_IR_MAINT_REV_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Modes:%s%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" hardware\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" raw\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.img_ir_priv*)* @img_ir_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_ir_ident(%struct.img_ir_priv* %0) #0 {
  %2 = alloca %struct.img_ir_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.img_ir_priv* %0, %struct.img_ir_priv** %2, align 8
  %4 = load %struct.img_ir_priv*, %struct.img_ir_priv** %2, align 8
  %5 = load i32, i32* @IMG_IR_CORE_REV, align 4
  %6 = call i32 @img_ir_read(%struct.img_ir_priv* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.img_ir_priv*, %struct.img_ir_priv** %2, align 8
  %8 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @IMG_IR_DESIGNER, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @IMG_IR_DESIGNER_SHIFT, align 4
  %14 = ashr i32 %12, %13
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @IMG_IR_MAJOR_REV, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @IMG_IR_MAJOR_REV_SHIFT, align 4
  %19 = ashr i32 %17, %18
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @IMG_IR_MINOR_REV, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @IMG_IR_MINOR_REV_SHIFT, align 4
  %24 = ashr i32 %22, %23
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @IMG_IR_MAINT_REV, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @IMG_IR_MAINT_REV_SHIFT, align 4
  %29 = ashr i32 %27, %28
  %30 = call i32 (i32, i8*, ...) @dev_info(i32 %9, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %19, i32 %24, i32 %29)
  %31 = load %struct.img_ir_priv*, %struct.img_ir_priv** %2, align 8
  %32 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.img_ir_priv*, %struct.img_ir_priv** %2, align 8
  %35 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %34, i32 0, i32 1
  %36 = call i64 @img_ir_hw_enabled(i32* %35)
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %40 = load %struct.img_ir_priv*, %struct.img_ir_priv** %2, align 8
  %41 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %40, i32 0, i32 0
  %42 = call i64 @img_ir_raw_enabled(i32* %41)
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %46 = call i32 (i32, i8*, ...) @dev_info(i32 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %39, i8* %45)
  ret void
}

declare dso_local i32 @img_ir_read(%struct.img_ir_priv*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i64 @img_ir_hw_enabled(i32*) #1

declare dso_local i64 @img_ir_raw_enabled(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
