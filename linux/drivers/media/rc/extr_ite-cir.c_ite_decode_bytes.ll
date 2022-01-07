; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ite-cir.c_ite_decode_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ite-cir.c_ite_decode_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ite_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ir_raw_event = type { i32, i8* }

@.str = private unnamed_addr constant [18 x i8] c"decoded %d bytes.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ite_dev*, i32*, i32)* @ite_decode_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ite_decode_bytes(%struct.ite_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ite_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ir_raw_event, align 8
  store %struct.ite_dev* %0, %struct.ite_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = bitcast %struct.ir_raw_event* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %93

17:                                               ; preds = %3
  %18 = load %struct.ite_dev*, %struct.ite_dev** %4, align 8
  %19 = getelementptr inbounds %struct.ite_dev, %struct.ite_dev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = bitcast i32* %22 to i64*
  store i64* %23, i64** %8, align 8
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 %24, 3
  store i32 %25, i32* %11, align 4
  %26 = load i64*, i64** %8, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @find_next_bit_le(i64* %26, i32 %27, i32 0)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ugt i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %12, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i8* @ITE_BITS_TO_NS(i32 %33, i32 %34)
  %36 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %12, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  %37 = load %struct.ite_dev*, %struct.ite_dev** %4, align 8
  %38 = getelementptr inbounds %struct.ite_dev, %struct.ite_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ir_raw_event_store_with_filter(i32 %39, %struct.ir_raw_event* %12)
  br label %41

41:                                               ; preds = %31, %17
  br label %42

42:                                               ; preds = %85, %41
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %86

46:                                               ; preds = %42
  %47 = load i64*, i64** %8, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %9, align 4
  %50 = add i32 %49, 1
  %51 = call i32 @find_next_zero_bit_le(i64* %47, i32 %48, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %12, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %9, align 4
  %55 = sub i32 %53, %54
  %56 = load i32, i32* %7, align 4
  %57 = call i8* @ITE_BITS_TO_NS(i32 %55, i32 %56)
  %58 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %12, i32 0, i32 1
  store i8* %57, i8** %58, align 8
  %59 = load %struct.ite_dev*, %struct.ite_dev** %4, align 8
  %60 = getelementptr inbounds %struct.ite_dev, %struct.ite_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ir_raw_event_store_with_filter(i32 %61, %struct.ir_raw_event* %12)
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %46
  %67 = load i64*, i64** %8, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %10, align 4
  %70 = add i32 %69, 1
  %71 = call i32 @find_next_bit_le(i64* %67, i32 %68, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %12, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = sub i32 %73, %74
  %76 = load i32, i32* %7, align 4
  %77 = call i8* @ITE_BITS_TO_NS(i32 %75, i32 %76)
  %78 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %12, i32 0, i32 1
  store i8* %77, i8** %78, align 8
  %79 = load %struct.ite_dev*, %struct.ite_dev** %4, align 8
  %80 = getelementptr inbounds %struct.ite_dev, %struct.ite_dev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ir_raw_event_store_with_filter(i32 %81, %struct.ir_raw_event* %12)
  br label %85

83:                                               ; preds = %46
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %83, %66
  br label %42

86:                                               ; preds = %42
  %87 = load %struct.ite_dev*, %struct.ite_dev** %4, align 8
  %88 = getelementptr inbounds %struct.ite_dev, %struct.ite_dev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ir_raw_event_handle(i32 %89)
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @ite_dbg_verbose(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %86, %16
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @find_next_bit_le(i64*, i32, i32) #2

declare dso_local i8* @ITE_BITS_TO_NS(i32, i32) #2

declare dso_local i32 @ir_raw_event_store_with_filter(i32, %struct.ir_raw_event*) #2

declare dso_local i32 @find_next_zero_bit_le(i64*, i32, i32) #2

declare dso_local i32 @ir_raw_event_handle(i32) #2

declare dso_local i32 @ite_dbg_verbose(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
