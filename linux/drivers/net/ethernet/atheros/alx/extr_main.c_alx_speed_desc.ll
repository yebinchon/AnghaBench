; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_speed_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_speed_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_hw = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"1 Gbps Full\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"100 Mbps Full\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"100 Mbps Half\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"10 Mbps Full\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"10 Mbps Half\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Unknown speed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.alx_hw*)* @alx_speed_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @alx_speed_desc(%struct.alx_hw* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.alx_hw*, align 8
  store %struct.alx_hw* %0, %struct.alx_hw** %3, align 8
  %4 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %5 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %8 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @alx_speed_to_ethadv(i32 %6, i32 %9)
  switch i32 %10, label %16 [
    i32 132, label %11
    i32 131, label %12
    i32 130, label %13
    i32 129, label %14
    i32 128, label %15
  ]

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %17

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %17

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %17

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %17

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %17

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %17

17:                                               ; preds = %16, %15, %14, %13, %12, %11
  %18 = load i8*, i8** %2, align 8
  ret i8* %18
}

declare dso_local i32 @alx_speed_to_ethadv(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
