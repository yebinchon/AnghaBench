; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_phy_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_phy_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@TG3_PHY_ID_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"5400\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"5401\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"5411\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"5701\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"5703\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"5704\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"5705\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"5750\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"5752\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"5714\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"5780\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"5755\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"5787\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"5784\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"5722/5756\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"5906\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"5761\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"5718C\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"5718S\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"57765\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"5719C\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"5720C\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"5762C\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"8002/serdes\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"serdes\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.tg3*)* @tg3_phy_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tg3_phy_string(%struct.tg3* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tg3*, align 8
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  %4 = load %struct.tg3*, %struct.tg3** %3, align 8
  %5 = getelementptr inbounds %struct.tg3, %struct.tg3* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @TG3_PHY_ID_MASK, align 4
  %8 = and i32 %6, %7
  switch i32 %8, label %34 [
    i32 151, label %9
    i32 150, label %10
    i32 149, label %11
    i32 148, label %12
    i32 147, label %13
    i32 146, label %14
    i32 145, label %15
    i32 139, label %16
    i32 138, label %17
    i32 144, label %18
    i32 132, label %19
    i32 137, label %20
    i32 130, label %21
    i32 131, label %22
    i32 136, label %23
    i32 129, label %24
    i32 135, label %25
    i32 143, label %26
    i32 142, label %27
    i32 133, label %28
    i32 141, label %29
    i32 140, label %30
    i32 134, label %31
    i32 128, label %32
    i32 0, label %33
  ]

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %35

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %35

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %35

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %35

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %35

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %35

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %35

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %35

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %35

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %35

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %35

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %35

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %35

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %35

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %35

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %35

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %35

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %35

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %35

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %35

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %35

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %35

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %35

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %35

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %35

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %35

35:                                               ; preds = %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9
  %36 = load i8*, i8** %2, align 8
  ret i8* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
