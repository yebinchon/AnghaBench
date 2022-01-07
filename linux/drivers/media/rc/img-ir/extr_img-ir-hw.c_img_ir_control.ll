; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_control = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@IMG_IR_CODETYPE_SHIFT = common dso_local global i32 0, align 4
@IMG_IR_DECODEN = common dso_local global i32 0, align 4
@IMG_IR_HDRTOG = common dso_local global i32 0, align 4
@IMG_IR_LDRDEC = common dso_local global i32 0, align 4
@IMG_IR_DECODINPOL = common dso_local global i32 0, align 4
@IMG_IR_BITORIEN = common dso_local global i32 0, align 4
@IMG_IR_D1VALIDSEL = common dso_local global i32 0, align 4
@IMG_IR_BITINV = common dso_local global i32 0, align 4
@IMG_IR_DECODEND2 = common dso_local global i32 0, align 4
@IMG_IR_BITORIEND2 = common dso_local global i32 0, align 4
@IMG_IR_BITINVD2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.img_ir_control*)* @img_ir_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_ir_control(%struct.img_ir_control* %0) #0 {
  %2 = alloca %struct.img_ir_control*, align 8
  %3 = alloca i32, align 4
  store %struct.img_ir_control* %0, %struct.img_ir_control** %2, align 8
  %4 = load %struct.img_ir_control*, %struct.img_ir_control** %2, align 8
  %5 = getelementptr inbounds %struct.img_ir_control, %struct.img_ir_control* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @IMG_IR_CODETYPE_SHIFT, align 4
  %8 = shl i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.img_ir_control*, %struct.img_ir_control** %2, align 8
  %10 = getelementptr inbounds %struct.img_ir_control, %struct.img_ir_control* %9, i32 0, i32 10
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @IMG_IR_DECODEN, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.img_ir_control*, %struct.img_ir_control** %2, align 8
  %19 = getelementptr inbounds %struct.img_ir_control, %struct.img_ir_control* %18, i32 0, i32 9
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @IMG_IR_HDRTOG, align 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load %struct.img_ir_control*, %struct.img_ir_control** %2, align 8
  %28 = getelementptr inbounds %struct.img_ir_control, %struct.img_ir_control* %27, i32 0, i32 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @IMG_IR_LDRDEC, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %26
  %36 = load %struct.img_ir_control*, %struct.img_ir_control** %2, align 8
  %37 = getelementptr inbounds %struct.img_ir_control, %struct.img_ir_control* %36, i32 0, i32 7
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @IMG_IR_DECODINPOL, align 4
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = load %struct.img_ir_control*, %struct.img_ir_control** %2, align 8
  %46 = getelementptr inbounds %struct.img_ir_control, %struct.img_ir_control* %45, i32 0, i32 6
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @IMG_IR_BITORIEN, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %44
  %54 = load %struct.img_ir_control*, %struct.img_ir_control** %2, align 8
  %55 = getelementptr inbounds %struct.img_ir_control, %struct.img_ir_control* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @IMG_IR_D1VALIDSEL, align 4
  %60 = load i32, i32* %3, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %53
  %63 = load %struct.img_ir_control*, %struct.img_ir_control** %2, align 8
  %64 = getelementptr inbounds %struct.img_ir_control, %struct.img_ir_control* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* @IMG_IR_BITINV, align 4
  %69 = load i32, i32* %3, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %62
  %72 = load %struct.img_ir_control*, %struct.img_ir_control** %2, align 8
  %73 = getelementptr inbounds %struct.img_ir_control, %struct.img_ir_control* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* @IMG_IR_DECODEND2, align 4
  %78 = load i32, i32* %3, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %71
  %81 = load %struct.img_ir_control*, %struct.img_ir_control** %2, align 8
  %82 = getelementptr inbounds %struct.img_ir_control, %struct.img_ir_control* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* @IMG_IR_BITORIEND2, align 4
  %87 = load i32, i32* %3, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %85, %80
  %90 = load %struct.img_ir_control*, %struct.img_ir_control** %2, align 8
  %91 = getelementptr inbounds %struct.img_ir_control, %struct.img_ir_control* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i32, i32* @IMG_IR_BITINVD2, align 4
  %96 = load i32, i32* %3, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %94, %89
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
