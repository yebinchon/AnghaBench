; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-imon-decoder.c_ir_imon_encode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-imon-decoder.c_ir_imon_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ir_raw_event = type { i32, i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@IMON_UNIT = common dso_local global i64 0, align 8
@IMON_BITS = common dso_local global i32 0, align 4
@IMON_CHKBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.ir_raw_event*, i32)* @ir_imon_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_imon_encode(i32 %0, i32 %1, %struct.ir_raw_event* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ir_raw_event*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ir_raw_event*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.ir_raw_event* %2, %struct.ir_raw_event** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ir_raw_event*, %struct.ir_raw_event** %8, align 8
  store %struct.ir_raw_event* %13, %struct.ir_raw_event** %10, align 8
  %14 = load i32, i32* %9, align 4
  %15 = add i32 %14, -1
  store i32 %15, i32* %9, align 4
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOBUFS, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %128

20:                                               ; preds = %4
  %21 = load %struct.ir_raw_event*, %struct.ir_raw_event** %10, align 8
  %22 = load i64, i64* @IMON_UNIT, align 8
  %23 = call i32 @init_ir_raw_event_duration(%struct.ir_raw_event* %21, i32 1, i64 %22)
  %24 = load i32, i32* @IMON_BITS, align 4
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %109, %20
  %26 = load i32, i32* %11, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %112

28:                                               ; preds = %25
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = load i32, i32* @IMON_CHKBITS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @BIT(i32 %36)
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i32 @BIT(i32 %39)
  %41 = or i32 %37, %40
  %42 = and i32 %35, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %12, align 4
  br label %47

46:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %46, %34
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.ir_raw_event*, %struct.ir_raw_event** %10, align 8
  %50 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load i64, i64* @IMON_UNIT, align 8
  %55 = load %struct.ir_raw_event*, %struct.ir_raw_event** %10, align 8
  %56 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %54
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 4
  br label %74

61:                                               ; preds = %47
  %62 = load i32, i32* %9, align 4
  %63 = add i32 %62, -1
  store i32 %63, i32* %9, align 4
  %64 = icmp ne i32 %62, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @ENOBUFS, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %128

68:                                               ; preds = %61
  %69 = load %struct.ir_raw_event*, %struct.ir_raw_event** %10, align 8
  %70 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %69, i32 1
  store %struct.ir_raw_event* %70, %struct.ir_raw_event** %10, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load i64, i64* @IMON_UNIT, align 8
  %73 = call i32 @init_ir_raw_event_duration(%struct.ir_raw_event* %70, i32 %71, i64 %72)
  br label %74

74:                                               ; preds = %68, %53
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @BIT(i32 %76)
  %78 = and i32 %75, %77
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.ir_raw_event*, %struct.ir_raw_event** %10, align 8
  %84 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %82, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %74
  %88 = load i64, i64* @IMON_UNIT, align 8
  %89 = load %struct.ir_raw_event*, %struct.ir_raw_event** %10, align 8
  %90 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %88
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 4
  br label %108

95:                                               ; preds = %74
  %96 = load i32, i32* %9, align 4
  %97 = add i32 %96, -1
  store i32 %97, i32* %9, align 4
  %98 = icmp ne i32 %96, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* @ENOBUFS, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %5, align 4
  br label %128

102:                                              ; preds = %95
  %103 = load %struct.ir_raw_event*, %struct.ir_raw_event** %10, align 8
  %104 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %103, i32 1
  store %struct.ir_raw_event* %104, %struct.ir_raw_event** %10, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load i64, i64* @IMON_UNIT, align 8
  %107 = call i32 @init_ir_raw_event_duration(%struct.ir_raw_event* %104, i32 %105, i64 %106)
  br label %108

108:                                              ; preds = %102, %87
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %11, align 4
  br label %25

112:                                              ; preds = %25
  %113 = load %struct.ir_raw_event*, %struct.ir_raw_event** %10, align 8
  %114 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load %struct.ir_raw_event*, %struct.ir_raw_event** %10, align 8
  %119 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %118, i32 1
  store %struct.ir_raw_event* %119, %struct.ir_raw_event** %10, align 8
  br label %120

120:                                              ; preds = %117, %112
  %121 = load %struct.ir_raw_event*, %struct.ir_raw_event** %10, align 8
  %122 = load %struct.ir_raw_event*, %struct.ir_raw_event** %8, align 8
  %123 = ptrtoint %struct.ir_raw_event* %121 to i64
  %124 = ptrtoint %struct.ir_raw_event* %122 to i64
  %125 = sub i64 %123, %124
  %126 = sdiv exact i64 %125, 8
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %120, %99, %65, %17
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @init_ir_raw_event_duration(%struct.ir_raw_event*, i32, i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
