; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2063.c_InsertNode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2063.c_InsertNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MT2063_AvoidSpursData_t = type { i64, %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t* }
%struct.MT2063_ExclZone_t = type { %struct.MT2063_ExclZone_t* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.MT2063_ExclZone_t* (%struct.MT2063_AvoidSpursData_t*, %struct.MT2063_ExclZone_t*)* @InsertNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.MT2063_ExclZone_t* @InsertNode(%struct.MT2063_AvoidSpursData_t* %0, %struct.MT2063_ExclZone_t* %1) #0 {
  %3 = alloca %struct.MT2063_AvoidSpursData_t*, align 8
  %4 = alloca %struct.MT2063_ExclZone_t*, align 8
  %5 = alloca %struct.MT2063_ExclZone_t*, align 8
  store %struct.MT2063_AvoidSpursData_t* %0, %struct.MT2063_AvoidSpursData_t** %3, align 8
  store %struct.MT2063_ExclZone_t* %1, %struct.MT2063_ExclZone_t** %4, align 8
  %6 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %8 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %7, i32 0, i32 3
  %9 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %8, align 8
  %10 = icmp ne %struct.MT2063_ExclZone_t* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %13 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %12, i32 0, i32 3
  %14 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %13, align 8
  store %struct.MT2063_ExclZone_t* %14, %struct.MT2063_ExclZone_t** %5, align 8
  %15 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %5, align 8
  %16 = getelementptr inbounds %struct.MT2063_ExclZone_t, %struct.MT2063_ExclZone_t* %15, i32 0, i32 0
  %17 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %16, align 8
  %18 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %19 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %18, i32 0, i32 3
  store %struct.MT2063_ExclZone_t* %17, %struct.MT2063_ExclZone_t** %19, align 8
  br label %28

20:                                               ; preds = %2
  %21 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %22 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %21, i32 0, i32 2
  %23 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %22, align 8
  %24 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %25 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.MT2063_ExclZone_t, %struct.MT2063_ExclZone_t* %23, i64 %26
  store %struct.MT2063_ExclZone_t* %27, %struct.MT2063_ExclZone_t** %5, align 8
  br label %28

28:                                               ; preds = %20, %11
  %29 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %4, align 8
  %30 = icmp ne %struct.MT2063_ExclZone_t* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %4, align 8
  %33 = getelementptr inbounds %struct.MT2063_ExclZone_t, %struct.MT2063_ExclZone_t* %32, i32 0, i32 0
  %34 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %33, align 8
  %35 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %5, align 8
  %36 = getelementptr inbounds %struct.MT2063_ExclZone_t, %struct.MT2063_ExclZone_t* %35, i32 0, i32 0
  store %struct.MT2063_ExclZone_t* %34, %struct.MT2063_ExclZone_t** %36, align 8
  %37 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %5, align 8
  %38 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %4, align 8
  %39 = getelementptr inbounds %struct.MT2063_ExclZone_t, %struct.MT2063_ExclZone_t* %38, i32 0, i32 0
  store %struct.MT2063_ExclZone_t* %37, %struct.MT2063_ExclZone_t** %39, align 8
  br label %49

40:                                               ; preds = %28
  %41 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %42 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %41, i32 0, i32 1
  %43 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %42, align 8
  %44 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %5, align 8
  %45 = getelementptr inbounds %struct.MT2063_ExclZone_t, %struct.MT2063_ExclZone_t* %44, i32 0, i32 0
  store %struct.MT2063_ExclZone_t* %43, %struct.MT2063_ExclZone_t** %45, align 8
  %46 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %5, align 8
  %47 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %48 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %47, i32 0, i32 1
  store %struct.MT2063_ExclZone_t* %46, %struct.MT2063_ExclZone_t** %48, align 8
  br label %49

49:                                               ; preds = %40, %31
  %50 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %51 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %51, align 8
  %54 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %5, align 8
  ret %struct.MT2063_ExclZone_t* %54
}

declare dso_local i32 @dprintk(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
