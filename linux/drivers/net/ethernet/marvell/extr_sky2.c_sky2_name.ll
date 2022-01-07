; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"XL\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"EC Ultra\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Extreme\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"FE\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"FE+\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Supreme\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"UL 2\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Optima\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"OptimaEEE\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Optima 2\00", align 1
@__const.sky2_name.name = private unnamed_addr constant [12 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)], align 16
@CHIP_ID_YUKON_XL = common dso_local global i64 0, align 8
@CHIP_ID_YUKON_OP_2 = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [11 x i8] c"(chip %#x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i8*, i32)* @sky2_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sky2_name(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [12 x i8*], align 16
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = bitcast [12 x i8*]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([12 x i8*]* @__const.sky2_name.name to i8*), i64 96, i1 false)
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @CHIP_ID_YUKON_XL, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %3
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @CHIP_ID_YUKON_OP_2, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @CHIP_ID_YUKON_XL, align 8
  %20 = sub nsw i64 %18, %19
  %21 = getelementptr inbounds [12 x i8*], [12 x i8*]* %7, i64 0, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @strncpy(i8* %17, i8* %22, i32 %23)
  br label %30

25:                                               ; preds = %12, %3
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @snprintf(i8* %26, i32 %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i64 %28)
  br label %30

30:                                               ; preds = %25, %16
  %31 = load i8*, i8** %5, align 8
  ret i8* %31
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
