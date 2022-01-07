; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2063.c_RemoveNode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2063.c_RemoveNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MT2063_AvoidSpursData_t = type { i32, %struct.MT2063_ExclZone_t* }
%struct.MT2063_ExclZone_t = type { %struct.MT2063_ExclZone_t* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.MT2063_ExclZone_t* (%struct.MT2063_AvoidSpursData_t*, %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t*)* @RemoveNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.MT2063_ExclZone_t* @RemoveNode(%struct.MT2063_AvoidSpursData_t* %0, %struct.MT2063_ExclZone_t* %1, %struct.MT2063_ExclZone_t* %2) #0 {
  %4 = alloca %struct.MT2063_AvoidSpursData_t*, align 8
  %5 = alloca %struct.MT2063_ExclZone_t*, align 8
  %6 = alloca %struct.MT2063_ExclZone_t*, align 8
  %7 = alloca %struct.MT2063_ExclZone_t*, align 8
  store %struct.MT2063_AvoidSpursData_t* %0, %struct.MT2063_AvoidSpursData_t** %4, align 8
  store %struct.MT2063_ExclZone_t* %1, %struct.MT2063_ExclZone_t** %5, align 8
  store %struct.MT2063_ExclZone_t* %2, %struct.MT2063_ExclZone_t** %6, align 8
  %8 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %6, align 8
  %9 = getelementptr inbounds %struct.MT2063_ExclZone_t, %struct.MT2063_ExclZone_t* %8, i32 0, i32 0
  %10 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %9, align 8
  store %struct.MT2063_ExclZone_t* %10, %struct.MT2063_ExclZone_t** %7, align 8
  %11 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %5, align 8
  %13 = icmp ne %struct.MT2063_ExclZone_t* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %7, align 8
  %16 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %5, align 8
  %17 = getelementptr inbounds %struct.MT2063_ExclZone_t, %struct.MT2063_ExclZone_t* %16, i32 0, i32 0
  store %struct.MT2063_ExclZone_t* %15, %struct.MT2063_ExclZone_t** %17, align 8
  br label %18

18:                                               ; preds = %14, %3
  %19 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %4, align 8
  %20 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %19, i32 0, i32 1
  %21 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %20, align 8
  %22 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %6, align 8
  %23 = getelementptr inbounds %struct.MT2063_ExclZone_t, %struct.MT2063_ExclZone_t* %22, i32 0, i32 0
  store %struct.MT2063_ExclZone_t* %21, %struct.MT2063_ExclZone_t** %23, align 8
  %24 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %6, align 8
  %25 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %4, align 8
  %26 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %25, i32 0, i32 1
  store %struct.MT2063_ExclZone_t* %24, %struct.MT2063_ExclZone_t** %26, align 8
  %27 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %4, align 8
  %28 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 8
  %31 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %7, align 8
  ret %struct.MT2063_ExclZone_t* %31
}

declare dso_local i32 @dprintk(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
