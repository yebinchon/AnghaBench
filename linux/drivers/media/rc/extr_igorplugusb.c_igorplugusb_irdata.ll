; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_igorplugusb.c_igorplugusb_irdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_igorplugusb.c_igorplugusb_irdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igorplugusb = type { i32*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ir_raw_event = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"irdata: %*ph (len=%u)\00", align 1
@HEADERLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"receive overflow invalid: %u\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"receive overflow, at least %u lost\00", align 1
@SET_INFRABUFFER_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igorplugusb*, i32)* @igorplugusb_irdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igorplugusb_irdata(%struct.igorplugusb* %0, i32 %1) #0 {
  %3 = alloca %struct.igorplugusb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ir_raw_event, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.igorplugusb* %0, %struct.igorplugusb** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = bitcast %struct.ir_raw_event* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  %10 = load %struct.igorplugusb*, %struct.igorplugusb** %3, align 8
  %11 = getelementptr inbounds %struct.igorplugusb, %struct.igorplugusb* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.igorplugusb*, %struct.igorplugusb** %3, align 8
  %15 = getelementptr inbounds %struct.igorplugusb, %struct.igorplugusb* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %13, i32* %16, i32 %17)
  %19 = load %struct.igorplugusb*, %struct.igorplugusb** %3, align 8
  %20 = getelementptr inbounds %struct.igorplugusb, %struct.igorplugusb* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @HEADERLEN, align 4
  %26 = add i32 %24, %25
  store i32 %26, i32* %7, align 4
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp uge i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load %struct.igorplugusb*, %struct.igorplugusb** %3, align 8
  %32 = getelementptr inbounds %struct.igorplugusb, %struct.igorplugusb* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %90

36:                                               ; preds = %2
  %37 = load i32, i32* %8, align 4
  %38 = icmp ugt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load %struct.igorplugusb*, %struct.igorplugusb** %3, align 8
  %41 = getelementptr inbounds %struct.igorplugusb, %struct.igorplugusb* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @dev_warn(i32 %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %39, %36
  br label %46

46:                                               ; preds = %70, %45
  %47 = load %struct.igorplugusb*, %struct.igorplugusb** %3, align 8
  %48 = getelementptr inbounds %struct.igorplugusb, %struct.igorplugusb* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = mul i32 %53, 85333
  %55 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, 1
  %58 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = load %struct.igorplugusb*, %struct.igorplugusb** %3, align 8
  %60 = getelementptr inbounds %struct.igorplugusb, %struct.igorplugusb* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = call i32 @ir_raw_event_store_with_filter(%struct.TYPE_3__* %61, %struct.ir_raw_event* %5)
  %63 = load i32, i32* %6, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %46
  %68 = load i32, i32* @HEADERLEN, align 4
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %67, %46
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %46, label %74

74:                                               ; preds = %70
  %75 = load %struct.igorplugusb*, %struct.igorplugusb** %3, align 8
  %76 = getelementptr inbounds %struct.igorplugusb, %struct.igorplugusb* %75, i32 0, i32 1
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  store i32 %79, i32* %80, align 4
  %81 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  store i32 0, i32* %81, align 4
  %82 = load %struct.igorplugusb*, %struct.igorplugusb** %3, align 8
  %83 = getelementptr inbounds %struct.igorplugusb, %struct.igorplugusb* %82, i32 0, i32 1
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = call i32 @ir_raw_event_store_with_filter(%struct.TYPE_3__* %84, %struct.ir_raw_event* %5)
  %86 = load %struct.igorplugusb*, %struct.igorplugusb** %3, align 8
  %87 = getelementptr inbounds %struct.igorplugusb, %struct.igorplugusb* %86, i32 0, i32 1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = call i32 @ir_raw_event_handle(%struct.TYPE_3__* %88)
  br label %90

90:                                               ; preds = %74, %30
  %91 = load %struct.igorplugusb*, %struct.igorplugusb** %3, align 8
  %92 = load i32, i32* @SET_INFRABUFFER_EMPTY, align 4
  %93 = call i32 @igorplugusb_cmd(%struct.igorplugusb* %91, i32 %92)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32*, i32) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i32 @dev_warn(i32, i8*, i32) #2

declare dso_local i32 @ir_raw_event_store_with_filter(%struct.TYPE_3__*, %struct.ir_raw_event*) #2

declare dso_local i32 @ir_raw_event_handle(%struct.TYPE_3__*) #2

declare dso_local i32 @igorplugusb_cmd(%struct.igorplugusb*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
