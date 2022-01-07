; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_at76c50x-usb.c_at76_get_reg_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_at76c50x-usb.c_at76_get_reg_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_domain = type { i32, i8*, i32, i64 }

@at76_get_reg_domain.fd_tab = internal constant [9 x %struct.reg_domain] [%struct.reg_domain { i32 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 2047, i64 0 }, %struct.reg_domain { i32 32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 2047, i64 0 }, %struct.reg_domain { i32 48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i32 8191, i64 0 }, %struct.reg_domain { i32 49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 1536, i64 0 }, %struct.reg_domain { i32 50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 7680, i64 0 }, %struct.reg_domain { i32 64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 8192, i64 0 }, %struct.reg_domain { i32 65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 16383, i64 0 }, %struct.reg_domain { i32 80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 1020, i64 0 }, %struct.reg_domain { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 -1, i64 0 }], align 16
@.str = private unnamed_addr constant [10 x i8] c"FCC (USA)\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"IC (Canada)\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"ETSI (most of Europe)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Spain\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"France\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"MKK (Japan)\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"MKK1 (Japan)\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Israel\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.reg_domain* (i64)* @at76_get_reg_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reg_domain* @at76_get_reg_domain(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @ARRAY_SIZE(%struct.reg_domain* getelementptr inbounds ([9 x %struct.reg_domain], [9 x %struct.reg_domain]* @at76_get_reg_domain.fd_tab, i64 0, i64 0))
  %7 = sub nsw i32 %6, 1
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %4
  %10 = load i64, i64* %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [9 x %struct.reg_domain], [9 x %struct.reg_domain]* @at76_get_reg_domain.fd_tab, i64 0, i64 %12
  %14 = getelementptr inbounds %struct.reg_domain, %struct.reg_domain* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %10, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %22

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %4

22:                                               ; preds = %17, %4
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [9 x %struct.reg_domain], [9 x %struct.reg_domain]* @at76_get_reg_domain.fd_tab, i64 0, i64 %24
  ret %struct.reg_domain* %25
}

declare dso_local i32 @ARRAY_SIZE(%struct.reg_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
