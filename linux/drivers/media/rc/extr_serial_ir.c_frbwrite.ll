; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_serial_ir.c_frbwrite.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_serial_ir.c_frbwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ir_raw_event = type { i32, i32 }

@frbwrite.ptr = internal global i32 0, align 4
@frbwrite.pulse = internal global i32 0, align 4
@frbwrite.space = internal global i32 0, align 4
@serial_ir = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@IR_MAX_DURATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @frbwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frbwrite(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ir_raw_event, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = bitcast %struct.ir_raw_event* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 8, i1 false)
  %7 = load i32, i32* @frbwrite.ptr, align 4
  %8 = icmp ugt i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @frbwrite.pulse, align 4
  %15 = add i32 %14, %13
  store i32 %15, i32* @frbwrite.pulse, align 4
  %16 = load i32, i32* @frbwrite.pulse, align 4
  %17 = icmp ugt i32 %16, 250000
  br i1 %17, label %18, label %29

18:                                               ; preds = %12
  %19 = load i32, i32* @frbwrite.space, align 4
  %20 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @serial_ir, i32 0, i32 0), align 4
  %23 = call i32 @ir_raw_event_store_with_filter(i32 %22, %struct.ir_raw_event* %5)
  %24 = load i32, i32* @frbwrite.pulse, align 4
  %25 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @serial_ir, i32 0, i32 0), align 4
  %28 = call i32 @ir_raw_event_store_with_filter(i32 %27, %struct.ir_raw_event* %5)
  store i32 0, i32* @frbwrite.ptr, align 4
  store i32 0, i32* @frbwrite.pulse, align 4
  br label %29

29:                                               ; preds = %18, %12
  br label %85

30:                                               ; preds = %9, %2
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %78, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @frbwrite.ptr, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4
  %38 = icmp ugt i32 %37, 20000000
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %3, align 4
  store i32 %40, i32* @frbwrite.space, align 4
  %41 = load i32, i32* @frbwrite.ptr, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* @frbwrite.ptr, align 4
  br label %85

43:                                               ; preds = %36
  br label %77

44:                                               ; preds = %33
  %45 = load i32, i32* %3, align 4
  %46 = icmp ugt i32 %45, 20000000
  br i1 %46, label %47, label %66

47:                                               ; preds = %44
  %48 = load i32, i32* @frbwrite.pulse, align 4
  %49 = load i32, i32* @frbwrite.space, align 4
  %50 = add i32 %49, %48
  store i32 %50, i32* @frbwrite.space, align 4
  %51 = load i32, i32* @frbwrite.space, align 4
  %52 = load i32, i32* @IR_MAX_DURATION, align 4
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @IR_MAX_DURATION, align 4
  store i32 %55, i32* @frbwrite.space, align 4
  br label %56

56:                                               ; preds = %54, %47
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @frbwrite.space, align 4
  %59 = add i32 %58, %57
  store i32 %59, i32* @frbwrite.space, align 4
  %60 = load i32, i32* @frbwrite.space, align 4
  %61 = load i32, i32* @IR_MAX_DURATION, align 4
  %62 = icmp ugt i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @IR_MAX_DURATION, align 4
  store i32 %64, i32* @frbwrite.space, align 4
  br label %65

65:                                               ; preds = %63, %56
  store i32 0, i32* @frbwrite.pulse, align 4
  br label %85

66:                                               ; preds = %44
  %67 = load i32, i32* @frbwrite.space, align 4
  %68 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  store i32 0, i32* %69, align 4
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @serial_ir, i32 0, i32 0), align 4
  %71 = call i32 @ir_raw_event_store_with_filter(i32 %70, %struct.ir_raw_event* %5)
  %72 = load i32, i32* @frbwrite.pulse, align 4
  %73 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  store i32 %72, i32* %73, align 4
  %74 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @serial_ir, i32 0, i32 0), align 4
  %76 = call i32 @ir_raw_event_store_with_filter(i32 %75, %struct.ir_raw_event* %5)
  store i32 0, i32* @frbwrite.ptr, align 4
  store i32 0, i32* @frbwrite.pulse, align 4
  br label %77

77:                                               ; preds = %66, %43
  br label %78

78:                                               ; preds = %77, %30
  %79 = load i32, i32* %3, align 4
  %80 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %4, align 4
  %82 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @serial_ir, i32 0, i32 0), align 4
  %84 = call i32 @ir_raw_event_store_with_filter(i32 %83, %struct.ir_raw_event* %5)
  br label %85

85:                                               ; preds = %78, %65, %39, %29
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ir_raw_event_store_with_filter(i32, %struct.ir_raw_event*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
