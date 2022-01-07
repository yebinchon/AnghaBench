; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_ctrl.c_s5p_mfc_alloc_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_ctrl.c_s5p_mfc_alloc_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_dev = type { %struct.s5p_mfc_priv_buf, %struct.TYPE_4__* }
%struct.s5p_mfc_priv_buf = type { i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [73 x i8] c"Attempting to allocate firmware when it seems that it is already loaded\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BANK_L_CTX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Allocating bitprocessor buffer failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s5p_mfc_alloc_firmware(%struct.s5p_mfc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca %struct.s5p_mfc_priv_buf*, align 8
  %5 = alloca i32, align 4
  store %struct.s5p_mfc_dev* %0, %struct.s5p_mfc_dev** %3, align 8
  %6 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %7 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %6, i32 0, i32 0
  store %struct.s5p_mfc_priv_buf* %7, %struct.s5p_mfc_priv_buf** %4, align 8
  %8 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %9 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %4, align 8
  %16 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %4, align 8
  %18 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = call i32 @mfc_err(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %37

25:                                               ; preds = %1
  %26 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %27 = load i32, i32* @BANK_L_CTX, align 4
  %28 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %29 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %28, i32 0, i32 0
  %30 = call i32 @s5p_mfc_alloc_priv_buf(%struct.s5p_mfc_dev* %26, i32 %27, %struct.s5p_mfc_priv_buf* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = call i32 @mfc_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %33, %21
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @mfc_err(i8*) #1

declare dso_local i32 @s5p_mfc_alloc_priv_buf(%struct.s5p_mfc_dev*, i32, %struct.s5p_mfc_priv_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
