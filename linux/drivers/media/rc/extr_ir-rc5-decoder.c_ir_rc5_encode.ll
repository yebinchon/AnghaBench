; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-rc5-decoder.c_ir_rc5_encode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-rc5-decoder.c_ir_rc5_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ir_raw_event = type { i32 }

@RC_PROTO_RC5 = common dso_local global i32 0, align 4
@ir_rc5_timings = common dso_local global i32 0, align 4
@RC5_NBITS = common dso_local global i32 0, align 4
@RC_PROTO_RC5X_20 = common dso_local global i32 0, align 4
@RC5X_NBITS = common dso_local global i32 0, align 4
@CHECK_RC5X_NBITS = common dso_local global i32 0, align 4
@ir_rc5x_timings = common dso_local global i32* null, align 8
@RC_PROTO_RC5_SZ = common dso_local global i32 0, align 4
@ir_rc5_sz_timings = common dso_local global i32 0, align 4
@RC5_SZ_NBITS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.ir_raw_event*, i32)* @ir_rc5_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_rc5_encode(i32 %0, i32 %1, %struct.ir_raw_event* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ir_raw_event*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ir_raw_event*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.ir_raw_event* %2, %struct.ir_raw_event** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.ir_raw_event*, %struct.ir_raw_event** %8, align 8
  store %struct.ir_raw_event* %18, %struct.ir_raw_event** %11, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @RC_PROTO_RC5, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %52

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 63
  %25 = ashr i32 %24, 0
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 64
  %28 = ashr i32 %27, 6
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 7936
  %31 = ashr i32 %30, 8
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = shl i32 %35, 12
  %37 = load i32, i32* %16, align 4
  %38 = shl i32 %37, 6
  %39 = or i32 %36, %38
  %40 = load i32, i32* %14, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @RC5_NBITS, align 4
  %44 = sub nsw i32 %43, 1
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @ir_raw_gen_manchester(%struct.ir_raw_event** %11, i32 %42, i32* @ir_rc5_timings, i32 %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %22
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %5, align 4
  br label %149

51:                                               ; preds = %22
  br label %141

52:                                               ; preds = %4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @RC_PROTO_RC5X_20, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %120

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 63
  %59 = ashr i32 %58, 0
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, 16128
  %62 = ashr i32 %61, 8
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, 16384
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, 2031616
  %70 = ashr i32 %69, 16
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %15, align 4
  %72 = shl i32 %71, 18
  %73 = load i32, i32* %16, align 4
  %74 = shl i32 %73, 12
  %75 = or i32 %72, %74
  %76 = load i32, i32* %14, align 4
  %77 = shl i32 %76, 6
  %78 = or i32 %75, %77
  %79 = load i32, i32* %13, align 4
  %80 = or i32 %78, %79
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @RC5X_NBITS, align 4
  %83 = load i32, i32* @CHECK_RC5X_NBITS, align 4
  %84 = sub i32 %82, %83
  %85 = lshr i32 %81, %84
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32*, i32** @ir_rc5x_timings, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* @CHECK_RC5X_NBITS, align 4
  %90 = sub i32 %89, 1
  %91 = load i32, i32* %17, align 4
  %92 = call i32 @ir_raw_gen_manchester(%struct.ir_raw_event** %11, i32 %86, i32* %88, i32 %90, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %56
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %5, align 4
  br label %149

97:                                               ; preds = %56
  %98 = load i32, i32* %9, align 4
  %99 = zext i32 %98 to i64
  %100 = load %struct.ir_raw_event*, %struct.ir_raw_event** %11, align 8
  %101 = load %struct.ir_raw_event*, %struct.ir_raw_event** %8, align 8
  %102 = ptrtoint %struct.ir_raw_event* %100 to i64
  %103 = ptrtoint %struct.ir_raw_event* %101 to i64
  %104 = sub i64 %102, %103
  %105 = sdiv exact i64 %104, 4
  %106 = sub nsw i64 %99, %105
  %107 = trunc i64 %106 to i32
  %108 = load i32*, i32** @ir_rc5x_timings, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* @RC5X_NBITS, align 4
  %111 = load i32, i32* @CHECK_RC5X_NBITS, align 4
  %112 = sub i32 %110, %111
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @ir_raw_gen_manchester(%struct.ir_raw_event** %11, i32 %107, i32* %109, i32 %112, i32 %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %97
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %5, align 4
  br label %149

119:                                              ; preds = %97
  br label %140

120:                                              ; preds = %52
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @RC_PROTO_RC5_SZ, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %136

124:                                              ; preds = %120
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @RC5_SZ_NBITS, align 4
  %127 = sub nsw i32 %126, 1
  %128 = load i32, i32* %7, align 4
  %129 = and i32 %128, 12287
  %130 = call i32 @ir_raw_gen_manchester(%struct.ir_raw_event** %11, i32 %125, i32* @ir_rc5_sz_timings, i32 %127, i32 %129)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %124
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %5, align 4
  br label %149

135:                                              ; preds = %124
  br label %139

136:                                              ; preds = %120
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %5, align 4
  br label %149

139:                                              ; preds = %135
  br label %140

140:                                              ; preds = %139, %119
  br label %141

141:                                              ; preds = %140, %51
  %142 = load %struct.ir_raw_event*, %struct.ir_raw_event** %11, align 8
  %143 = load %struct.ir_raw_event*, %struct.ir_raw_event** %8, align 8
  %144 = ptrtoint %struct.ir_raw_event* %142 to i64
  %145 = ptrtoint %struct.ir_raw_event* %143 to i64
  %146 = sub i64 %144, %145
  %147 = sdiv exact i64 %146, 4
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %141, %136, %133, %117, %95, %49
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local i32 @ir_raw_gen_manchester(%struct.ir_raw_event**, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
