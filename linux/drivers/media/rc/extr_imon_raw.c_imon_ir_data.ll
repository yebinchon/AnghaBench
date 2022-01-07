; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon_raw.c_imon_ir_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon_raw.c_imon_ir_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imon = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ir_raw_event = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"data: %*ph\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"pulse: %d bits\00", align 1
@BIT_DURATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"space: %d bits\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imon*)* @imon_ir_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imon_ir_data(%struct.imon* %0) #0 {
  %2 = alloca %struct.imon*, align 8
  %3 = alloca %struct.ir_raw_event, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.imon* %0, %struct.imon** %2, align 8
  %8 = bitcast %struct.ir_raw_event* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = load %struct.imon*, %struct.imon** %2, align 8
  %10 = getelementptr inbounds %struct.imon, %struct.imon* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @be64_to_cpu(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 255
  store i32 %14, i32* %5, align 4
  store i32 40, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 255
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %110

18:                                               ; preds = %1
  %19 = load %struct.imon*, %struct.imon** %2, align 8
  %20 = getelementptr inbounds %struct.imon, %struct.imon* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.imon*, %struct.imon** %2, align 8
  %23 = getelementptr inbounds %struct.imon, %struct.imon* %22, i32 0, i32 2
  %24 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 8, i32* %23)
  %25 = load i32, i32* %4, align 4
  %26 = ashr i32 %25, 24
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %88, %18
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @BIT_ULL(i32 %29)
  %31 = sub nsw i32 %30, 1
  %32 = and i32 %28, %31
  %33 = call i32 @fls64(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %27
  %38 = load %struct.imon*, %struct.imon** %2, align 8
  %39 = getelementptr inbounds %struct.imon, %struct.imon* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %41, %42
  %44 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %3, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %46, %47
  %49 = load i32, i32* @BIT_DURATION, align 4
  %50 = mul nsw i32 %48, %49
  %51 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %3, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = load %struct.imon*, %struct.imon** %2, align 8
  %53 = getelementptr inbounds %struct.imon, %struct.imon* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = call i32 @ir_raw_event_store_with_filter(%struct.TYPE_4__* %54, %struct.ir_raw_event* %3)
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %37
  br label %91

59:                                               ; preds = %37
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %59, %27
  %62 = load i32, i32* %4, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @BIT_ULL(i32 %64)
  %66 = sub nsw i32 %65, 1
  %67 = and i32 %63, %66
  %68 = call i32 @fls64(i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load %struct.imon*, %struct.imon** %2, align 8
  %70 = getelementptr inbounds %struct.imon, %struct.imon* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = sub nsw i32 %72, %73
  %75 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %3, i32 0, i32 0
  store i32 0, i32* %76, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = sub nsw i32 %77, %78
  %80 = load i32, i32* @BIT_DURATION, align 4
  %81 = mul nsw i32 %79, %80
  %82 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %3, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  %83 = load %struct.imon*, %struct.imon** %2, align 8
  %84 = getelementptr inbounds %struct.imon, %struct.imon* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = call i32 @ir_raw_event_store_with_filter(%struct.TYPE_4__* %85, %struct.ir_raw_event* %3)
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %61
  %89 = load i32, i32* %6, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %27, label %91

91:                                               ; preds = %88, %58
  %92 = load i32, i32* %5, align 4
  %93 = icmp eq i32 %92, 10
  br i1 %93, label %94, label %110

94:                                               ; preds = %91
  %95 = load %struct.imon*, %struct.imon** %2, align 8
  %96 = getelementptr inbounds %struct.imon, %struct.imon* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %94
  %102 = load %struct.imon*, %struct.imon** %2, align 8
  %103 = getelementptr inbounds %struct.imon, %struct.imon* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = call i32 @ir_raw_event_set_idle(%struct.TYPE_4__* %104, i32 1)
  %106 = load %struct.imon*, %struct.imon** %2, align 8
  %107 = getelementptr inbounds %struct.imon, %struct.imon* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = call i32 @ir_raw_event_handle(%struct.TYPE_4__* %108)
  br label %110

110:                                              ; preds = %17, %101, %94, %91
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @be64_to_cpu(i32) #2

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #2

declare dso_local i32 @fls64(i32) #2

declare dso_local i32 @BIT_ULL(i32) #2

declare dso_local i32 @ir_raw_event_store_with_filter(%struct.TYPE_4__*, %struct.ir_raw_event*) #2

declare dso_local i32 @ir_raw_event_set_idle(%struct.TYPE_4__*, i32) #2

declare dso_local i32 @ir_raw_event_handle(%struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
