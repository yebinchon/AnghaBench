; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-sony.c_img_ir_sony_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-sony.c_img_ir_sony_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_scancode_filter = type { i32, i32 }
%struct.img_ir_filter = type { i32, i32, i32, i32 }

@RC_PROTO_BIT_SONY12 = common dso_local global i32 0, align 4
@RC_PROTO_BIT_SONY15 = common dso_local global i32 0, align 4
@RC_PROTO_BIT_SONY20 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_scancode_filter*, %struct.img_ir_filter*, i32)* @img_ir_sony_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_ir_sony_filter(%struct.rc_scancode_filter* %0, %struct.img_ir_filter* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rc_scancode_filter*, align 8
  %6 = alloca %struct.img_ir_filter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rc_scancode_filter* %0, %struct.rc_scancode_filter** %5, align 8
  store %struct.img_ir_filter* %1, %struct.img_ir_filter** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %5, align 8
  %16 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 16
  %19 = and i32 %18, 255
  store i32 %19, i32* %8, align 4
  %20 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %5, align 8
  %21 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 16
  %24 = and i32 %23, 255
  store i32 %24, i32* %11, align 4
  %25 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %5, align 8
  %26 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 8
  %29 = and i32 %28, 255
  store i32 %29, i32* %9, align 4
  %30 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %5, align 8
  %31 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 255
  store i32 %34, i32* %12, align 4
  %35 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %5, align 8
  %36 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 0
  %39 = and i32 %38, 127
  store i32 %39, i32* %10, align 4
  %40 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %5, align 8
  %41 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 0
  %44 = and i32 %43, 127
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* @RC_PROTO_BIT_SONY12, align 4
  %46 = load i32, i32* @RC_PROTO_BIT_SONY15, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @RC_PROTO_BIT_SONY20, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @is_power_of_2(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %74, label %55

55:                                               ; preds = %3
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %12, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @RC_PROTO_BIT_SONY20, align 4
  store i32 %61, i32* %7, align 4
  br label %73

62:                                               ; preds = %55
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %11, align 4
  %65 = and i32 %63, %64
  %66 = and i32 %65, 224
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @RC_PROTO_BIT_SONY15, align 4
  store i32 %69, i32* %7, align 4
  br label %72

70:                                               ; preds = %62
  %71 = load i32, i32* @RC_PROTO_BIT_SONY12, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %70, %68
  br label %73

73:                                               ; preds = %72, %60
  br label %74

74:                                               ; preds = %73, %3
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @RC_PROTO_BIT_SONY20, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %11, align 4
  %81 = and i32 %79, %80
  %82 = and i32 %81, 224
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %139

87:                                               ; preds = %78
  store i32 20, i32* %14, align 4
  %88 = load i32, i32* %11, align 4
  %89 = and i32 %88, 31
  store i32 %89, i32* %11, align 4
  br label %104

90:                                               ; preds = %74
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @RC_PROTO_BIT_SONY15, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 15, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %103

95:                                               ; preds = %90
  %96 = load i32, i32* %11, align 4
  %97 = lshr i32 %96, 5
  %98 = or i32 %97, 248
  %99 = load i32, i32* %12, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %11, align 4
  %102 = and i32 %101, 31
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %95, %94
  br label %104

104:                                              ; preds = %103, %87
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %8, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %9, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %8, align 4
  %113 = shl i32 %112, 7
  %114 = or i32 %111, %113
  %115 = load i32, i32* %9, align 4
  %116 = shl i32 %115, 15
  %117 = or i32 %114, %116
  %118 = load %struct.img_ir_filter*, %struct.img_ir_filter** %6, align 8
  %119 = getelementptr inbounds %struct.img_ir_filter, %struct.img_ir_filter* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %11, align 4
  %122 = shl i32 %121, 7
  %123 = or i32 %120, %122
  %124 = load i32, i32* %12, align 4
  %125 = shl i32 %124, 15
  %126 = or i32 %123, %125
  %127 = load %struct.img_ir_filter*, %struct.img_ir_filter** %6, align 8
  %128 = getelementptr inbounds %struct.img_ir_filter, %struct.img_ir_filter* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %104
  %132 = load i32, i32* %14, align 4
  %133 = load %struct.img_ir_filter*, %struct.img_ir_filter** %6, align 8
  %134 = getelementptr inbounds %struct.img_ir_filter, %struct.img_ir_filter* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %14, align 4
  %136 = load %struct.img_ir_filter*, %struct.img_ir_filter** %6, align 8
  %137 = getelementptr inbounds %struct.img_ir_filter, %struct.img_ir_filter* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %131, %104
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %138, %84
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @is_power_of_2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
