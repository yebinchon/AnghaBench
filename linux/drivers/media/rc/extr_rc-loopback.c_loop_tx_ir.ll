; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-loopback.c_loop_tx_ir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-loopback.c_loop_tx_ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, %struct.loopback_dev* }
%struct.loopback_dev = type { i64, i64, i64, i32, i64 }
%struct.ir_raw_event = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"ignoring tx, carrier out of range\0A\00", align 1
@RXMASK_LEARNING = common dso_local global i32 0, align 4
@RXMASK_REGULAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"ignoring tx, rx mask mismatch\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32*, i32)* @loop_tx_ir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loop_tx_ir(%struct.rc_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.loopback_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ir_raw_event, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %12 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %11, i32 0, i32 1
  %13 = load %struct.loopback_dev*, %struct.loopback_dev** %12, align 8
  store %struct.loopback_dev* %13, %struct.loopback_dev** %7, align 8
  %14 = bitcast %struct.ir_raw_event* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  %15 = load %struct.loopback_dev*, %struct.loopback_dev** %7, align 8
  %16 = getelementptr inbounds %struct.loopback_dev, %struct.loopback_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.loopback_dev*, %struct.loopback_dev** %7, align 8
  %19 = getelementptr inbounds %struct.loopback_dev, %struct.loopback_dev* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %3
  %23 = load %struct.loopback_dev*, %struct.loopback_dev** %7, align 8
  %24 = getelementptr inbounds %struct.loopback_dev, %struct.loopback_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.loopback_dev*, %struct.loopback_dev** %7, align 8
  %27 = getelementptr inbounds %struct.loopback_dev, %struct.loopback_dev* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %22, %3
  %31 = call i32 @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %89

32:                                               ; preds = %22
  %33 = load %struct.loopback_dev*, %struct.loopback_dev** %7, align 8
  %34 = getelementptr inbounds %struct.loopback_dev, %struct.loopback_dev* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @RXMASK_LEARNING, align 4
  store i32 %38, i32* %8, align 4
  br label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @RXMASK_REGULAR, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.loopback_dev*, %struct.loopback_dev** %7, align 8
  %44 = getelementptr inbounds %struct.loopback_dev, %struct.loopback_dev* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %41
  %49 = call i32 @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %89

50:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %76, %50
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %51
  %56 = load i32, i32* %9, align 4
  %57 = urem i32 %56, 2
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 0, i32 1
  %61 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %10, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %9, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = mul i32 %66, 1000
  %68 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %10, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %10, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %55
  %73 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %74 = call i32 @ir_raw_event_store_with_filter(%struct.rc_dev* %73, %struct.ir_raw_event* %10)
  br label %75

75:                                               ; preds = %72, %55
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %9, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %51

79:                                               ; preds = %51
  %80 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %10, i32 0, i32 0
  store i32 0, i32* %80, align 4
  %81 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %82 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %10, i32 0, i32 1
  store i32 %83, i32* %84, align 4
  %85 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %86 = call i32 @ir_raw_event_store_with_filter(%struct.rc_dev* %85, %struct.ir_raw_event* %10)
  %87 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %88 = call i32 @ir_raw_event_handle(%struct.rc_dev* %87)
  br label %89

89:                                               ; preds = %79, %48, %30
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dprintk(i8*) #2

declare dso_local i32 @ir_raw_event_store_with_filter(%struct.rc_dev*, %struct.ir_raw_event*) #2

declare dso_local i32 @ir_raw_event_handle(%struct.rc_dev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
