; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_baycom_par.c_baycom_setmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_baycom_par.c_baycom_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.baycom_state = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"picpar\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"par96\00", align 1
@BAYCOM_OPTIONS_SOFTDCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.baycom_state*, i8*)* @baycom_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @baycom_setmode(%struct.baycom_state* %0, i8* %1) #0 {
  %3 = alloca %struct.baycom_state*, align 8
  %4 = alloca i8*, align 8
  store %struct.baycom_state* %0, %struct.baycom_state** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = call i32 @strncmp(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load %struct.baycom_state*, %struct.baycom_state** %3, align 8
  %10 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  br label %29

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @strncmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @BAYCOM_OPTIONS_SOFTDCD, align 4
  %17 = load %struct.baycom_state*, %struct.baycom_state** %3, align 8
  %18 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %28

19:                                               ; preds = %11
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @strchr(i8* %20, i8 signext 42)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = load %struct.baycom_state*, %struct.baycom_state** %3, align 8
  %27 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %19, %15
  br label %29

29:                                               ; preds = %28, %8
  ret i32 0
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
