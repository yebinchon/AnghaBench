; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ttusbir.c_ttusbir_process_ir_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ttusbir.c_ttusbir_process_ir_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttusbir = type { i32 }
%struct.ir_raw_event = type { i32, i32 }

@NS_PER_BYTE = common dso_local global i8* null, align 8
@NS_PER_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttusbir*, i32*)* @ttusbir_process_ir_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttusbir_process_ir_data(%struct.ttusbir* %0, i32* %1) #0 {
  %3 = alloca %struct.ttusbir*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ir_raw_event, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ttusbir* %0, %struct.ttusbir** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = bitcast %struct.ir_raw_event* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %91, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp ult i32 %12, 128
  br i1 %13, label %14, label %94

14:                                               ; preds = %11
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 254
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %46 [
    i32 254, label %22
    i32 0, label %34
  ]

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load i8*, i8** @NS_PER_BYTE, align 8
  %25 = ptrtoint i8* %24 to i32
  %26 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.ttusbir*, %struct.ttusbir** %3, align 8
  %28 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ir_raw_event_store_with_filter(i32 %29, %struct.ir_raw_event* %5)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 1, i32* %9, align 4
  br label %33

33:                                               ; preds = %32, %22
  br label %90

34:                                               ; preds = %14
  %35 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load i8*, i8** @NS_PER_BYTE, align 8
  %37 = ptrtoint i8* %36 to i32
  %38 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load %struct.ttusbir*, %struct.ttusbir** %3, align 8
  %40 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ir_raw_event_store_with_filter(i32 %41, %struct.ir_raw_event* %5)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 1, i32* %9, align 4
  br label %45

45:                                               ; preds = %44, %34
  br label %90

46:                                               ; preds = %14
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, 2
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, 1
  %53 = call i32 @ffz(i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  store i32 1, i32* %54, align 4
  br label %60

55:                                               ; preds = %46
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @ffs(i32 %56)
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  %59 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %55, %50
  %61 = load i32, i32* @NS_PER_BIT, align 4
  %62 = load i32, i32* %8, align 4
  %63 = sub i32 8, %62
  %64 = mul i32 %61, %63
  %65 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = load %struct.ttusbir*, %struct.ttusbir** %3, align 8
  %67 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ir_raw_event_store_with_filter(i32 %68, %struct.ir_raw_event* %5)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  store i32 1, i32* %9, align 4
  br label %72

72:                                               ; preds = %71, %60
  %73 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* @NS_PER_BIT, align 4
  %80 = load i32, i32* %8, align 4
  %81 = mul i32 %79, %80
  %82 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  %83 = load %struct.ttusbir*, %struct.ttusbir** %3, align 8
  %84 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ir_raw_event_store_with_filter(i32 %85, %struct.ir_raw_event* %5)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %72
  store i32 1, i32* %9, align 4
  br label %89

89:                                               ; preds = %88, %72
  br label %90

90:                                               ; preds = %89, %45, %33
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %6, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %11

94:                                               ; preds = %11
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load %struct.ttusbir*, %struct.ttusbir** %3, align 8
  %99 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ir_raw_event_handle(i32 %100)
  br label %102

102:                                              ; preds = %97, %94
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ir_raw_event_store_with_filter(i32, %struct.ir_raw_event*) #2

declare dso_local i32 @ffz(i32) #2

declare dso_local i32 @ffs(i32) #2

declare dso_local i32 @ir_raw_event_handle(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
