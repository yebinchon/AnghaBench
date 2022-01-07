; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-nec.c_img_ir_nec_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-nec.c_img_ir_nec_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_scancode_filter = type { i32, i32 }
%struct.img_ir_filter = type { i32, i32 }

@RC_PROTO_BIT_NEC = common dso_local global i32 0, align 4
@RC_PROTO_BIT_NECX = common dso_local global i32 0, align 4
@RC_PROTO_BIT_NEC32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_scancode_filter*, %struct.img_ir_filter*, i32)* @img_ir_nec_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_ir_nec_filter(%struct.rc_scancode_filter* %0, %struct.img_ir_filter* %1, i32 %2) #0 {
  %4 = alloca %struct.rc_scancode_filter*, align 8
  %5 = alloca %struct.img_ir_filter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rc_scancode_filter* %0, %struct.rc_scancode_filter** %4, align 8
  store %struct.img_ir_filter* %1, %struct.img_ir_filter** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %4, align 8
  %16 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 255
  store i32 %18, i32* %9, align 4
  %19 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %4, align 8
  %20 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 255
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* @RC_PROTO_BIT_NEC, align 4
  %24 = load i32, i32* @RC_PROTO_BIT_NECX, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @RC_PROTO_BIT_NEC32, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @is_power_of_2(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %61, label %33

33:                                               ; preds = %3
  %34 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %4, align 8
  %35 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %4, align 8
  %38 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %36, %39
  %41 = and i32 %40, -16777216
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @RC_PROTO_BIT_NEC32, align 4
  store i32 %44, i32* %6, align 4
  br label %60

45:                                               ; preds = %33
  %46 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %4, align 8
  %47 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %4, align 8
  %50 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %48, %51
  %53 = and i32 %52, 16711680
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* @RC_PROTO_BIT_NECX, align 4
  store i32 %56, i32* %6, align 4
  br label %59

57:                                               ; preds = %45
  %58 = load i32, i32* @RC_PROTO_BIT_NEC, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %57, %55
  br label %60

60:                                               ; preds = %59, %43
  br label %61

61:                                               ; preds = %60, %3
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @RC_PROTO_BIT_NEC32, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %106

65:                                               ; preds = %61
  %66 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %4, align 8
  %67 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %68, 24
  %70 = call i32 @bitrev8(i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %4, align 8
  %72 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = ashr i32 %73, 24
  %75 = call i32 @bitrev8(i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %4, align 8
  %77 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = ashr i32 %78, 16
  %80 = call i32 @bitrev8(i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %4, align 8
  %82 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 16
  %85 = call i32 @bitrev8(i32 %84)
  store i32 %85, i32* %12, align 4
  %86 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %4, align 8
  %87 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = ashr i32 %88, 8
  %90 = call i32 @bitrev8(i32 %89)
  store i32 %90, i32* %9, align 4
  %91 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %4, align 8
  %92 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = ashr i32 %93, 8
  %95 = call i32 @bitrev8(i32 %94)
  store i32 %95, i32* %13, align 4
  %96 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %4, align 8
  %97 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, 0
  %100 = call i32 @bitrev8(i32 %99)
  store i32 %100, i32* %10, align 4
  %101 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %4, align 8
  %102 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = ashr i32 %103, 0
  %105 = call i32 @bitrev8(i32 %104)
  store i32 %105, i32* %14, align 4
  br label %152

106:                                              ; preds = %61
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @RC_PROTO_BIT_NECX, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %134

110:                                              ; preds = %106
  %111 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %4, align 8
  %112 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = ashr i32 %113, 16
  %115 = and i32 %114, 255
  store i32 %115, i32* %7, align 4
  %116 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %4, align 8
  %117 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = ashr i32 %118, 16
  %120 = and i32 %119, 255
  store i32 %120, i32* %11, align 4
  %121 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %4, align 8
  %122 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = ashr i32 %123, 8
  %125 = and i32 %124, 255
  store i32 %125, i32* %8, align 4
  %126 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %4, align 8
  %127 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = ashr i32 %128, 8
  %130 = and i32 %129, 255
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %9, align 4
  %132 = xor i32 %131, 255
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %13, align 4
  store i32 %133, i32* %14, align 4
  br label %151

134:                                              ; preds = %106
  %135 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %4, align 8
  %136 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = ashr i32 %137, 8
  %139 = and i32 %138, 255
  store i32 %139, i32* %7, align 4
  %140 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %4, align 8
  %141 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = ashr i32 %142, 8
  %144 = and i32 %143, 255
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %7, align 4
  %146 = xor i32 %145, 255
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %9, align 4
  %149 = xor i32 %148, 255
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %13, align 4
  store i32 %150, i32* %14, align 4
  br label %151

151:                                              ; preds = %134, %110
  br label %152

152:                                              ; preds = %151, %65
  %153 = load i32, i32* %10, align 4
  %154 = shl i32 %153, 24
  %155 = load i32, i32* %9, align 4
  %156 = shl i32 %155, 16
  %157 = or i32 %154, %156
  %158 = load i32, i32* %8, align 4
  %159 = shl i32 %158, 8
  %160 = or i32 %157, %159
  %161 = load i32, i32* %7, align 4
  %162 = or i32 %160, %161
  %163 = load %struct.img_ir_filter*, %struct.img_ir_filter** %5, align 8
  %164 = getelementptr inbounds %struct.img_ir_filter, %struct.img_ir_filter* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* %14, align 4
  %166 = shl i32 %165, 24
  %167 = load i32, i32* %13, align 4
  %168 = shl i32 %167, 16
  %169 = or i32 %166, %168
  %170 = load i32, i32* %12, align 4
  %171 = shl i32 %170, 8
  %172 = or i32 %169, %171
  %173 = load i32, i32* %11, align 4
  %174 = or i32 %172, %173
  %175 = load %struct.img_ir_filter*, %struct.img_ir_filter** %5, align 8
  %176 = getelementptr inbounds %struct.img_ir_filter, %struct.img_ir_filter* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  ret i32 0
}

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @bitrev8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
