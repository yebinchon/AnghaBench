; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-rc6-decoder.c_ir_rc6_encode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-rc6-decoder.c_ir_rc6_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ir_raw_event = type { i32 }

@RC_PROTO_RC6_0 = common dso_local global i32 0, align 4
@ir_rc6_timings = common dso_local global i32* null, align 8
@RC6_HEADER_NBITS = common dso_local global i32 0, align 4
@RC6_0_NBITS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.ir_raw_event*, i32)* @ir_rc6_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_rc6_encode(i32 %0, i32 %1, %struct.ir_raw_event* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ir_raw_event*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ir_raw_event*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.ir_raw_event* %2, %struct.ir_raw_event** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ir_raw_event*, %struct.ir_raw_event** %8, align 8
  store %struct.ir_raw_event* %13, %struct.ir_raw_event** %11, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @RC_PROTO_RC6_0, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %75

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  %19 = zext i32 %18 to i64
  %20 = load %struct.ir_raw_event*, %struct.ir_raw_event** %11, align 8
  %21 = load %struct.ir_raw_event*, %struct.ir_raw_event** %8, align 8
  %22 = ptrtoint %struct.ir_raw_event* %20 to i64
  %23 = ptrtoint %struct.ir_raw_event* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = sub nsw i64 %19, %25
  %27 = trunc i64 %26 to i32
  %28 = load i32*, i32** @ir_rc6_timings, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* @RC6_HEADER_NBITS, align 4
  %31 = call i32 @ir_raw_gen_manchester(%struct.ir_raw_event** %11, i32 %27, i32* %29, i32 %30, i32 8)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %17
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %5, align 4
  br label %149

36:                                               ; preds = %17
  %37 = load i32, i32* %9, align 4
  %38 = zext i32 %37 to i64
  %39 = load %struct.ir_raw_event*, %struct.ir_raw_event** %11, align 8
  %40 = load %struct.ir_raw_event*, %struct.ir_raw_event** %8, align 8
  %41 = ptrtoint %struct.ir_raw_event* %39 to i64
  %42 = ptrtoint %struct.ir_raw_event* %40 to i64
  %43 = sub i64 %41, %42
  %44 = sdiv exact i64 %43, 4
  %45 = sub nsw i64 %38, %44
  %46 = trunc i64 %45 to i32
  %47 = load i32*, i32** @ir_rc6_timings, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = call i32 @ir_raw_gen_manchester(%struct.ir_raw_event** %11, i32 %46, i32* %48, i32 1, i32 0)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %36
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %149

54:                                               ; preds = %36
  %55 = load i32, i32* %9, align 4
  %56 = zext i32 %55 to i64
  %57 = load %struct.ir_raw_event*, %struct.ir_raw_event** %11, align 8
  %58 = load %struct.ir_raw_event*, %struct.ir_raw_event** %8, align 8
  %59 = ptrtoint %struct.ir_raw_event* %57 to i64
  %60 = ptrtoint %struct.ir_raw_event* %58 to i64
  %61 = sub i64 %59, %60
  %62 = sdiv exact i64 %61, 4
  %63 = sub nsw i64 %56, %62
  %64 = trunc i64 %63 to i32
  %65 = load i32*, i32** @ir_rc6_timings, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* @RC6_0_NBITS, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @ir_raw_gen_manchester(%struct.ir_raw_event** %11, i32 %64, i32* %66, i32 %67, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %54
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %5, align 4
  br label %149

74:                                               ; preds = %54
  br label %141

75:                                               ; preds = %4
  %76 = load i32, i32* %6, align 4
  switch i32 %76, label %80 [
    i32 128, label %77
    i32 129, label %77
    i32 130, label %78
    i32 131, label %79
  ]

77:                                               ; preds = %75, %75
  store i32 32, i32* %12, align 4
  br label %83

78:                                               ; preds = %75
  store i32 24, i32* %12, align 4
  br label %83

79:                                               ; preds = %75
  store i32 20, i32* %12, align 4
  br label %83

80:                                               ; preds = %75
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %149

83:                                               ; preds = %79, %78, %77
  %84 = load i32, i32* %9, align 4
  %85 = zext i32 %84 to i64
  %86 = load %struct.ir_raw_event*, %struct.ir_raw_event** %11, align 8
  %87 = load %struct.ir_raw_event*, %struct.ir_raw_event** %8, align 8
  %88 = ptrtoint %struct.ir_raw_event* %86 to i64
  %89 = ptrtoint %struct.ir_raw_event* %87 to i64
  %90 = sub i64 %88, %89
  %91 = sdiv exact i64 %90, 4
  %92 = sub nsw i64 %85, %91
  %93 = trunc i64 %92 to i32
  %94 = load i32*, i32** @ir_rc6_timings, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* @RC6_HEADER_NBITS, align 4
  %97 = call i32 @ir_raw_gen_manchester(%struct.ir_raw_event** %11, i32 %93, i32* %95, i32 %96, i32 14)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %83
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %5, align 4
  br label %149

102:                                              ; preds = %83
  %103 = load i32, i32* %9, align 4
  %104 = zext i32 %103 to i64
  %105 = load %struct.ir_raw_event*, %struct.ir_raw_event** %11, align 8
  %106 = load %struct.ir_raw_event*, %struct.ir_raw_event** %8, align 8
  %107 = ptrtoint %struct.ir_raw_event* %105 to i64
  %108 = ptrtoint %struct.ir_raw_event* %106 to i64
  %109 = sub i64 %107, %108
  %110 = sdiv exact i64 %109, 4
  %111 = sub nsw i64 %104, %110
  %112 = trunc i64 %111 to i32
  %113 = load i32*, i32** @ir_rc6_timings, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = call i32 @ir_raw_gen_manchester(%struct.ir_raw_event** %11, i32 %112, i32* %114, i32 1, i32 0)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %102
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %5, align 4
  br label %149

120:                                              ; preds = %102
  %121 = load i32, i32* %9, align 4
  %122 = zext i32 %121 to i64
  %123 = load %struct.ir_raw_event*, %struct.ir_raw_event** %11, align 8
  %124 = load %struct.ir_raw_event*, %struct.ir_raw_event** %8, align 8
  %125 = ptrtoint %struct.ir_raw_event* %123 to i64
  %126 = ptrtoint %struct.ir_raw_event* %124 to i64
  %127 = sub i64 %125, %126
  %128 = sdiv exact i64 %127, 4
  %129 = sub nsw i64 %122, %128
  %130 = trunc i64 %129 to i32
  %131 = load i32*, i32** @ir_rc6_timings, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @ir_raw_gen_manchester(%struct.ir_raw_event** %11, i32 %130, i32* %132, i32 %133, i32 %134)
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %120
  %139 = load i32, i32* %10, align 4
  store i32 %139, i32* %5, align 4
  br label %149

140:                                              ; preds = %120
  br label %141

141:                                              ; preds = %140, %74
  %142 = load %struct.ir_raw_event*, %struct.ir_raw_event** %11, align 8
  %143 = load %struct.ir_raw_event*, %struct.ir_raw_event** %8, align 8
  %144 = ptrtoint %struct.ir_raw_event* %142 to i64
  %145 = ptrtoint %struct.ir_raw_event* %143 to i64
  %146 = sub i64 %144, %145
  %147 = sdiv exact i64 %146, 4
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %141, %138, %118, %100, %80, %72, %52, %34
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
